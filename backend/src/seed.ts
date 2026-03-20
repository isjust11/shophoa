import { NestFactory } from '@nestjs/core';
import { DataSource } from 'typeorm';
import { AppModule } from './app.module';
import * as bcrypt from 'bcrypt';
import { Category } from './categories/category.entity';
import { Product } from './products/product.entity';
import { ProductImage } from './products/product-image.entity';
import { Review } from './reviews/review.entity';
import { AdminUser } from './auth/admin-user.entity';
import { SiteSetting } from './settings/setting.entity';
import { GalleryItem } from './gallery/gallery-item.entity';
import { Post } from './posts/post.entity';

async function seed() {
    const app = await NestFactory.createApplicationContext(AppModule);
    const ds = app.get(DataSource);

    const catRepo = ds.getRepository(Category);
    const prodRepo = ds.getRepository(Product);
    const imgRepo = ds.getRepository(ProductImage);
    const reviewRepo = ds.getRepository(Review);
    const userRepo = ds.getRepository(AdminUser);

    console.log('🌱 Seeding database...');

    // Skip if data already exists (avoid duplicates)
    const existingCategories = await catRepo.count();
    if (existingCategories > 0) {
        console.log('⏭️  Database already has data, skipping seed.');
        await app.close();
        return;
    }

    // Categories
    const categories = await catRepo.save([
        { slug: 'wedding', name: 'Hoa cưới', description: 'Các loại hoa dành cho đám cưới' },
        { slug: 'birthday-bouquet', name: 'Bó hoa sinh nhật', description: 'Bó hoa tươi cho ngày sinh nhật' },
        { slug: 'birthday-basket', name: 'Giỏ hoa sinh nhật', description: 'Giỏ hoa tươi cho ngày sinh nhật' },
        { slug: 'anniversary', name: 'Hoa kỷ niệm', description: 'Hoa cho dịp kỷ niệm đặc biệt' },
        { slug: 'congratulation', name: 'Hoa chúc mừng', description: 'Hoa chúc mừng khai trương, tốt nghiệp' },
        { slug: 'sympathy', name: 'Hoa chia buồn', description: 'Hoa chia sẻ đồng cảm' },
    ]);
    console.log(`  ✓ ${categories.length} categories`);

    const catMap: Record<string, number> = {};
    for (const c of categories) catMap[c.slug] = c.id;

    // Products
    const productsData = [
        {
            name: 'Bó hoa cưới Romantic',
            categoryId: catMap['wedding'],
            shortDescription: 'Hoa hồng trắng và baby breath tinh tế',
            longDescription: 'Bó hoa cưới Romantic là tác phẩm nghệ thuật được chế tác từ những bông hoa hồng trắng Ecuador cao cấp, kết hợp cùng baby breath tạo nên vẻ đẹp tinh khôi, lãng mạn.',
            price: 1200000,
            originalPrice: 1500000,
            badge: 'Bán chạy',
            rating: 5,
            reviewCount: 24,
            features: ['25 hoa hồng trắng Ecuador cao cấp', '15 cành baby breath tươi mới', 'Giấy gói lụa cao cấp màu trắng', 'Ribbon satin sang trọng', 'Thiết kế bởi florist chuyên nghiệp', 'Bảo quản tươi 10-14 ngày'],
            specifications: { 'Kích thước': '35cm x 45cm', 'Chiều cao': '50-55cm', 'Trọng lượng': '1.2kg', 'Số lượng hoa': '40 bông', 'Nguồn gốc': 'Ecuador, New Zealand' },
            careInstructions: ['Cắt thân hoa xiên 2-3cm trong nước chảy', 'Thay nước mỗi 2 ngày, rửa sạch bình', 'Thêm 1 thìa đường hoặc dung dịch dưỡng hoa', 'Đặt nơi mát mẻ, tránh ánh nắng trực tiếp'],
            occasions: ['Đám cưới', 'Lễ đính hôn', 'Kỷ niệm ngày cưới', 'Chụp ảnh cưới'],
            images: [
                'https://images.unsplash.com/photo-1563241527-3004b7be0ffd?w=800&h=800&fit=crop',
                'https://images.unsplash.com/photo-1490750967868-88aa4f44baee?w=800&h=800&fit=crop',
                'https://images.unsplash.com/photo-1578662996442-48f60103fc96?w=800&h=800&fit=crop',
                'https://images.unsplash.com/photo-1519225421980-715cb0215aed?w=800&h=800&fit=crop',
            ],
        },
        {
            name: 'Bó hoa cưới Vintage',
            categoryId: catMap['wedding'],
            shortDescription: 'Hoa hồng champagne và eucalyptus',
            longDescription: 'Bộ sưu tập Vintage mang phong cách cổ điển, thanh lịch với tông màu champagne ấm áp.',
            price: 1400000,
            originalPrice: undefined,
            rating: 4,
            reviewCount: 18,
            features: ['20 hoa hồng champagne Ecuador', '12 cành eucalyptus tươi', 'Giấy kraft vintage', 'Ribbon jute tự nhiên'],
            occasions: ['Đám cưới vintage', 'Tiệc garden party', 'Chụp ảnh pre-wedding'],
            images: [
                'https://images.unsplash.com/photo-1490750967868-88aa4f44baee?w=800&h=800&fit=crop',
                'https://images.unsplash.com/photo-1563241527-3004b7be0ffd?w=800&h=800&fit=crop',
            ],
        },
        {
            name: 'Bó hoa sinh nhật rực rỡ',
            categoryId: catMap['birthday-bouquet'],
            shortDescription: 'Hoa hướng dương và hoa hồng cam',
            longDescription: 'Bó hoa sinh nhật tràn đầy năng lượng với sự kết hợp rực rỡ giữa hoa hướng dương và hoa hồng cam.',
            price: 800000,
            rating: 4,
            reviewCount: 15,
            features: ['6 hoa hướng dương tươi', '12 hoa hồng cam Ecuador', 'Lá xanh trang trí', 'Giấy gói màu sắc rực rỡ'],
            occasions: ['Sinh nhật', 'Chúc mừng', 'Động viên'],
            images: [
                'https://images.unsplash.com/photo-1578662996442-48f60103fc96?w=800&h=800&fit=crop',
                'https://images.unsplash.com/photo-1487070183336-b863922373d4?w=800&h=800&fit=crop',
            ],
        },
        {
            name: 'Hộp hoa kỷ niệm',
            categoryId: catMap['anniversary'],
            shortDescription: 'Hoa hồng đỏ trong hộp sang trọng',
            longDescription: 'Hộp hoa sang trọng với hoa hồng đỏ Ecuador, phù hợp cho các dịp kỷ niệm đặc biệt.',
            price: 1800000,
            badge: 'Premium',
            rating: 5,
            reviewCount: 31,
            features: ['30 hoa hồng đỏ Ecuador', 'Hộp đựng cao cấp', 'Nơ lụa sang trọng', 'Thiệp chúc mừng'],
            occasions: ['Kỷ niệm', 'Valentine', 'Ngày phụ nữ'],
            images: [
                'https://images.unsplash.com/photo-1561181286-d3fee7d55364?w=800&h=800&fit=crop',
                'https://images.unsplash.com/photo-1519225421980-715cb0215aed?w=800&h=800&fit=crop',
            ],
        },
        {
            name: 'Bó hoa chúc mừng khai trương',
            categoryId: catMap['congratulation'],
            shortDescription: 'Hoa lan hồ điệp và hoa ly',
            longDescription: 'Bó hoa sang trọng phù hợp cho dịp khai trương, chúc mừng thành công.',
            price: 2500000,
            originalPrice: 3000000,
            rating: 5,
            reviewCount: 12,
            features: ['5 cành lan hồ điệp', '10 bông hoa ly', 'Lá monstera trang trí', 'Giấy gói cao cấp'],
            occasions: ['Khai trương', 'Tốt nghiệp', 'Thăng chức'],
            images: [
                'https://images.unsplash.com/photo-1487070183336-b863922373d4?w=800&h=800&fit=crop',
                'https://images.unsplash.com/photo-1563241527-3004b7be0ffd?w=800&h=800&fit=crop',
            ],
        },
        {
            name: 'Bó hoa cúc trắng chia buồn',
            categoryId: catMap['sympathy'],
            shortDescription: 'Hoa cúc trắng và hoa ly trắng',
            longDescription: 'Bó hoa chia buồn trang nghiêm với hoa cúc trắng và hoa ly trắng tinh khôi.',
            price: 600000,
            rating: 4,
            reviewCount: 8,
            features: ['20 bông hoa cúc trắng', '5 bông hoa ly trắng', 'Giấy gói trắng thanh lịch', 'Ribbon trắng'],
            occasions: ['Chia buồn', 'Viếng'],
            images: [
                'https://images.unsplash.com/photo-1519225421980-715cb0215aed?w=800&h=800&fit=crop',
            ],
        },
    ];

    for (const pData of productsData) {
        const { images, ...productFields } = pData;
        const entity = prodRepo.create(productFields as any);
        const product = await prodRepo.save(entity) as unknown as Product;

        if (images?.length) {
            const imgs = images.map((url, i) => imgRepo.create({ productId: product.id, url, sortOrder: i }));
            await imgRepo.save(imgs);
        }
    }
    console.log(`  ✓ ${productsData.length} products with images`);

    // Sample reviews
    const allProducts = await prodRepo.find();
    const sampleReviews = [
        { productId: allProducts[0].id, reviewerName: 'Nguyễn Thị Lan', rating: 5, comment: 'Hoa rất đẹp, đúng như hình. Giao hàng nhanh!', verified: true },
        { productId: allProducts[0].id, reviewerName: 'Trần Minh Tuấn', rating: 5, comment: 'Vợ mình rất thích. Hoa tươi lâu được 12 ngày.', verified: true },
        { productId: allProducts[0].id, reviewerName: 'Lê Hoàng Anh', rating: 4, comment: 'Đẹp lắm, chỉ hơi nhỏ hơn mình tưởng.', verified: false },
        { productId: allProducts[1].id, reviewerName: 'Phạm Thu Hà', rating: 5, comment: 'Phong cách vintage rất đẹp và lãng mạn!', verified: true },
        { productId: allProducts[2].id, reviewerName: 'Võ Đức Thắng', rating: 4, comment: 'Màu sắc rực rỡ, bạn gái rất thích.', verified: true },
        { productId: allProducts[3].id, reviewerName: 'Hoàng Thị Mai', rating: 5, comment: 'Hộp hoa sang trọng, đúng dịp kỷ niệm.', verified: true },
    ];
    await reviewRepo.save(sampleReviews.map((r) => reviewRepo.create(r)));
    console.log(`  ✓ ${sampleReviews.length} reviews`);

    // Admin user
    const hash = await bcrypt.hash('admin123', 10);
    await userRepo.save(userRepo.create({ username: 'admin', passwordHash: hash }));
    console.log('  ✓ Admin user (admin / admin123)');

    // Site settings
    const settingRepo = ds.getRepository(SiteSetting);
    const defaultSettings = [
        { key: 'shop_name', value: 'BloomStore', label: 'Tên cửa hàng', type: 'text' },
        { key: 'slogan', value: 'Premium Flowers', label: 'Slogan', type: 'text' },
        { key: 'favicon_url', value: '', label: 'Favicon URL', type: 'url' },
        { key: 'logo_url', value: '', label: 'Logo URL', type: 'url' },
        { key: 'meta_title', value: 'BloomStore - Hoa Tươi Cao Cấp | Giao Hàng Toàn Quốc', label: 'Meta Title (SEO)', type: 'text' },
        { key: 'meta_description', value: 'BloomStore - Cửa hàng hoa tươi cao cấp. Đa dạng hoa cưới, hoa sinh nhật, hoa kỷ niệm, hoa chúc mừng. Thiết kế độc đáo, giao hàng nhanh toàn quốc.', label: 'Meta Description (SEO)', type: 'textarea' },
        { key: 'meta_keywords', value: 'hoa tươi, hoa cưới, hoa sinh nhật, hoa kỷ niệm, hoa chúc mừng, giao hoa, shop hoa, bloomstore', label: 'Meta Keywords (SEO)', type: 'text' },
        { key: 'og_image', value: '', label: 'OG Image URL (chia sẻ mạng xã hội)', type: 'url' },
        { key: 'phone', value: '0123 456 789', label: 'Số điện thoại', type: 'text' },
        { key: 'email', value: 'hello@bloomstore.vn', label: 'Email', type: 'text' },
        { key: 'address', value: '123 Nguyễn Huệ, Quận 1, TP. Hồ Chí Minh', label: 'Địa chỉ', type: 'text' },
        { key: 'zalo_url', value: 'https://zalo.me/bloomstore', label: 'Zalo URL', type: 'url' },
        { key: 'facebook_url', value: 'https://facebook.com/bloomstore', label: 'Facebook URL', type: 'url' },
        { key: 'instagram_url', value: 'https://instagram.com/bloomstore', label: 'Instagram URL', type: 'url' },
        { key: 'google_map_url', value: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.4326648243056!2d106.69741731527314!3d10.775431892323178!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f1c06f4e1dd%3A0x43900f1d4539a3d!2sNguyen%20Hue%20Walking%20Street!5e0!3m2!1sen!2s!4v1640995200000!5m2!1sen!2s', label: 'Google Map Embed URL', type: 'url' },
        // SEO Verification & Analytics
        { key: 'google_verification', value: '', label: 'Google Search Console (mã xác minh)', type: 'text' },
        { key: 'bing_verification', value: '', label: 'Bing Webmaster (mã xác minh)', type: 'text' },
        { key: 'google_analytics_id', value: '', label: 'Google Analytics ID (G-XXXXXXXX)', type: 'text' },
    ];
    await settingRepo.save(defaultSettings.map(s => settingRepo.create(s)));
    console.log(`  ✓ ${defaultSettings.length} site settings`);

    // Gallery Items
    const galleryRepo = ds.getRepository(GalleryItem);
    try { await ds.query('TRUNCATE TABLE gallery_items'); } catch { /* table may not exist yet */ }
    const galleryItems = [
        { title: 'Hoa cưới cổ điển', description: 'Bó hoa hồng trắng tinh khôi cho ngày trọng đại', category: 'wedding', imageUrl: 'https://images.unsplash.com/photo-1519741497674-611481863552?w=800&h=1000&fit=crop', likes: 234, sortOrder: 1 },
        { title: 'Bó hoa pastel', description: 'Sắc màu nhẹ nhàng cho mọi dịp', category: 'bouquet', imageUrl: 'https://images.unsplash.com/photo-1487530811176-3780de880c2d?w=800&h=1200&fit=crop', likes: 189, sortOrder: 2 },
        { title: 'Trang trí tiệc cưới', description: 'Không gian tiệc cưới lãng mạn với hoa tươi', category: 'wedding', imageUrl: 'https://images.unsplash.com/photo-1519225421980-715cb0215aed?w=1200&h=600&fit=crop', likes: 312, sortOrder: 3 },
        { title: 'Hoa sinh nhật', description: 'Bó hoa rực rỡ cho ngày sinh nhật thêm vui', category: 'birthday', imageUrl: 'https://images.unsplash.com/photo-1562932831-afcfe735e9d5?w=800&h=800&fit=crop', likes: 156, sortOrder: 4 },
        { title: 'Hoa trang trí bàn', description: 'Trung tâm bàn tiệc sang trọng với hoa tươi', category: 'decor', imageUrl: 'https://images.unsplash.com/photo-1471696035578-3d8c78d99571?w=800&h=600&fit=crop', likes: 201, sortOrder: 5 },
        { title: 'Hoa sự kiện', description: 'Trang trí sân khấu sự kiện với hoa cao cấp', category: 'event', imageUrl: 'https://images.unsplash.com/photo-1469371670807-013ccf25f16a?w=800&h=1000&fit=crop', likes: 245, sortOrder: 6 },
        { title: 'Bó hoa tulip', description: 'Tulip Holland nhập khẩu tươi mỗi ngày', category: 'bouquet', imageUrl: 'https://images.unsplash.com/photo-1524386416438-98b9b2d4b433?w=800&h=1100&fit=crop', likes: 178, sortOrder: 7 },
        { title: 'Hoa chúc mừng', description: 'Kệ hoa chúc mừng khai trương hoành tráng', category: 'event', imageUrl: 'https://images.unsplash.com/photo-1508610048659-a06b669e3321?w=800&h=800&fit=crop', likes: 267, sortOrder: 8 },
        { title: 'Bó hồng đỏ', description: 'Hoa hồng đỏ Ecuador — biểu tượng tình yêu', category: 'bouquet', imageUrl: 'https://images.unsplash.com/photo-1455659817273-f96807779a8a?w=800&h=1000&fit=crop', likes: 345, sortOrder: 9 },
        { title: 'Trang trí lối đi', description: 'Hàng hoa dọc lối đi lễ cưới', category: 'wedding', imageUrl: 'https://images.unsplash.com/photo-1464699908537-0954e50791ee?w=800&h=600&fit=crop', likes: 223, sortOrder: 10 },
        { title: 'Backdrop hoa cưới', description: 'Phông nền hoa tươi ấn tượng cho lễ cưới', category: 'wedding', imageUrl: 'https://images.unsplash.com/photo-1544367567-0f2fcb009e0b?w=800&h=600&fit=crop', likes: 298, sortOrder: 11 },
        { title: 'Hoa tặng Valentine', description: 'Hộp hoa sang trọng cho ngày Valentine', category: 'birthday', imageUrl: 'https://images.unsplash.com/photo-1518895949257-7621c3c786d7?w=800&h=800&fit=crop', likes: 412, sortOrder: 12 },
        { title: 'Lọ hoa vintage', description: 'Phong cách hoa vintage ấm áp và sang trọng', category: 'decor', imageUrl: 'https://images.unsplash.com/photo-1457089328109-e5d9bd499191?w=800&h=1200&fit=crop', likes: 178, sortOrder: 13 },
        { title: 'Hoa lily trắng', description: 'Lily trắng thanh lịch cho mọi không gian', category: 'decor', imageUrl: 'https://images.unsplash.com/photo-1468327768560-75b778cbb551?w=800&h=600&fit=crop', likes: 203, sortOrder: 14 },
        { title: 'Hoa tiệc sự kiện', description: 'Trang trí bàn tiệc sự kiện cao cấp', category: 'event', imageUrl: 'https://images.unsplash.com/photo-1510076857177-7470076d4098?w=800&h=1000&fit=crop', likes: 198, sortOrder: 15 },
        { title: 'Sinh nhật đặc biệt', description: 'Bó hoa sinh nhật rực rỡ sắc màu', category: 'birthday', imageUrl: 'https://images.unsplash.com/photo-1563241527-3004b7be0ffd?w=800&h=800&fit=crop', likes: 267, sortOrder: 16 },
    ];
    await galleryRepo.save(galleryItems.map(g => galleryRepo.create(g)));
    console.log(`  ✓ ${galleryItems.length} gallery items`);

    // Blog Posts — location-based for local SEO
    const postRepo = ds.getRepository(Post);
    const now = new Date();
    const postsData = [
        {
            title: 'Shop hoa tươi Quận 1 — Giao nhanh trong 60 phút',
            slug: 'shop-hoa-tuoi-quan-1-giao-nhanh',
            excerpt: 'Tìm kiếm shop hoa tươi uy tín tại Quận 1, TP.HCM? BloomStore cung cấp hoa tươi cao cấp, giao hàng nhanh trong 60 phút tới mọi địa chỉ Quận 1.',
            content: `<h2>Shop hoa tươi Quận 1 — BloomStore</h2>\n<p>BloomStore tự hào là một trong những shop hoa tươi hàng đầu tại <strong>Quận 1, TP. Hồ Chí Minh</strong>. Với đội ngũ florist chuyên nghiệp và nguồn hoa nhập khẩu từ Ecuador, Hà Lan, chúng tôi mang đến những bó hoa tươi đẹp nhất cho mọi dịp.</p>\n<h3>Dịch vụ giao hoa Quận 1</h3>\n<ul>\n<li>Giao hoa tận nơi trong vòng 60 phút</li>\n<li>Phục vụ 24/7 cho các dịp đặc biệt</li>\n<li>Giao hoa đến khách sạn, nhà hàng, văn phòng Quận 1</li>\n<li>Dịch vụ trang trí hoa tiệc cưới, sự kiện</li>\n</ul>\n<h3>Các loại hoa phổ biến tại Quận 1</h3>\n<p>Khách hàng tại Quận 1 thường chọn hoa hồng Ecuador, hoa lan hồ điệp, hoa ly và các bó hoa cưới sang trọng. BloomStore cam kết hoa tươi 100%, bảo hành 3 ngày.</p>\n<p><strong>Địa chỉ:</strong> 123 Nguyễn Huệ, Quận 1, TP.HCM</p>\n<p><strong>Hotline:</strong> 0123 456 789</p>`,
            thumbnailUrl: 'https://images.unsplash.com/photo-1487530811176-3780de880c2d?w=800&h=500&fit=crop',
            tags: ['Quận 1', 'hoa tươi', 'giao hoa', 'TP.HCM', 'shop hoa'],
            isPublished: true,
            publishedAt: new Date(now.getTime() - 1 * 24 * 3600000),
            metaTitle: 'Shop Hoa Tươi Quận 1 | Giao Nhanh 60 Phút | BloomStore',
            metaDescription: 'Shop hoa tươi Quận 1 TP.HCM ✿ Hoa nhập khẩu Ecuador, Hà Lan ✿ Giao hàng nhanh 60 phút ✿ Thiết kế theo yêu cầu ✿ BloomStore — 0123 456 789',
        },
        {
            title: 'Dịch vụ hoa cưới Quận 7 — Thiết kế theo phong cách riêng',
            slug: 'dich-vu-hoa-cuoi-quan-7',
            excerpt: 'BloomStore cung cấp dịch vụ hoa cưới trọn gói tại Quận 7. Thiết kế bó hoa cưới, hoa cài áo, trang trí lễ đường theo phong cách riêng của bạn.',
            content: `<h2>Dịch vụ hoa cưới tại Quận 7</h2>\n<p>Ngày cưới là ngày trọng đại nhất trong cuộc đời. Tại <strong>Quận 7, TP.HCM</strong>, BloomStore mang đến dịch vụ hoa cưới chuyên nghiệp, giúp bạn có một lễ cưới hoàn hảo với hoa tươi đẹp nhất.</p>\n<h3>Gói dịch vụ hoa cưới</h3>\n<ul>\n<li><strong>Bó hoa cưới cầm tay:</strong> Thiết kế theo phong cách Classic, Rustic, Modern</li>\n<li><strong>Hoa cài áo chú rể:</strong> Phối cùng bó hoa cưới</li>\n<li><strong>Trang trí lễ đường:</strong> Cổng hoa, bàn tiệc, backdrop</li>\n<li><strong>Hoa xe cưới:</strong> Trang trí xe hoa sang trọng</li>\n</ul>\n<h3>Vì sao chọn BloomStore?</h3>\n<p>Với hơn 5 năm kinh nghiệm phục vụ hàng trăm đám cưới tại Quận 7 và các khu vực lân cận như Quận 4, Nhà Bè, Phú Mỹ Hưng, chúng tôi hiểu rõ nhu cầu của cặp đôi hiện đại.</p>`,
            thumbnailUrl: 'https://images.unsplash.com/photo-1519741497674-611481863552?w=800&h=500&fit=crop',
            tags: ['Quận 7', 'hoa cưới', 'dịch vụ cưới', 'TP.HCM', 'trang trí'],
            isPublished: true,
            publishedAt: new Date(now.getTime() - 3 * 24 * 3600000),
            metaTitle: 'Dịch Vụ Hoa Cưới Quận 7 | Thiết Kế Theo Yêu Cầu | BloomStore',
            metaDescription: 'Dịch vụ hoa cưới trọn gói tại Quận 7 TP.HCM ✿ Bó hoa cưới, hoa cài áo, trang trí lễ đường ✿ Thiết kế theo phong cách riêng ✿ Gọi ngay 0123 456 789',
        },
        {
            title: 'Cách chăm sóc hoa hồng Ecuador tươi lâu tại nhà',
            slug: 'cach-cham-soc-hoa-hong-ecuador-tuoi-lau',
            excerpt: 'Hướng dẫn chi tiết cách chăm sóc hoa hồng Ecuador để giữ hoa tươi lâu 10-14 ngày. Mẹo cắt cành, thay nước, và bảo quản đúng cách.',
            content: `<h2>Cách chăm sóc hoa hồng Ecuador</h2>\n<p>Hoa hồng Ecuador nổi tiếng với cánh hoa to, màu sắc rực rỡ và độ bền cao. Với cách chăm sóc đúng, bạn có thể giữ hoa tươi từ <strong>10 đến 14 ngày</strong>.</p>\n<h3>Bước 1: Cắt cành đúng cách</h3>\n<p>Khi nhận hoa, hãy cắt xiên thân hoa khoảng 2-3cm dưới vòi nước chảy. Cắt xiên giúp hoa hấp thụ nước tốt hơn.</p>\n<h3>Bước 2: Chuẩn bị bình hoa</h3>\n<p>Rửa sạch bình hoa bằng xà phòng. Đổ nước sạch ở nhiệt độ phòng, thêm 1 gói dưỡng hoa hoặc 1 thìa đường + vài giọt chanh.</p>\n<h3>Bước 3: Vặt lá dưới mực nước</h3>\n<p>Bỏ tất cả lá nằm dưới mực nước để tránh vi khuẩn phát triển.</p>\n<h3>Bước 4: Đặt đúng vị trí</h3>\n<p>Đặt hoa nơi mát mẻ, tránh ánh nắng trực tiếp và gió mạnh. Tránh đặt gần trái cây vì ethylene làm hoa mau tàn.</p>\n<h3>Bước 5: Thay nước thường xuyên</h3>\n<p>Thay nước mỗi 2 ngày, rửa lại bình và cắt lại cành.</p>`,
            thumbnailUrl: 'https://images.unsplash.com/photo-1455659817273-f96807779a8a?w=800&h=500&fit=crop',
            tags: ['chăm sóc hoa', 'hoa hồng', 'Ecuador', 'mẹo hay', 'hướng dẫn'],
            isPublished: true,
            publishedAt: new Date(now.getTime() - 5 * 24 * 3600000),
            metaTitle: 'Cách Chăm Sóc Hoa Hồng Ecuador Tươi Lâu 14 Ngày | BloomStore',
            metaDescription: 'Hướng dẫn chi tiết cách chăm sóc hoa hồng Ecuador tại nhà ✿ 5 bước đơn giản giữ hoa tươi 10-14 ngày ✿ Mẹo từ florist chuyên nghiệp BloomStore',
        },
        {
            title: 'Shop hoa tươi Bình Thạnh — Đặt hoa online giao tận nơi',
            slug: 'shop-hoa-tuoi-binh-thanh',
            excerpt: 'Shop hoa tươi Bình Thạnh — BloomStore. Đặt hoa online dễ dàng, giao hoa tận nơi trong 90 phút. Hoa sinh nhật, hoa chúc mừng, hoa chia buồn.',
            content: `<h2>Shop hoa tươi Bình Thạnh</h2>\n<p>Bạn đang tìm <strong>shop hoa tươi uy tín tại quận Bình Thạnh</strong>? BloomStore phục vụ giao hoa tận nơi đến tất cả các phường trong quận Bình Thạnh và khu vực lân cận.</p>\n<h3>Khu vực giao hoa tại Bình Thạnh</h3>\n<ul>\n<li>Phường 1, 2, 3, 5, 6, 7 — Giao trong 60 phút</li>\n<li>Phường 11, 12, 13, 14, 15 — Giao trong 90 phút</li>\n<li>Khu vực Hàng Xanh, Bạch Đằng, Điện Biên Phủ</li>\n<li>Gần các bệnh viện, trường đại học lớn</li>\n</ul>\n<h3>Các loại hoa được yêu thích</h3>\n<p>Khách hàng tại Bình Thạnh thường đặt hoa sinh nhật, hoa khai trương, hoa tốt nghiệp. Mùa Valentine và 8/3, nhu cầu hoa hồng tăng cao.</p>\n<p><strong>Đặt hoa ngay:</strong> 0123 456 789 hoặc đặt online tại website.</p>`,
            thumbnailUrl: 'https://images.unsplash.com/photo-1562932831-afcfe735e9d5?w=800&h=500&fit=crop',
            tags: ['Bình Thạnh', 'hoa tươi', 'giao hoa', 'đặt hoa online', 'TP.HCM'],
            isPublished: true,
            publishedAt: new Date(now.getTime() - 7 * 24 * 3600000),
            metaTitle: 'Shop Hoa Tươi Bình Thạnh | Đặt Hoa Online Giao Tận Nơi | BloomStore',
            metaDescription: 'Shop hoa tươi Bình Thạnh ✿ Giao hoa tận nơi trong 90 phút ✿ Hoa sinh nhật, hoa chúc mừng, hoa chia buồn ✿ Đặt online dễ dàng ✿ BloomStore',
        },
        {
            title: 'Top 10 loại hoa tặng sinh nhật ý nghĩa nhất 2025',
            slug: 'top-10-hoa-tang-sinh-nhat-y-nghia-nhat',
            excerpt: 'Bạn đang phân vân không biết tặng hoa gì cho sinh nhật? Tham khảo top 10 loại hoa tặng sinh nhật ý nghĩa, phù hợp với từng đối tượng.',
            content: `<h2>Top 10 loại hoa tặng sinh nhật ý nghĩa</h2>\n<p>Hoa là món quà sinh nhật không bao giờ lỗi thời. Mỗi loại hoa mang một ý nghĩa riêng, hãy chọn đúng loại hoa phù hợp với người nhận.</p>\n<h3>1. Hoa hồng đỏ</h3><p>Biểu tượng tình yêu, phù hợp tặng người yêu, vợ/chồng.</p>\n<h3>2. Hoa hướng dương</h3><p>Tượng trưng cho sự lạc quan, phù hợp tặng bạn bè, đồng nghiệp.</p>\n<h3>3. Hoa ly</h3><p>Sang trọng, quý phái — tặng sếp, đối tác hoặc bố mẹ.</p>\n<h3>4. Hoa tulip</h3><p>Nhẹ nhàng, thanh lịch — phù hợp tặng bạn gái, cô giáo.</p>\n<h3>5. Hoa cúc</h3><p>Tươi vui, rạng rỡ — tặng mẹ, bà hoặc người lớn tuổi.</p>\n<h3>6. Hoa lan hồ điệp</h3><p>Cao quý, phú quý — tặng sếp, đối tác kinh doanh.</p>\n<h3>7. Hoa lavender</h3><p>Lãng mạn, nhẹ nhàng — tặng bạn gái thích sự đơn giản.</p>\n<h3>8. Hoa cẩm chướng</h3><p>Biết ơn, yêu thương — tặng mẹ nhân dịp sinh nhật.</p>\n<h3>9. Hoa baby breath</h3><p>Tinh khôi, dễ thương — phù hợp với cô gái trẻ.</p>\n<h3>10. Hoa mix nhiều loại</h3><p>Đa dạng, rực rỡ — phù hợp khi không biết người nhận thích loại nào.</p>\n<p><em>Xem thêm bộ sưu tập hoa sinh nhật tại BloomStore!</em></p>`,
            thumbnailUrl: 'https://images.unsplash.com/photo-1508610048659-a06b669e3321?w=800&h=500&fit=crop',
            tags: ['hoa sinh nhật', 'hướng dẫn', 'ý nghĩa hoa', 'quà tặng', 'top 10'],
            isPublished: true,
            publishedAt: new Date(now.getTime() - 10 * 24 * 3600000),
            metaTitle: 'Top 10 Loại Hoa Tặng Sinh Nhật Ý Nghĩa Nhất 2025 | BloomStore',
            metaDescription: 'Top 10 loại hoa tặng sinh nhật ý nghĩa nhất ✿ Hoa hồng, hướng dương, ly, tulip ✿ Phù hợp từng đối tượng ✿ Đặt hoa online tại BloomStore',
        },
        {
            title: 'Giao hoa tận nơi Thủ Đức — Nhanh chóng, chuyên nghiệp',
            slug: 'giao-hoa-tan-noi-thu-duc',
            excerpt: 'Dịch vụ giao hoa tận nơi tại TP. Thủ Đức. BloomStore giao hoa nhanh đến các khu vực Thảo Điền, Bình Chiểu, Hiệp Bình, Linh Trung và toàn bộ Thủ Đức.',
            content: `<h2>Giao hoa tận nơi TP. Thủ Đức</h2>\n<p><strong>TP. Thủ Đức</strong> là khu vực phát triển nhanh nhất TP.HCM. BloomStore cung cấp dịch vụ giao hoa chuyên nghiệp đến mọi địa chỉ trong Thủ Đức.</p>\n<h3>Khu vực phục vụ</h3>\n<ul>\n<li>Thảo Điền, An Phú, An Khánh — Giao trong 45 phút</li>\n<li>Bình Chiểu, Hiệp Bình, Tam Bình — Giao trong 60 phút</li>\n<li>Linh Trung, Linh Xuân (gần ĐH Quốc Gia) — Giao trong 75 phút</li>\n<li>Khu công nghệ cao, Suối Tiên — Giao trong 90 phút</li>\n</ul>\n<h3>Dịp nào nên đặt hoa?</h3>\n<p>Sinh nhật, kỷ niệm, khai trương, chúc mừng tân gia, thăm bệnh nhân... BloomStore có hoa cho mọi dịp.</p>\n<h3>Cam kết</h3>\n<ul>\n<li>Hoa tươi 100%, cam kết đổi nếu không hài lòng</li>\n<li>Giao đúng giờ hoặc miễn phí giao hàng</li>\n<li>Hỗ trợ 24/7 qua hotline và Zalo</li>\n</ul>`,
            thumbnailUrl: 'https://images.unsplash.com/photo-1469371670807-013ccf25f16a?w=800&h=500&fit=crop',
            tags: ['Thủ Đức', 'giao hoa', 'hoa tươi', 'TP.HCM', 'giao tận nơi'],
            isPublished: true,
            publishedAt: new Date(now.getTime() - 12 * 24 * 3600000),
            metaTitle: 'Giao Hoa Tận Nơi Thủ Đức | Nhanh 45 Phút | BloomStore',
            metaDescription: 'Giao hoa tận nơi TP. Thủ Đức ✿ Thảo Điền, Bình Chiểu, Hiệp Bình, Linh Trung ✿ Giao nhanh 45-90 phút ✿ Hoa tươi 100% ✿ BloomStore',
        },
    ];
    await postRepo.save(postsData.map(p => postRepo.create(p)));
    console.log(`  ✓ ${postsData.length} blog posts`);

    console.log('✅ Seeding complete!');
    await app.close();
}

seed().catch((err) => {
    console.error('❌ Seed failed:', err);
    process.exit(1);
});
