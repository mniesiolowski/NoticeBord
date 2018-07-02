package com.example.bord.web;

import com.example.bord.entity.Category;
import com.example.bord.entity.Post;
import com.example.bord.entity.User;
import com.example.bord.repository.CategoryRepository;
import com.example.bord.repository.PostRepository;
import com.example.bord.repository.UserRepository;
import com.example.bord.service.CurrentUser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;
import java.util.List;

@Controller
public class PostController {
    private final PostRepository postRepository;
    private final UserRepository userRepository;
    private final CategoryRepository categoryRepository;

    public PostController(PostRepository postRepository, UserRepository userRepository, CategoryRepository categoryRepository) {
        this.postRepository = postRepository;
        this.userRepository = userRepository;
        this.categoryRepository = categoryRepository;
    }


    @ModelAttribute("categories")
    List<Category> getAllCategory() {
        return categoryRepository.findAll();
    }
    @GetMapping("/addpost")
    public String addUser(Model model) {
        model.addAttribute("post", new Post());
        return "post/add";
    }

    @PostMapping("/addpost")
    public String addUserModel(@ModelAttribute @Valid Post post, BindingResult result , CurrentUser currentUser) {
        User entityUser = currentUser.getUser();
        if (result.hasErrors()) {
            return "post/add";
        } else
            post.setUser(entityUser);
        postRepository.save(post);
        return "redirect:/";
    }
}
