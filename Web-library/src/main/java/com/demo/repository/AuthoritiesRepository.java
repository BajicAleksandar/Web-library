package com.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.demo.entity.Authorities;

public interface AuthoritiesRepository extends JpaRepository<Authorities, Integer> {

}
