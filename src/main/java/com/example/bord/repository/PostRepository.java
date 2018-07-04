package com.example.bord.repository;

import com.example.bord.entity.Post;
import com.example.bord.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface PostRepository extends JpaRepository<Post,Long> {
    List<Post> findByUser(User user);
}
