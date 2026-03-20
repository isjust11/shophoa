import React from 'react';
import { usePageTitle } from '../hooks/usePageTitle';
import PageHeader from '../components/PageHeader';

const ShippingPolicy = () => {
  usePageTitle('Chính sách giao hàng');

  return (
    <>
      <PageHeader
        title="Chính sách giao hàng"
        subtitle="Thông tin về chính sách giao hàng và vận chuyển"
        breadcrumb={[
          { text: 'Trang chủ', link: '/' },
          { text: 'Chính sách giao hàng' }
        ]}
      />

      <section className="support-page">
        <div className="container">
          <div className="support-content">
            <p className="support-intro">
              Dưới đây là chính sách giao hàng và vận chuyển của Hoa Tháng Năm nhằm đảm bảo quyền lợi và sự hài lòng của quý khách hàng.
            </p>

            <div className="support-section">
              <h2><span className="section-num">1</span> Thông tin giao hàng</h2>
              <p>
                Khách hàng vui lòng cung cấp đầy đủ và chính xác thông tin giao hoa để đơn hàng được thực hiện nhanh chóng và đúng yêu cầu. Thông tin cần cung cấp gồm:
              </p>
              <ul>
                <li>Tên người đặt hoa và số điện thoại liên hệ</li>
                <li>Tên người nhận hoa và số điện thoại liên hệ</li>
                <li>Địa chỉ giao hoa chi tiết (số nhà, đường, phường/xã, quận/huyện, tỉnh/thành phố)</li>
              </ul>
              <div className="support-note">
                <i className="fas fa-info-circle"></i>
                <div>
                  <p>Trong trường hợp giao hoa đến địa chỉ khách hàng đã cung cấp nhưng không có người nhận, chúng tôi sẽ mang hoa về và bảo quản tại cửa hàng trong vòng 24 giờ kể từ thời điểm giao theo yêu cầu.</p>
                  <p>Sau thời gian này, mọi khiếu nại liên quan đến chất lượng hoa sẽ không được giải quyết, do hoa tươi có thời gian bảo quản giới hạn.</p>
                </div>
              </div>
            </div>

            <div className="support-section">
              <h2><span className="section-num">2</span> Thời gian giao hàng</h2>
              <p>
                Hoa Tháng Năm cam kết sẽ tiến hành giao hoa đúng thời gian và địa điểm theo thông tin khách hàng cung cấp đối với các đơn hàng đặt trước.
              </p>
              <p>
                Với những đơn hàng giao gấp, chúng tôi sẽ thông báo trước cho khách hàng nếu có sự thay đổi về thời gian hoặc mẫu hoa.
              </p>
              <p>
                Nếu khách hàng muốn thay đổi địa chỉ hoặc thời gian giao sau khi đã đặt đơn, vui lòng liên hệ sớm để được hỗ trợ và đảm bảo cho việc giao nhận hoa.
              </p>
            </div>

            <div className="support-section">
              <h2><span className="section-num">3</span> Chi phí giao hàng</h2>
              <p>Cửa hàng hỗ trợ giao hoa tận nơi với chính sách vận chuyển linh hoạt:</p>
              <ul>
                <li><strong>Miễn phí</strong> giao hoa tại các khu vực trung tâm và nội thành.</li>
                <li><strong>Miễn phí</strong> vận chuyển đối với các đơn hàng có giá trị cao hoặc đặt trước vào các dịp đặc biệt.</li>
                <li>Đối với các khu vực ngoại thành, vùng xa trung tâm, thôn/xã — chi phí giao hàng phát sinh sẽ được thông báo cụ thể trước khi xác nhận đơn.</li>
                <li>Với các đơn hàng cần giao gấp hoặc vào khung giờ cao điểm, Hoa Tháng Năm sẽ thông báo chi phí phát sinh đến khách hàng khi sử dụng dịch vụ vận chuyển bên ngoài.</li>
              </ul>
            </div>
          </div>
        </div>
      </section>
    </>
  );
};

export default ShippingPolicy;
