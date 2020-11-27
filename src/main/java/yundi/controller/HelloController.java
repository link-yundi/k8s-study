package yundi.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @GetMapping("/")
    public String index() {
        return "current version: v2";
    }

    @GetMapping("/hello")
    public String hello() {
        return "Hello, k8s";
    }

}
