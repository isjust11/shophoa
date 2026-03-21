import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ServeStaticModule } from '@nestjs/serve-static';
import { join } from 'path';
import { CategoriesModule } from './categories/categories.module';
import { ProductsModule } from './products/products.module';
import { ReviewsModule } from './reviews/reviews.module';
import { AuthModule } from './auth/auth.module';
import { SettingsModule } from './settings/settings.module';
import { UploadModule } from './upload/upload.module';
import { GalleryModule } from './gallery/gallery.module';
import { PostsModule } from './posts/posts.module';
import { SitemapModule } from './sitemap/sitemap.module';

@Module({
  imports: [
    TypeOrmModule.forRoot({
      type: 'mariadb',
      host: process.env.DB_HOST || 'localhost',
      port: parseInt(process.env.DB_PORT || '3307'),
      username: process.env.DB_USER || 'bloomstore',
      password: process.env.DB_PASS || 'bloomstore_pass',
      database: process.env.DB_NAME || 'bloomstore',
      autoLoadEntities: true,
      synchronize: process.env.NODE_ENV !== 'production',
      charset: 'utf8mb4',
    }),
    ServeStaticModule.forRoot(
      // Admin panel
      {
        rootPath: join(__dirname, '..', 'public', 'admin'),
        serveRoot: '/quanly',
        serveStaticOptions: {
          index: ['index.html'],
        },
      },
      // Uploads (images)
      {
        rootPath: join(__dirname, '..', 'public', 'uploads'),
        serveRoot: '/uploads',
        serveStaticOptions: {
          index: false,
          maxAge: '30d',
        },
      },
      // React frontend build — served at root '/'
      // Backend serve luôn cả frontend khi chạy production (không cần serve package riêng)
      {
        rootPath: join(__dirname, '..', '..', 'build'),
        serveRoot: '/',
        exclude: ['/api*', '/uploads*', '/quanly*'],
        serveStaticOptions: {
          index: 'index.html',
          fallthrough: true,
        },
      },
    ),
    CategoriesModule,
    ProductsModule,
    ReviewsModule,
    AuthModule,
    SettingsModule,
    UploadModule,
    GalleryModule,
    PostsModule,
    SitemapModule,
  ],
})
export class AppModule { }
