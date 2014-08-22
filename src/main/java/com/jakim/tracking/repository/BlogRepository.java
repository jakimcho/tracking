package com.jakim.tracking.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.jakim.tracking.entities.Blog;
import com.jakim.tracking.entities.User;


public interface BlogRepository extends JpaRepository<Blog, Integer> {
	
	public List<Blog> findByUser(User user); // Spring jpa will provide implementation for this method

}
