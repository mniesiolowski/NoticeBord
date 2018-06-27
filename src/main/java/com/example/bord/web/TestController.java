package com.example.bord.web;

import com.example.bord.entity.Test;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class TestController {

    @GetMapping("/")

    public String addTest(Model model) {

        model.addAttribute("test", new Test());

        return "start";
    }
    @GetMapping("/login")

    public String login(Model model) {

        model.addAttribute("test", new Test());

        return "login";
    }
}

