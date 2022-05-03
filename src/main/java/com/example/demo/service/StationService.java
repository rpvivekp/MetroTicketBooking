package com.example.demo.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Station;
import com.example.demo.repository.StationRepository;

@Service
public class StationService {

	@Autowired
	private StationRepository repo;
	
	public void save(Station station)
	{
		repo.save(station);
	}
	
	public List<Station> findAll()
	{
		return repo.findAll();
	}
	
	public List<Station> findByRouteId(int routeid)
	{
		List<Station> stations=new ArrayList<Station>();
		
		for (Station station: repo.findAll())
		{
			if(station.getRouteid()==routeid)
			{
				stations.add(station);
			}
		}
		return stations;
	}
	
	public Station findById(int id)
	{
		return repo.findById(id).get();
	}
	
	public void delete(int id)
	{
		repo.deleteById(id);
	}
}
