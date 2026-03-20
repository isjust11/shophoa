import React from 'react';
import { BrowserRouter as Router, Routes, Route, Navigate } from 'react-router-dom';
import { SettingsProvider } from './context/SettingsContext';
import Header from './components/Header';
import Footer from './components/Footer';
import BackToTop from './components/BackToTop';
import ScrollToTop from './components/ScrollToTop';
import SocialFloat from './components/SocialFloat';
import Home from './pages/Home';
import Products from './pages/Products';
import ProductDetail from './pages/ProductDetail';
import Services from './pages/Services';
import Contact from './pages/Contact';
import Gallery from './pages/Gallery';
import Blog from './pages/Blog';
import BlogPost from './pages/BlogPost';
import ShippingPolicy from './pages/ShippingPolicy';
import OrderingGuide from './pages/OrderingGuide';
import FAQ from './pages/FAQ';
import './styles/style.css';
import './styles/contact.css';
import './styles/services.css';
import './styles/product-detail.css';
import './styles/gallery.css';
import './styles/blog.css';
import './styles/enhancements.css';
import './styles/support.css';

function App() {
  return (
    <SettingsProvider>
      <Router>
        <ScrollToTop />
        <div className="App">
          <Header />
          <main>
            <Routes>
              <Route path="/" element={<Home />} />
              <Route path="/products" element={<Products />} />
              <Route path="/products/:id" element={<ProductDetail />} />
              <Route path="/san-pham/:slug" element={<ProductDetail />} />
              <Route path="/services" element={<Services />} />
              <Route path="/gallery" element={<Gallery />} />
              <Route path="/blog" element={<Blog />} />
              <Route path="/blog/:slug" element={<BlogPost />} />
              <Route path="/contact" element={<Contact />} />
              <Route path="/chinh-sach-giao-hang" element={<ShippingPolicy />} />
              <Route path="/huong-dan-dat-hang" element={<OrderingGuide />} />
              <Route path="/cau-hoi-thuong-gap" element={<FAQ />} />

              {/* Redirect from old routes */}
              <Route path="/product-detail" element={<Navigate to="/products" replace />} />
              <Route path="/index.html" element={<Navigate to="/" replace />} />
              <Route path="/about" element={<Navigate to="/" replace />} />

              {/* 404 redirect to home */}
              <Route path="*" element={<Navigate to="/" replace />} />
            </Routes>
          </main>
          <Footer />
          <SocialFloat />
          <BackToTop />
        </div>
      </Router>
    </SettingsProvider>
  );
}

export default App;