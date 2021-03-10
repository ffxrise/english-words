package com.ffx.englishwords.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.ffx.englishwords.domain.Level;
import com.ffx.englishwords.service.LevelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author ffx
 * @since 2021-03-10
 */
@RestController
@RequestMapping("/level")
public class LevelController {

    @Autowired
    private LevelService levelService;
    @GetMapping(value = "/getAll")
    public List<Level> getAll(){
        return levelService.list(new QueryWrapper<>());
    }
}
