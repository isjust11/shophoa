import React, { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import { useSettings } from '../context/SettingsContext';
import api from '../api';

const Footer = () => {
  const { settings } = useSettings();
  const [categories, setCategories] = useState([]);

  useEffect(() => {
    api.getCategories()
      .then(data => setCategories(data.filter(c => c.showInMenu && !c.parentId).slice(0, 5)))
      .catch(() => {});
  }, []);

  return (
    <footer className="footer">
      <div className="container">
        <div className="footer-content">
          <div className="footer-brand">
            <h3>{settings.shop_name || ''}</h3>
            <p>Mang vẻ đẹp thiên nhiên vào cuộc sống với những bó hoa tươi cao cấp được tuyển chọn kỹ lưỡng.</p>
            <div className="footer-social">
              {settings.zalo_url && (
                <a href={settings.zalo_url} className="social-link" target="_blank" rel="noopener noreferrer">
                  <i className="fas fa-comments"></i>
                </a>
              )}
              {settings.facebook_url && (
                <a href={settings.facebook_url} className="social-link" target="_blank" rel="noopener noreferrer">
                  <i className="fab fa-facebook"></i>
                </a>
              )}
              {settings.instagram_url && (
                <a href={settings.instagram_url} className="social-link" target="_blank" rel="noopener noreferrer">
                  <i className="fab fa-instagram"></i>
                </a>
              )}
            </div>
            {settings.phone && (
              <p style={{ marginTop: '0.75rem', fontSize: '0.9rem' }}>
                <i className="fas fa-phone" style={{ marginRight: '0.5rem' }}></i>
                <a href={`tel:${settings.phone}`} style={{ color: 'inherit' }}>{settings.phone}</a>
              </p>
            )}
            {settings.email && (
              <p style={{ fontSize: '0.9rem' }}>
                <i className="fas fa-envelope" style={{ marginRight: '0.5rem' }}></i>
                <a href={`mailto:${settings.email}`} style={{ color: 'inherit' }}>{settings.email}</a>
              </p>
            )}
            {settings.address && (
              <p style={{ fontSize: '0.9rem' }}>
                <i className="fas fa-map-marker-alt" style={{ marginRight: '0.5rem' }}></i>
                {settings.address}
              </p>
            )}
          </div>

          <div className="footer-links">
            <h4>Sản phẩm</h4>
            <ul>
              {categories.map(cat => (
                <li key={cat.id}><Link to={`/products?category=${cat.slug}`}>{cat.name}</Link></li>
              ))}
              {categories.length === 0 && (
                <li><Link to="/products">Xem tất cả sản phẩm</Link></li>
              )}
            </ul>
          </div>

          <div className="footer-links">
            <h4>Hỗ trợ</h4>
            <ul>
              <li><Link to="/chinh-sach-giao-hang">Chính sách giao hàng</Link></li>
              <li><Link to="/huong-dan-dat-hang">Hướng dẫn đặt hàng</Link></li>
              <li><Link to="/cau-hoi-thuong-gap">Câu hỏi thường gặp</Link></li>
              <li><Link to="/contact">Liên hệ hỗ trợ</Link></li>
            </ul>
          </div>
        </div>

        <div className="footer-bottom">
          <div className="footer-copyright">
            <p>&copy; 2026 {settings.shop_name || ''}. Tất cả quyền được bảo lưu.</p>
          </div>
        </div>
      </div>
    </footer>
  );
};

export default Footer;