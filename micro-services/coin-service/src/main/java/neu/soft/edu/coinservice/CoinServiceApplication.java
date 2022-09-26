package neu.soft.edu.coinservice;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;

@SpringBootApplication
@EnableFeignClients
public class CoinServiceApplication {

    public static void main(String[] args) {
        SpringApplication.run(CoinServiceApplication.class, args);
    }

}
