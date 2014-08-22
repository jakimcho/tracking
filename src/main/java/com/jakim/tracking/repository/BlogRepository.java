package com.jakim.tracking.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.jakim.tracking.entities.Blog;


public interface BlogRepository extends JpaRepository<Blog, Integer> {

}
