package com.sagun.JavaAssignment.service;

import com.sagun.JavaAssignment.model.Role;
import com.sagun.JavaAssignment.model.User;

import java.util.List;
import java.util.Optional;

public interface UserService {


	Optional<User> getUserByUsername(String username);
	User getUserById(int userId);
	int addUser(User user, int roleId);

	List<Role> getAllRole();

}
