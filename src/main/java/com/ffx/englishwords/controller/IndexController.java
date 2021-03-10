package com.ffx.englishwords.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexController {
    @RequestMapping(
            value = "/",
            method = RequestMethod.GET,
            produces = "application/json;charset=UTF-8")
    public String index() {
        return "index";
    }

    @RequestMapping(
            value = "/upload",
            method = RequestMethod.GET,
            produces = "application/json;charset=UTF-8")
    public String upload() {
        return "upload";
    }
}
