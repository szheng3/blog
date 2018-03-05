package com.shuai.blog.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BlogController {

        @GetMapping("/")
        public String blog(){

                return "index";
        }

}
