package com.example.demo.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Ticket;
import com.example.demo.repository.TicketRepository;

@Service
public class TicketService {

	@Autowired
	private TicketRepository repo;
	
	public void save(Ticket ticket)
	{
		repo.save(ticket);
	}
	
	public List<Ticket> findAll()
	{
		return repo.findAll();
	}
	
	public List<Ticket> findByUserId(int userid)
	{
		List<Ticket> tickets=new ArrayList<Ticket>();
		
		for (Ticket ticket: repo.findAll())
		{
			if(ticket.getUserid()==userid)
			{
				tickets.add(ticket);
			}
		}
		return tickets;
	}
	
	public Ticket findById(int id)
	{
		return repo.findById(id).get();
	}
	
	public void delete(int id)
	{
		repo.deleteById(id);
	}
}
