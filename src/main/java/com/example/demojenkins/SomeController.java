package com.example.demojenkins;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController("/")
public class SomeController {

    @GetMapping("/name")
    public String getStringText() {
        return "My name";
    }

    @GetMapping("/hello")
    public String getHelloText() {
        return "Hello";
    }
}
