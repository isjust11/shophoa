import { Entity, PrimaryGeneratedColumn, Column, CreateDateColumn, UpdateDateColumn } from 'typeorm';

@Entity('posts')
export class Post {
    @PrimaryGeneratedColumn()
    id: number;

    @Column({ length: 255 })
    title: string;

    @Column({ length: 255, unique: true })
    slug: string;

    @Column({ type: 'text', nullable: true })
    excerpt: string;

    @Column({ type: 'longtext' })
    content: string;

    @Column({ name: 'thumbnail_url', length: 1000, nullable: true })
    thumbnailUrl: string;

    @Column({ type: 'json', nullable: true })
    tags: string[];

    @Column({ name: 'is_published', type: 'boolean', default: false })
    isPublished: boolean;

    @Column({ name: 'published_at', type: 'timestamp', nullable: true })
    publishedAt: Date;

    // SEO
    @Column({ name: 'meta_title', length: 255, nullable: true })
    metaTitle: string;

    @Column({ name: 'meta_description', type: 'text', nullable: true })
    metaDescription: string;

    @CreateDateColumn({ name: 'created_at' })
    createdAt: Date;

    @UpdateDateColumn({ name: 'updated_at' })
    updatedAt: Date;
}
