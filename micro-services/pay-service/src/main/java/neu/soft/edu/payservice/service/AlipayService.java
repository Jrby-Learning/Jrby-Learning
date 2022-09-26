package neu.soft.edu.payservice.service;

import com.alipay.api.AlipayApiException;

public interface AlipayService {
    String create(String orderId, String orderName, String payPrice);
    void refund(String orderId, String payPrice) throws AlipayApiException;
}