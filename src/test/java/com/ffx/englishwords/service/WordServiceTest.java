//package com.ffx.englishwords.service;
//
//
//import com.ffx.englishwords.domain.Word;
//import org.junit.jupiter.api.Test;
//import org.junit.jupiter.api.extension.ExtendWith;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.boot.test.context.SpringBootTest;
//import org.springframework.test.context.junit.jupiter.SpringExtension;
//import org.springframework.test.context.web.WebAppConfiguration;
//
///*当涉及Spring时：则必须使用@ExtendWith(SpringExtension.class)
//当不涉及Spring时：@ExtendWith(MockitoExtension.class)*/
//@ExtendWith(SpringExtension.class)
////SpringBoot1.4版本之前用的是@SpringApplicationConfiguration(classes = Application.class)
//@SpringBootTest
//@WebAppConfiguration
//public class WordServiceTest {
//
//    @Autowired
//    private WordService wordService;
//
//    @Test
//    public void saveTest(){
//        Word word = new Word();
//        word.setWord("a");
//        wordService.save(word);
//    }
//}