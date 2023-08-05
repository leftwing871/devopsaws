package com.seeyouat.app.Controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@Slf4j
public class HomeController {
    @RequestMapping(value = "/", method= RequestMethod.GET)
    public String index(HttpServletRequest request, HttpServletResponse response)
    {
        return "index";
    }
}
