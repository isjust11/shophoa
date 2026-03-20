import { IsString, IsOptional, IsArray, IsBoolean, MaxLength } from 'class-validator';
import { ApiProperty, ApiPropertyOptional } from '@nestjs/swagger';
import { Type } from 'class-transformer';

export class CreatePostDto {
    @ApiProperty({ example: 'Cách chăm sóc hoa hồng tại nhà' })
    @IsString()
    @MaxLength(255)
    title: string;

    @ApiPropertyOptional({ example: 'cach-cham-soc-hoa-hong-tai-nha' })
    @IsOptional()
    @IsString()
    slug?: string;

    @ApiPropertyOptional({ example: 'Hướng dẫn chi tiết cách chăm sóc hoa hồng...' })
    @IsOptional()
    @IsString()
    excerpt?: string;

    @ApiProperty({ example: '<p>Nội dung bài viết...</p>' })
    @IsString()
    content: string;

    @ApiPropertyOptional({ example: 'https://images.unsplash.com/photo-xxx' })
    @IsOptional()
    @IsString()
    thumbnailUrl?: string;

    @ApiPropertyOptional({ example: ['hoa hồng', 'chăm sóc hoa', 'mẹo hay'] })
    @IsOptional()
    @IsArray()
    tags?: string[];

    @ApiPropertyOptional({ default: false })
    @IsOptional()
    @IsBoolean()
    @Type(() => Boolean)
    isPublished?: boolean;

    // SEO
    @ApiPropertyOptional({ example: 'Cách chăm sóc hoa hồng - BloomStore Blog' })
    @IsOptional()
    @IsString()
    metaTitle?: string;

    @ApiPropertyOptional({ example: 'Hướng dẫn chi tiết cách chăm sóc hoa hồng tươi lâu tại nhà' })
    @IsOptional()
    @IsString()
    metaDescription?: string;
}

export class UpdatePostDto {
    @ApiPropertyOptional()
    @IsOptional()
    @IsString()
    @MaxLength(255)
    title?: string;

    @ApiPropertyOptional()
    @IsOptional()
    @IsString()
    slug?: string;

    @ApiPropertyOptional()
    @IsOptional()
    @IsString()
    excerpt?: string;

    @ApiPropertyOptional()
    @IsOptional()
    @IsString()
    content?: string;

    @ApiPropertyOptional()
    @IsOptional()
    @IsString()
    thumbnailUrl?: string;

    @ApiPropertyOptional()
    @IsOptional()
    @IsArray()
    tags?: string[];

    @ApiPropertyOptional()
    @IsOptional()
    @IsBoolean()
    @Type(() => Boolean)
    isPublished?: boolean;

    // SEO
    @ApiPropertyOptional()
    @IsOptional()
    @IsString()
    metaTitle?: string;

    @ApiPropertyOptional()
    @IsOptional()
    @IsString()
    metaDescription?: string;
}
