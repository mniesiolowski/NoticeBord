package com.example.bord.web;

import com.example.bord.entity.Comment;
import com.example.bord.repository.PostRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class CommentController {
    private final PostRepository postRepository;

    public CommentController(PostRepository postRepository) {
        this.postRepository = postRepository;
    }

    @PostMapping("/add-comment{id}")
    public String addComment(Model model, @PathVariable Long id) {
        model.addAttribute("comment", new Comment());
        return "user/add";
    }

}