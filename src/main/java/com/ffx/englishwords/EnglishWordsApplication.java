package com.ffx.englishwords;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.ffx.englishwords.dao")
public class EnglishWordsApplication {

    public static void main(String[] args) {
        SpringApplication.run(EnglishWordsApplication.class, args);
    }
}
