package neu.soft.edu.payservice.feign;

import neu.soft.edu.payservice.feign.pojo.Order;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@FeignClient("order-service")
public interface OrderClient {
    @PostMapping("/order/add")
    public Boolean addOrder(@RequestBody Order order);
}
