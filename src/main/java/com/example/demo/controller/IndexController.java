package com.example.demo.controller;

import com.example.demo.dao.impl.UserDao;
import com.example.demo.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
public class IndexController {

    @RequestMapping(value = "/index",method = {RequestMethod.GET,RequestMethod.POST})
    public String index(HttpServletRequest request, Model model){
        User user = UserDao.instance.repository.getOne(1);
      return "index";
    }

    @RequestMapping(value = "/login",method = {RequestMethod.GET,RequestMethod.POST})
    public String login(HttpServletRequest request, Model model){
        User user = UserDao.instance.repository.getOne(1);
        return "login";
    }

    @RequestMapping(value = "/menu",method = {RequestMethod.GET,RequestMethod.POST})
    public String menu(HttpServletRequest request, Model model){
        User user = UserDao.instance.repository.getOne(1);
        return "menu";
    }
}
