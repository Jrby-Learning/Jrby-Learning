package com.neusoftedu.admin.util.tools;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class PropertiesUtil {
    private static final String UPLOAD_URL;
    private static final String ADDRESS;

    static {
        Properties properties = new Properties();
        InputStream inputStream = PropertiesUtil.class.getClassLoader().getResourceAsStream("config.properties");
        try {
            properties.load(inputStream);
        } catch (IOException e) {
            System.out.println("config.properties was not found");
        }
        UPLOAD_URL = System.getProperty("user.dir") + "/upload/";
        ADDRESS = (String) properties.get("address");
    }

    public static String getUploadUrl() {
        return UPLOAD_URL;
    }

    public static String getAddress() {
        return ADDRESS;
    }

}