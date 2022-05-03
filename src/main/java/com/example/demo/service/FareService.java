package com.example.demo.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Fare;
import com.example.demo.model.Fare;
import com.example.demo.repository.FareRepository;

@Service
public class FareService {

	@Autowired
	private FareRepository repo;
	
	public void save(Fare fare)
	{
		repo.save(fare);
	}
	
	public List<Fare> findAll()
	{
		return repo.findAll();
	}
	
	public Fare findById(int id)
	{
		return repo.findById(id).get();
	}
	
	public void delete(int id)
	{
		repo.deleteById(id);
	}
	
	public int getFareBySourceAndDestination(String source,String destination,String type)
	{
		int amt=0;
		
		for (Fare fare: repo.findAll())
		{
			if(fare.getSource().equals(source) && fare.getDestination().equals(destination) && fare.getType().equals(type))
			{
				amt=fare.getAmount();
				break;
			}
		}
		
		return amt;
	}
}
