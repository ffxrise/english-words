package com.ffx.englishwords.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.ffx.englishwords.domain.RootAffix;
import com.ffx.englishwords.service.RootAffixService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
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
@RequestMapping("/rootAffix")
public class RootAffixController {

    @Autowired
    private RootAffixService rootAffixService;

    @GetMapping(value = "/queryByWord/{word}")
    public List<RootAffix> queryByWord(@PathVariable String word){

        rootAffix.setWord(word);
        List<RootAffix> list = new ArrayList<>();
        RootAffix rootAffix = new RootAffix();
                rootAffixService.list(new QueryWrapper<>(rootAffix));
        rootAffix = new RootAffix();
        rootAffix.setId(0);
        rootAffix.setMean("创建新词根词缀");
        list.add()
    }
}
