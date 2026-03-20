import React, { useState } from 'react';
import { usePageTitle } from '../hooks/usePageTitle';
import PageHeader from '../components/PageHeader';

const FAQ = () => {
  usePageTitle('Câu hỏi thường gặp');
  const [openIndex, setOpenIndex] = useState(null);

  const faqs = [
    {
      q: 'Cách thức đặt hoa tại Hoa Tháng Năm?',
      a: `Quý khách hàng có thể sử dụng dịch vụ điện hoa bằng các hình thức sau:
• Đặt hoa trực tiếp trên Website
• Liên hệ qua Tổng đài tư vấn và hỗ trợ đặt hoa: 039 262 1101
• Liên hệ qua Email: hoathangnam1@gmail.com
• Liên hệ qua Zalo: 039 262 1101
• Liên hệ qua Fanpage Facebook: facebook.com/thangnamflower
• Liên hệ qua Instagram: instagram.com/thangnamflower`
    },
    {
      q: 'Thời gian đặt và giao hoa?',
      a: `Để Hoa Tháng Năm có thể chuẩn bị hoa và thiết kế sản phẩm một cách chỉn chu nhất, khuyến khích bạn nên đặt hoa trước ít nhất 24h so với thời gian cần giao.

Trong trường hợp cần giao hoa gấp, chúng tôi vẫn cố gắng hỗ trợ tùy theo thời điểm và khu vực giao hàng. Nếu có phát sinh về thời gian chuẩn bị hoặc vận chuyển, chúng tôi sẽ chủ động thông báo và trao đổi với khách hàng trước khi xác nhận đơn hàng.

Hoa Tháng Năm luôn nỗ lực sắp xếp để giao hoa đúng địa điểm và thời gian yêu cầu, mang đến trải nghiệm thuận tiện và hài lòng nhất cho khách hàng.`
    },
    {
      q: 'Có xuất hóa đơn VAT không?',
      a: 'Hoa Tháng Năm có xuất hóa đơn VAT cho khách hàng, công ty có nhu cầu. Phí xuất hóa đơn là 8% trên tổng đơn hàng.'
    },
    {
      q: 'Có cam kết sẽ giao hoa đúng mẫu không?',
      a: `Hoa tươi là sản phẩm tự nhiên, mang tính nghệ thuật và thủ công, vì vậy thành phẩm thực tế có thể đạt khoảng 80–90% so với hình ảnh mẫu.

Mỗi thiết kế được thực hiện thủ công, nên các chi tiết có thể khác nhau nhưng chúng tôi sẽ cố gắng theo đúng phong cách của mẫu.

Một số loại hoa, lá phụ hoặc phụ kiện có thể được thay thế tương đương theo mùa hoặc nguồn hoa, phụ kiện tại thời điểm thực hiện, đảm bảo tổng thể hài hòa.

Màu sắc hoa ngoài thực tế có thể chênh lệch nhẹ so với hình ảnh do điều kiện ánh sáng, góc chụp và thiết bị hiển thị khác nhau.

Hoa Tháng Năm sẽ gửi hình ảnh sản phẩm thực tế cho khách hàng xác nhận trước khi tiến hành giao hoa.`
    },
    {
      q: 'Làm thế nào để xác nhận hoa được làm và giao đúng địa điểm?',
      a: `– Chúng tôi sẽ gửi ảnh cho bạn trước và sau khi giao hoa.
– Bạn có thể liên lạc với người nhận và yêu cầu chụp hình để xác nhận.`
    },
    {
      q: 'Giao hoa có tính phí vận chuyển không?',
      a: `– Hoa Tháng Năm hỗ trợ giao hoa miễn phí tại các khu vực nội thành, giúp khách hàng thuận tiện gửi hoa đến người nhận một cách nhanh chóng.
– Đối với các khu vực ngoại thành, vùng xa trung tâm, thôn/xã…, chi phí vận chuyển phát sinh (nếu có) sẽ được thông báo cụ thể đến khách hàng trước khi xác nhận đơn hàng.`
    }
  ];

  const toggle = (i) => setOpenIndex(openIndex === i ? null : i);

  return (
    <>
      <PageHeader
        title="Câu hỏi thường gặp"
        subtitle="Giải đáp những thắc mắc phổ biến về dịch vụ của chúng tôi"
        breadcrumb={[
          { text: 'Trang chủ', link: '/' },
          { text: 'Câu hỏi thường gặp' }
        ]}
      />

      <section className="support-page">
        <div className="container">
          <div className="faq-list">
            {faqs.map((faq, i) => (
              <div key={i} className={`faq-item ${openIndex === i ? 'open' : ''}`}>
                <button className="faq-question" onClick={() => toggle(i)}>
                  <span className="faq-num">{i + 1}</span>
                  <span>{faq.q}</span>
                  <i className={`fas fa-chevron-down faq-arrow`}></i>
                </button>
                <div className="faq-answer">
                  <div className="faq-answer-inner">
                    {faq.a.split('\n').map((line, j) => (
                      <p key={j}>{line}</p>
                    ))}
                  </div>
                </div>
              </div>
            ))}
          </div>
        </div>
      </section>
    </>
  );
};

export default FAQ;
