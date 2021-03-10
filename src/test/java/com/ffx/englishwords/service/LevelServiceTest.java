package com.ffx.englishwords.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.ffx.englishwords.domain.Level;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.util.Assert;

import java.util.List;

/*当涉及Spring时：则必须使用@ExtendWith(SpringExtension.class)
当不涉及Spring时：@ExtendWith(MockitoExtension.class)*/
@ExtendWith(SpringExtension.class)
//SpringBoot1.4版本之前用的是@SpringApplicationConfiguration(classes = Application.class)
@SpringBootTest
@WebAppConfiguration
class LevelServiceTest {
    @Autowired
    private LevelService levelService;

    @Test
    public void saveTest(){
        levelService.save(new Level("1","初中"));
        levelService.save(new Level("2","高中"));
        levelService.save(new Level("3","四级"));
        levelService.save(new Level("4","六级"));
    }

    @Test
    public void queryAll(){
        List<Level> list = levelService.list(new QueryWrapper<>());
        System.out.println(list);
        Assert.notEmpty(list,"哈哈哈哈");
    }
}