package com.example.fwtestproject.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MainController {
    @RequestMapping("/fw/hw")
    public String hello(){
        return "Hello World!";
    }

}
