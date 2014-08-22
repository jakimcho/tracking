package com.jakim.tracking.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.jakim.tracking.entities.Blog;
import com.jakim.tracking.entities.Item;


public interface ItemRepository extends JpaRepository<Item, Integer> {
	
	public List<Item> findByBlog(Blog blog); // Spring jpa will provide implementation for this method

}
