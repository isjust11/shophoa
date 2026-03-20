import React, { useState, useEffect } from 'react';
import { Link, useLocation } from 'react-router-dom';
import { useSettings } from '../context/SettingsContext';
import api from '../api';

const Header = () => {
  const [isMenuOpen, setIsMenuOpen] = useState(false);
  const [isScrolled, setIsScrolled] = useState(false);
  const [categories, setCategories] = useState([]);
  const location = useLocation();
  const { settings } = useSettings();

  useEffect(() => {
    const handleScroll = () => {
      setIsScrolled(window.scrollY > 100);
    };

    window.addEventListener('scroll', handleScroll);
    return () => window.removeEventListener('scroll', handleScroll);
  }, []);

  useEffect(() => {
    setIsMenuOpen(false);
  }, [location]);

  // Fetch categories for menu
  useEffect(() => {
    api.getCategories()
      .then(data => setCategories(data))
      .catch(err => console.error('Failed to load categories:', err));
  }, []);

  const toggleMenu = () => {
    setIsMenuOpen(!isMenuOpen);
  };

  const isActive = (path) => {
    return location.pathname === path ? 'active' : '';
  };

  // Build category tree: only show root categories marked for menu, with children as dropdowns
  const menuCategories = categories.filter(c => c.showInMenu && !c.parentId);

  // Menu visibility from settings
  const showGallery = settings.show_menu_gallery !== 'false';
  const showBlog = settings.show_menu_blog !== 'false';
  const showContact = settings.show_menu_contact !== 'false';

  return (
    <header className={`header ${isScrolled ? 'scrolled' : ''}`}>
      <nav className="navbar">
        <div className="nav-container">
          <div className="nav-logo">
            <Link to="/">
              {settings.logo_url ? (
                <img src={api.imageUrl(settings.logo_url)} alt={settings.shop_name} style={{ height: '80px', maxHeight: '100%' }} />
              ) : (
                <h1>{settings.shop_name || ''}</h1>
              )}
            </Link>
          </div>

          <ul className={`nav-menu ${isMenuOpen ? 'active' : ''}`}>
            <li className="nav-item">
              <Link to="/" className={`nav-link ${isActive('/')}`}>
                Trang chủ
              </Link>
            </li>
            <li className="nav-item">
              <Link to="/products" className={`nav-link ${isActive('/products')}`}>
                Sản phẩm
              </Link>
            </li>

            {/* Category menu items — each root category is a top-level nav item */}
            {menuCategories.map(cat => {
              // Find children of this category
              const children = categories.filter(c => c.parentId === cat.id);

              if (children.length > 0) {
                // Has subcategories → dropdown
                return (
                  <li key={cat.id} className="nav-item nav-dropdown">
                    <Link to={`/products?category=${cat.slug}`} className="nav-link">
                      {cat.name} <i className="fas fa-chevron-down nav-dropdown-arrow"></i>
                    </Link>
                    <ul className="nav-dropdown-menu">
                      {children.map(sub => (
                        <li key={sub.id}>
                          <Link to={`/products?category=${sub.slug}`}>{sub.name}</Link>
                        </li>
                      ))}
                    </ul>
                  </li>
                );
              }

              // No children → plain link
              return (
                <li key={cat.id} className="nav-item">
                  <Link to={`/products?category=${cat.slug}`} className="nav-link">
                    {cat.name}
                  </Link>
                </li>
              );
            })}

            {showGallery && (
              <li className="nav-item">
                <Link to="/gallery" className={`nav-link ${isActive('/gallery')}`}>
                  Bộ sưu tập
                </Link>
              </li>
            )}
            {showBlog && (
              <li className="nav-item">
                <Link to="/blog" className={`nav-link ${isActive('/blog')}`}>
                  Blog
                </Link>
              </li>
            )}
            {showContact && (
              <li className="nav-item">
                <Link to="/contact" className={`nav-link ${isActive('/contact')}`}>
                  Liên hệ
                </Link>
              </li>
            )}
          </ul>

          <div className="nav-actions">
            <button
              className={`btn-menu-toggle ${isMenuOpen ? 'active' : ''}`}
              onClick={toggleMenu}
              aria-label="Toggle menu"
            >
              <span></span>
              <span></span>
              <span></span>
            </button>
          </div>
        </div>
      </nav>
    </header>
  );
};

export default Header;