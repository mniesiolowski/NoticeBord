package com.example.bord.web;

import com.example.bord.entity.User;
import com.example.bord.repository.UserRepository;
import com.example.bord.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;

@Controller
public class UserController {

    private final UserRepository userRepository;
    private final UserService saveUser;

    public UserController(UserRepository userRepository, UserService saveUser) {
        this.userRepository = userRepository;
        this.saveUser = saveUser;
    }

    @GetMapping("/registration")
    public String addUser(Model model) {
        model.addAttribute("user", new User());
        return "user/add";
    }

    @PostMapping("/registration")
    public String addUserModel(@ModelAttribute @Valid User user, BindingResult result) {
        if (result.hasErrors()) {
            return "user/add";
        } else
            saveUser.saveUser(user);
        return "redirect:/";
    }
}