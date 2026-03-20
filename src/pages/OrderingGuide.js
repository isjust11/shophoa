import React from 'react';
import { usePageTitle } from '../hooks/usePageTitle';
import PageHeader from '../components/PageHeader';

const OrderingGuide = () => {
  usePageTitle('Hướng dẫn đặt hàng');

  const steps = [
    {
      num: 1,
      title: 'Lựa chọn mẫu hoa',
      icon: 'fas fa-search',
      desc: 'Quý khách tham khảo và lựa chọn mẫu trên website hoặc liên hệ Hotline/ Fanpage Facebook để được tư vấn, thiết kế mẫu hoa phù hợp với nhu cầu và yêu cầu riêng.'
    },
    {
      num: 2,
      title: 'Xác nhận đơn hàng & Thanh toán',
      icon: 'fas fa-credit-card',
      desc: 'Sau khi chốt mẫu và thông tin đơn hàng, quý khách vui lòng thanh toán theo các phương thức mà shop hỗ trợ để xác nhận đơn hàng.'
    },
    {
      num: 3,
      title: 'Hoàn thiện sản phẩm',
      icon: 'fas fa-paint-brush',
      desc: 'Chúng tôi sẽ chuẩn bị và hoàn thiện hoa theo mẫu đã chọn. Hình ảnh thành phẩm sẽ được gửi trước để khách hàng kiểm tra và điều chỉnh phù hợp theo nhu cầu.'
    },
    {
      num: 4,
      title: 'Giao hoa tận nơi',
      icon: 'fas fa-truck',
      desc: 'Hoa được giao đến đúng địa chỉ và thời gian theo yêu cầu. Sau khi giao hàng thành công, chúng tôi sẽ gửi thông báo xác nhận đến quý khách.'
    }
  ];

  return (
    <>
      <PageHeader
        title="Hướng dẫn đặt hàng"
        subtitle="4 bước đơn giản để sở hữu bó hoa tươi đẹp"
        breadcrumb={[
          { text: 'Trang chủ', link: '/' },
          { text: 'Hướng dẫn đặt hàng' }
        ]}
      />

      <section className="support-page">
        <div className="container">
          <div className="ordering-steps">
            {steps.map((step) => (
              <div key={step.num} className="ordering-step">
                <div className="step-icon-wrap">
                  <div className="step-number">{step.num}</div>
                  <div className="step-icon"><i className={step.icon}></i></div>
                </div>
                <div className="step-content">
                  <h3>Bước {step.num} — {step.title}</h3>
                  <p>{step.desc}</p>
                </div>
              </div>
            ))}
          </div>
        </div>
      </section>
    </>
  );
};

export default OrderingGuide;
