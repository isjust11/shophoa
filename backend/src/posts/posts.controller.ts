import { Controller, Get, Post, Patch, Delete, Param, Body, Query, ParseIntPipe, UseGuards } from '@nestjs/common';
import { ApiTags, ApiOperation, ApiBearerAuth, ApiQuery } from '@nestjs/swagger';
import { PostsService } from './posts.service';
import { CreatePostDto, UpdatePostDto } from './post.dto';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';

@ApiTags('Posts')
@Controller('api/posts')
export class PostsController {
    constructor(private readonly service: PostsService) { }

    @Get()
    @ApiOperation({ summary: 'List published posts (public)' })
    @ApiQuery({ name: 'tag', required: false })
    findAll(@Query('tag') tag?: string) {
        return this.service.findAllPublished(tag);
    }

    @Get('admin')
    @UseGuards(JwtAuthGuard)
    @ApiBearerAuth()
    @ApiOperation({ summary: 'List all posts including drafts (admin)' })
    findAllAdmin() {
        return this.service.findAllAdmin();
    }

    @Get('slug/:slug')
    @ApiOperation({ summary: 'Get post by SEO-friendly slug' })
    findBySlug(@Param('slug') slug: string) {
        return this.service.findBySlug(slug);
    }

    @Get(':id')
    @UseGuards(JwtAuthGuard)
    @ApiBearerAuth()
    @ApiOperation({ summary: 'Get post by ID (admin)' })
    findOne(@Param('id', ParseIntPipe) id: number) {
        return this.service.findOne(id);
    }

    @Post()
    @UseGuards(JwtAuthGuard)
    @ApiBearerAuth()
    @ApiOperation({ summary: 'Create post (admin)' })
    create(@Body() dto: CreatePostDto) {
        return this.service.create(dto);
    }

    @Patch(':id')
    @UseGuards(JwtAuthGuard)
    @ApiBearerAuth()
    @ApiOperation({ summary: 'Update post (admin)' })
    update(@Param('id', ParseIntPipe) id: number, @Body() dto: UpdatePostDto) {
        return this.service.update(id, dto);
    }

    @Delete(':id')
    @UseGuards(JwtAuthGuard)
    @ApiBearerAuth()
    @ApiOperation({ summary: 'Delete post (admin)' })
    remove(@Param('id', ParseIntPipe) id: number) {
        return this.service.remove(id);
    }
}
