import { IsString, IsOptional, MaxLength, IsBoolean, IsNumber } from 'class-validator';
import { ApiProperty, ApiPropertyOptional } from '@nestjs/swagger';

export class CreateCategoryDto {
    @ApiProperty({ example: 'wedding' })
    @IsString()
    @MaxLength(100)
    slug: string;

    @ApiProperty({ example: 'Hoa cưới' })
    @IsString()
    @MaxLength(200)
    name: string;

    @ApiPropertyOptional({ example: 'Các loại hoa dành cho đám cưới' })
    @IsOptional()
    @IsString()
    description?: string;

    @ApiPropertyOptional({ example: false })
    @IsOptional()
    @IsBoolean()
    showInMenu?: boolean;

    @ApiPropertyOptional({ example: '/uploads/categories/wedding.jpg' })
    @IsOptional()
    @IsString()
    thumbnail?: string;

    @ApiPropertyOptional({ example: null })
    @IsOptional()
    @IsNumber()
    parentId?: number;
}

export class UpdateCategoryDto {
    @ApiPropertyOptional()
    @IsOptional()
    @IsString()
    @MaxLength(100)
    slug?: string;

    @ApiPropertyOptional()
    @IsOptional()
    @IsString()
    @MaxLength(200)
    name?: string;

    @ApiPropertyOptional()
    @IsOptional()
    @IsString()
    description?: string;

    @ApiPropertyOptional()
    @IsOptional()
    @IsBoolean()
    showInMenu?: boolean;

    @ApiPropertyOptional()
    @IsOptional()
    @IsString()
    thumbnail?: string;

    @ApiPropertyOptional()
    @IsOptional()
    @IsNumber()
    parentId?: number;
}
