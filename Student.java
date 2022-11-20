package com.nitin.registration;

public class Student {
	protected int id;
	protected String first_name;
	protected String last_name;
	protected String age;
	
	public Student() {
	}
	
	public Student(String first_name, String last_name, String age) {
		super();
		this.first_name = first_name;
		this.last_name = last_name;
		this.age = age;
	}

	public Student(int id, String first_name, String last_name, String age) {
		super();
		this.id = id;
		this.first_name = first_name;
		this.last_name = last_name;
		this.age = age;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getfirst_name() {
		return first_name;
	}
	public void setfirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getlast_name() {
		return last_name;
	}
	public void setlast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getage() {
		return age;
	}
	public void setage(String age) {
		this.age = age;
	}
}
