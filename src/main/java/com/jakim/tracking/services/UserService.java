package com.jakim.tracking.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Service;

import com.jakim.tracking.entities.Blog;
import com.jakim.tracking.entities.Item;
import com.jakim.tracking.entities.User;
import com.jakim.tracking.repository.BlogRepository;
import com.jakim.tracking.repository.ItemRepository;
import com.jakim.tracking.repository.UserRepository;

@Service
@Transactional
public class UserService {
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private BlogRepository blogRepository;
	
	@Autowired
	private ItemRepository itemRepository;

	public List<User> findAll() {
		return this.userRepository.findAll();
	}

	public User findOne(int userId) {
		return this.userRepository.findOne(userId);
	}

	//	This method solves the Lazy initialization issue when displaying user items
	@Transactional
	public User findOneWithBlogs(int userId) {
		User user = findOne(userId);
		List<Blog> blogs = this.blogRepository.findByUser(user);
		
		for (Blog blog : blogs){
			List<Item> items = this.itemRepository.findByBlog(blog, new PageRequest(0,  10, Direction.DESC, "publishDate"));
			blog.setItems(items);
		}
		
		user.setBlogs(blogs);
		return user;
	}

	public void save(User user) {
		this.userRepository.save(user);
	}
}
