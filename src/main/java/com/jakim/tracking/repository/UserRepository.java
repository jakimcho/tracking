package com.jakim.tracking.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.jakim.tracking.entities.User;


public interface UserRepository extends JpaRepository<User, Integer> {

}
