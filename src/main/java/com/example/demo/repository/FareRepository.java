package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.Fare;

public interface FareRepository extends JpaRepository<Fare,Integer>{

}