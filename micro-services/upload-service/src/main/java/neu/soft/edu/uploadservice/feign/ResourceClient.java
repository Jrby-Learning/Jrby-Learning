package neu.soft.edu.uploadservice.feign;

import neu.soft.edu.uploadservice.feign.pojo.ResourceList;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@FeignClient("resource-service")
public interface ResourceClient {
    @GetMapping("/resource/query/{resourceId}")
    public ResourceList queryResourceById(@PathVariable int resourceId);
}
