package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Route;
import com.example.demo.repository.RouteRepository;

@Service
public class RouteService {

	@Autowired
	private RouteRepository repo;
	
	public void save(Route route)
	{
		repo.save(route);
	}
	
	public List<Route> findAll()
	{
		return repo.findAll();
	}
	
	public Route findById(int id)
	{
		return repo.findById(id).get();
	}
	
	public void delete(int id)
	{
		repo.deleteById(id);
	}
}
