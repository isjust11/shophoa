import React, { useState, useEffect } from 'react';
import { useParams, Link } from 'react-router-dom';
import { useSettings } from '../context/SettingsContext';
import api from '../api';
import '../styles/blog.css';

const BlogPost = () => {
    const { slug } = useParams();
    const [post, setPost] = useState(null);
    const [relatedPosts, setRelatedPosts] = useState([]);
    const [loading, setLoading] = useState(true);
    const { settings } = useSettings();

    useEffect(() => {
        setLoading(true);
        api.getPost(slug)
            .then(data => {
                setPost(data);
                document.title = data.metaTitle || `${data.title} — ${settings.shop_name || 'BloomStore'}`;

                // Update meta description
                let metaDesc = document.querySelector('meta[name="description"]');
                if (!metaDesc) {
                    metaDesc = document.createElement('meta');
                    metaDesc.setAttribute('name', 'description');
                    document.head.appendChild(metaDesc);
                }
                metaDesc.setAttribute('content', data.metaDescription || data.excerpt || '');

                // JSON-LD Article structured data
                let jsonLd = document.getElementById('blog-jsonld');
                if (!jsonLd) {
                    jsonLd = document.createElement('script');
                    jsonLd.id = 'blog-jsonld';
                    jsonLd.type = 'application/ld+json';
                    document.head.appendChild(jsonLd);
                }
                jsonLd.textContent = JSON.stringify({
                    '@context': 'https://schema.org',
                    '@type': 'Article',
                    headline: data.title,
                    description: data.excerpt || data.metaDescription || '',
                    image: data.thumbnailUrl || '',
                    datePublished: data.publishedAt,
                    dateModified: data.updatedAt,
                    author: {
                        '@type': 'Organization',
                        name: settings.shop_name || 'BloomStore',
                    },
                    publisher: {
                        '@type': 'Organization',
                        name: settings.shop_name || 'BloomStore',
                    },
                });

                // Fetch related posts
                if (data.tags && data.tags.length) {
                    api.getPosts(data.tags[0])
                        .then(all => setRelatedPosts(all.filter(p => p.id !== data.id).slice(0, 3)))
                        .catch(() => { });
                }
            })
            .catch(() => setPost(null))
            .finally(() => setLoading(false));

        return () => {
            const jsonLd = document.getElementById('blog-jsonld');
            if (jsonLd) jsonLd.remove();
        };
    }, [slug, settings]);

    const formatDate = (dateStr) => {
        if (!dateStr) return '';
        return new Date(dateStr).toLocaleDateString('vi-VN', {
            year: 'numeric', month: 'long', day: 'numeric'
        });
    };

    if (loading) {
        return (
            <div className="blog-page">
                <div className="blog-loading">
                    <div className="loading-spinner"></div>
                    <p>Đang tải bài viết...</p>
                </div>
            </div>
        );
    }

    if (!post) {
        return (
            <div className="blog-page">
                <div className="blog-not-found">
                    <i className="fas fa-exclamation-circle"></i>
                    <h2>Không tìm thấy bài viết</h2>
                    <Link to="/blog" className="btn-back">
                        <i className="fas fa-arrow-left"></i> Quay lại Blog
                    </Link>
                </div>
            </div>
        );
    }

    return (
        <div className="blog-page">
            <article className="blog-post-detail">
                {post.thumbnailUrl && (
                    <div className="blog-post-hero">
                        <img src={post.thumbnailUrl} alt={post.title} />
                        <div className="blog-post-hero-overlay"></div>
                    </div>
                )}

                <div className="blog-post-container">
                    <div className="blog-post-header">
                        <Link to="/blog" className="blog-breadcrumb">
                            <i className="fas fa-arrow-left"></i> Blog
                        </Link>
                        <h1>{post.title}</h1>
                        <div className="blog-post-meta">
                            <span><i className="fas fa-calendar-alt"></i> {formatDate(post.publishedAt)}</span>
                            {post.tags && post.tags.length > 0 && (
                                <span className="blog-post-tags">
                                    {post.tags.map(tag => (
                                        <Link to={`/blog?tag=${encodeURIComponent(tag)}`} className="blog-tag" key={tag}>
                                            {tag}
                                        </Link>
                                    ))}
                                </span>
                            )}
                        </div>
                    </div>

                    <div
                        className="blog-post-content"
                        dangerouslySetInnerHTML={{ __html: post.content }}
                    />

                    {relatedPosts.length > 0 && (
                        <div className="blog-related">
                            <h3>Bài viết liên quan</h3>
                            <div className="blog-related-grid">
                                {relatedPosts.map(rp => (
                                    <Link to={`/blog/${rp.slug}`} className="blog-related-card" key={rp.id}>
                                        {rp.thumbnailUrl && (
                                            <img src={rp.thumbnailUrl} alt={rp.title} loading="lazy" />
                                        )}
                                        <h4>{rp.title}</h4>
                                        <span className="blog-card-date">
                                            <i className="fas fa-calendar-alt"></i> {formatDate(rp.publishedAt)}
                                        </span>
                                    </Link>
                                ))}
                            </div>
                        </div>
                    )}
                </div>
            </article>
        </div>
    );
};

export default BlogPost;
