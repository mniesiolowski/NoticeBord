package com.example.bord.repository;

import com.example.bord.entity.Comment;
import com.example.bord.entity.Post;
import javafx.geometry.Pos;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CommentRepository extends JpaRepository<Comment,Long> {

    List<Comment> findByPost(Post post);
}
