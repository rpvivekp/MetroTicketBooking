package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.Station;

public interface StationRepository extends JpaRepository<Station,Integer>{

}