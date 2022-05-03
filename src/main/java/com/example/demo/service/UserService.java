package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.User;
import com.example.demo.repository.UserRepository;

@Service
public class UserService {

	@Autowired
	private UserRepository repo;
	
	public void save(User user)
	{
		repo.save(user);
	}
	
	public List<User> findAll()
	{
		return repo.findAll();
	}
	
	public User isValidUser(String userName,String password)
	{
		User u=null;
		
		for(User user:findAll())
		{
			if(user.getUsername().toLowerCase().equals(userName.toLowerCase()) && user.getPassword().toLowerCase().equals(password.toLowerCase()))
			{
				u=user;
				break;
			}
		}
		
		return u;
	}
	
	public User findById(int id)
	{
		return repo.findById(id).get();
	}
	
	public void delete(int id)
	{
		repo.deleteById(id);
	}	
	
	public boolean isExist(String username)
	{
		boolean isExist=false;
		
		for(User user:findAll())
		{
			if(user.getUsername().toLowerCase().equals(username.toLowerCase()))
			{
				isExist=true;
			}
		}
		
		return isExist;
	}
}
