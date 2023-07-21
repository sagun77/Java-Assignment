package com.sagun.JavaAssignment.dto;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.sagun.JavaAssignment.model.Role;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

public class UserDTO implements Serializable {
    private int id;
    private String firstname;
    private String lastname;
    private String email;
    @JsonIgnore
    private String password;
    private String PhoneNumber;
    private boolean isLocked;
    private boolean enabled;
    private boolean firstLogin;
    private boolean expired;
    private Date registeredDate;
    private Set<Role> roles = new HashSet<>();;
    private String stamp;
    private String signature;
}
