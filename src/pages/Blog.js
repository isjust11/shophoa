import React, { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import { useSettings } from '../context/SettingsContext';
import api from '../api';
import '../styles/blog.css';

const Blog = () => {
    const [posts, setPosts] = useState([]);
    const [loading, setLoading] = useState(true);
    const [selectedTag, setSelectedTag] = useState(null);
    const { settings } = useSettings();

    useEffect(() => {
        document.title = `Blog — ${settings.shop_name || 'BloomStore'}`;
    }, [settings]);

    useEffect(() => {
        setLoading(true);
        api.getPosts(selectedTag)
            .then(data => setPosts(data))
            .catch(() => setPosts([]))
            .finally(() => setLoading(false));
    }, [selectedTag]);

    // Extract unique tags from all posts
    const allTags = [...new Set(posts.flatMap(p => p.tags || []))];

    const formatDate = (dateStr) => {
        if (!dateStr) return '';
        return new Date(dateStr).toLocaleDateString('vi-VN', {
            year: 'numeric', month: 'long', day: 'numeric'
        });
    };

    return (
        <div className="blog-page">
            <section className="blog-hero">
                <div className="blog-hero-content">
                    <h1>Blog & Kiến Thức Hoa</h1>
                    <p>Chia sẻ kinh nghiệm chăm sóc hoa, ý nghĩa các loài hoa và mẹo hay từ BloomStore</p>
                </div>
            </section>

            <section className="blog-content">
                <div className="container">
                    {allTags.length > 0 && (
                        <div className="blog-tags-filter">
                            <button
                                className={`tag-chip ${!selectedTag ? 'active' : ''}`}
                                onClick={() => setSelectedTag(null)}
                            >
                                Tất cả
                            </button>
                            {allTags.map(tag => (
                                <button
                                    key={tag}
                                    className={`tag-chip ${selectedTag === tag ? 'active' : ''}`}
                                    onClick={() => setSelectedTag(tag)}
                                >
                                    {tag}
                                </button>
                            ))}
                        </div>
                    )}

                    {loading ? (
                        <div className="blog-loading">
                            <div className="loading-spinner"></div>
                            <p>Đang tải bài viết...</p>
                        </div>
                    ) : posts.length === 0 ? (
                        <div className="blog-empty">
                            <i className="fas fa-newspaper"></i>
                            <p>Chưa có bài viết nào</p>
                        </div>
                    ) : (
                        <div className="blog-grid">
                            {posts.map(post => (
                                <Link to={`/blog/${post.slug}`} className="blog-card" key={post.id}>
                                    {post.thumbnailUrl && (
                                        <div className="blog-card-image">
                                            <img src={post.thumbnailUrl} alt={post.title} loading="lazy" />
                                        </div>
                                    )}
                                    <div className="blog-card-body">
                                        <div className="blog-card-meta">
                                            <span className="blog-card-date">
                                                <i className="fas fa-calendar-alt"></i> {formatDate(post.publishedAt)}
                                            </span>
                                        </div>
                                        <h2 className="blog-card-title">{post.title}</h2>
                                        <p className="blog-card-excerpt">{post.excerpt}</p>
                                        <div className="blog-card-tags">
                                            {(post.tags || []).slice(0, 3).map(tag => (
                                                <span className="blog-tag" key={tag}>{tag}</span>
                                            ))}
                                        </div>
                                        <span className="blog-card-link">
                                            Đọc thêm <i className="fas fa-arrow-right"></i>
                                        </span>
                                    </div>
                                </Link>
                            ))}
                        </div>
                    )}
                </div>
            </section>
        </div>
    );
};

export default Blog;
