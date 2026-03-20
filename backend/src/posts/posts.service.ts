import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Post } from './post.entity';
import { CreatePostDto, UpdatePostDto } from './post.dto';

@Injectable()
export class PostsService {
    constructor(
        @InjectRepository(Post)
        private readonly postRepo: Repository<Post>,
    ) { }

    /** Generate URL-friendly slug from Vietnamese text */
    private generateSlug(title: string): string {
        return title
            .toLowerCase()
            .normalize('NFD')
            .replace(/[\u0300-\u036f]/g, '')
            .replace(/đ/g, 'd')
            .replace(/Đ/g, 'D')
            .replace(/[^a-z0-9\s-]/g, '')
            .replace(/\s+/g, '-')
            .replace(/-+/g, '-')
            .replace(/^-|-$/g, '')
            .substring(0, 200);
    }

    /** Ensure slug is unique */
    private async ensureUniqueSlug(slug: string, excludeId?: number): Promise<string> {
        let candidate = slug;
        let counter = 1;
        while (true) {
            const existing = await this.postRepo.findOne({ where: { slug: candidate } });
            if (!existing || existing.id === excludeId) return candidate;
            candidate = `${slug}-${counter++}`;
        }
    }

    /** Public: list published posts, optionally filter by tag */
    async findAllPublished(tag?: string): Promise<Post[]> {
        const qb = this.postRepo
            .createQueryBuilder('p')
            .where('p.isPublished = :pub', { pub: true });

        if (tag) {
            qb.andWhere('JSON_CONTAINS(p.tags, :tag)', { tag: JSON.stringify(tag) });
        }

        qb.orderBy('p.publishedAt', 'DESC');
        return qb.getMany();
    }

    /** Admin: list all posts including drafts */
    async findAllAdmin(): Promise<Post[]> {
        return this.postRepo.find({ order: { createdAt: 'DESC' } });
    }

    /** Public: find by slug */
    async findBySlug(slug: string): Promise<Post> {
        const post = await this.postRepo.findOne({ where: { slug, isPublished: true } });
        if (!post) throw new NotFoundException(`Post with slug "${slug}" not found`);
        return post;
    }

    /** Find by ID (admin) */
    async findOne(id: number): Promise<Post> {
        const post = await this.postRepo.findOne({ where: { id } });
        if (!post) throw new NotFoundException(`Post #${id} not found`);
        return post;
    }

    async create(dto: CreatePostDto): Promise<Post> {
        const data: any = { ...dto };

        if (!data.slug) {
            data.slug = this.generateSlug(data.title);
        }
        data.slug = await this.ensureUniqueSlug(data.slug);

        if (data.isPublished && !data.publishedAt) {
            data.publishedAt = new Date();
        }

        const post = this.postRepo.create(data);
        return this.postRepo.save(post) as unknown as Post;
    }

    async update(id: number, dto: UpdatePostDto): Promise<Post> {
        const existing = await this.findOne(id);
        const data: any = { ...dto };

        if (data.title && !data.slug) {
            data.slug = this.generateSlug(data.title);
            data.slug = await this.ensureUniqueSlug(data.slug, id);
        } else if (data.slug) {
            data.slug = await this.ensureUniqueSlug(data.slug, id);
        }

        // Set publishedAt when first published
        if (data.isPublished && !existing.publishedAt) {
            data.publishedAt = new Date();
        }

        await this.postRepo.update(id, data);
        return this.findOne(id);
    }

    async remove(id: number): Promise<void> {
        await this.findOne(id);
        await this.postRepo.delete(id);
    }
}
