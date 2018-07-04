package com.example.bord.web;

import com.example.bord.entity.*;
import com.example.bord.repository.CategoryRepository;
import com.example.bord.repository.CommentRepository;
import com.example.bord.repository.PostRepository;
import com.example.bord.repository.UserRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;


@Controller
public class TestController {
    private final PostRepository postRepository;
    private final CategoryRepository categoryRepository;
    private final UserRepository userRepository;
    private final CommentRepository commentRepository;

    public TestController(PostRepository postRepository, CategoryRepository categoryRepository, UserRepository userRepository, CommentRepository commentRepository) {
        this.postRepository = postRepository;
        this.categoryRepository = categoryRepository;
        this.userRepository = userRepository;
        this.commentRepository = commentRepository;
    }

    @ModelAttribute("post")
    List<Post> allPosts() {
        return postRepository.findAll();
    }

    @ModelAttribute("category")
    List<Category> allCategories() {
        return categoryRepository.findAll();
    }

    @ModelAttribute("user")
    List<User> allUsers() {
        return userRepository.findAll();
    }

    @ModelAttribute("comments")
    List<Comment> allComments() {
        return commentRepository.findAll();
    }

    @GetMapping("/")

    public String addTest(Model model) {

        model.addAttribute("test", new Test());

        return "start1";
    }


}

