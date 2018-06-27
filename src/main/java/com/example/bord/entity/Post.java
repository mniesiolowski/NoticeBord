package com.example.bord.entity;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.List;

@Entity
public class Post {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String title;
    private String descreption;
    private LocalDateTime created;
    private LocalDateTime expires;
    @ManyToOne
    private User user;
    @OneToMany
    private List<Comment> comments;

}