package com.nitin.registration;

public class Subject {
	protected int id;
	protected String name;
	protected String code;
	
	public Subject() {
	}
	
	public Subject(String name, String code) {
		super();
		this.name = name;
		this.code = code;
	}

	public Subject(int id, String name, String code) {
		super();
		this.id = id;
		this.name = name;
		this.code = code;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getname() {
		return name;
	}
	public void setname(String name) {
		this.name = name;
	}
	public String getcode() {
		return code;
	}
	public void setcode(String code) {
		this.code = code;
	}
}
