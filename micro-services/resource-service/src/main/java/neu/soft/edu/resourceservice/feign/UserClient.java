package neu.soft.edu.resourceservice.feign;


import neu.soft.edu.resourceservice.feign.pojo.User;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;

@FeignClient(value = "user-service")
public interface UserClient {

    @PutMapping("/user/update")
    public Boolean updateUser(@RequestBody User user);
}
