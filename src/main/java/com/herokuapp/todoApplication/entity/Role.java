package com.herokuapp.todoApplication.entity;

public enum Role {
	
	USER("ROLE_USER"),ADMIN("ROLE_ADMIN");

	private String role;

	Role(String role) {
		this.role = role;
	}
	public String getRole() {
		return this.role.toString();
	}
}
