package com.example.bord.web;

import com.example.bord.entity.Category;
import com.example.bord.entity.Comment;
import com.example.bord.entity.Post;
import com.example.bord.entity.User;
import com.example.bord.repository.CategoryRepository;
import com.example.bord.repository.CommentRepository;
import com.example.bord.repository.PostRepository;
import com.example.bord.repository.UserRepository;
import com.example.bord.service.CurrentUser;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;
import java.util.List;

@Controller
public class PostController {
    private final PostRepository postRepository;
    private final UserRepository userRepository;
    private final CategoryRepository categoryRepository;
    private final CommentRepository commentRepository;

    public PostController(PostRepository postRepository, UserRepository userRepository, CategoryRepository categoryRepository, CommentRepository commentRepository) {
        this.postRepository = postRepository;
        this.userRepository = userRepository;
        this.categoryRepository = categoryRepository;
        this.commentRepository = commentRepository;
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
    public String addUserModel(@ModelAttribute @Valid Post post, BindingResult result, @AuthenticationPrincipal CurrentUser customUser) {
        User user = customUser.getUser();
        if (result.hasErrors()) {
            return "post/add";
        } else
            post.setUser(user);
        post.setCreated(LocalDateTime.now());
        post.setExpires(LocalDateTime.now().plus(4, ChronoUnit.WEEKS));
        postRepository.save(post);
        return "redirect:/";
    }
//    @RequestMapping(value={"/show-item{id}"} , method=RequestMethod.GET)
//    public String showitem(Model model,@PathVariable("id") long id) {
//        Post post = postRepository.findOne(id);
//        model.addAttribute("post", post);
//        return "post/item";
//    }
//}

    @GetMapping("/show-item{id}")
    public String showitem(Model model, @PathVariable long id) {
        Post post = postRepository.findOne(id);
        model.addAttribute("post", post);
        return "/post/item";
    }
    @GetMapping("/info-user")
    public String infoUser(Model model, @AuthenticationPrincipal CurrentUser customUser) {
        User user = customUser.getUser();
        List<Post> posts = postRepository.findByUser(user);
        model.addAttribute("user", user);
        model.addAttribute("post", posts);
        return "user/info";
    }
    @GetMapping("/post-{id}")
    public String showPost(Model model,@PathVariable Long id) {
        Category category = categoryRepository.findById(id);
        List<Post> posts = postRepository.findByCategory(category);
        model.addAttribute("post", posts);
        return "post/search";
    }
}