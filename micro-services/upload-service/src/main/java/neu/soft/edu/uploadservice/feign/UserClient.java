package neu.soft.edu.uploadservice.feign;

import neu.soft.edu.uploadservice.feign.pojo.User;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;

@FeignClient(value = "user-service")
public interface UserClient {

    @PutMapping("/user/update")
    public Boolean updateUser(@RequestBody User user);
}
