package com.jakim.tracking.repository;


import org.springframework.data.jpa.repository.JpaRepository;

import com.jakim.tracking.entities.Role;


public interface RoleRepository extends JpaRepository<Role, Integer> {

}
