import { Controller, Get, Header } from '@nestjs/common';
import { DataSource } from 'typeorm';
import { Category } from '../categories/category.entity';
import { Product } from '../products/product.entity';
import { Post } from '../posts/post.entity';

@Controller('api')
export class SitemapController {
    constructor(private readonly ds: DataSource) { }

    @Get('sitemap.xml')
    @Header('Content-Type', 'application/xml')
    async sitemap(): Promise<string> {
        const baseUrl = 'https://shophoa.techcave.space';

        const categories = await this.ds.getRepository(Category).find();
        const products = await this.ds.getRepository(Product).find({ select: ['id', 'name', 'createdAt'] });
        const posts = await this.ds.getRepository(Post).find({
            where: { isPublished: true },
            select: ['slug', 'publishedAt'],
        });

        const urls: { loc: string; lastmod?: string; changefreq: string; priority: string }[] = [];

        // Homepage
        urls.push({ loc: baseUrl, changefreq: 'daily', priority: '1.0' });

        // Static pages
        urls.push({ loc: `${baseUrl}/products`, changefreq: 'daily', priority: '0.9' });
        urls.push({ loc: `${baseUrl}/gallery`, changefreq: 'weekly', priority: '0.7' });
        urls.push({ loc: `${baseUrl}/blog`, changefreq: 'weekly', priority: '0.8' });
        urls.push({ loc: `${baseUrl}/contact`, changefreq: 'monthly', priority: '0.5' });

        // Categories
        for (const cat of categories) {
            urls.push({
                loc: `${baseUrl}/products?category=${cat.slug}`,
                lastmod: cat.createdAt?.toISOString?.()?.split('T')[0],
                changefreq: 'weekly',
                priority: '0.8',
            });
        }

        // Products
        for (const prod of products) {
            urls.push({
                loc: `${baseUrl}/product/${prod.id}`,
                lastmod: prod.createdAt?.toISOString?.()?.split('T')[0],
                changefreq: 'weekly',
                priority: '0.8',
            });
        }

        // Blog posts
        for (const post of posts) {
            urls.push({
                loc: `${baseUrl}/blog/${post.slug}`,
                lastmod: post.publishedAt?.toISOString?.()?.split('T')[0],
                changefreq: 'monthly',
                priority: '0.7',
            });
        }

        const xml = `<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
${urls
                .map(
                    (u) => `  <url>
    <loc>${u.loc}</loc>${u.lastmod ? `\n    <lastmod>${u.lastmod}</lastmod>` : ''}
    <changefreq>${u.changefreq}</changefreq>
    <priority>${u.priority}</priority>
  </url>`,
                )
                .join('\n')}
</urlset>`;

        return xml;
    }
}
