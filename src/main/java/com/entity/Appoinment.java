package com.entity;

public class Appoinment {
 private int id;
 private int userId;
 private String fullName;
 private String gender;
 private String age;
 private String appoinDate;
 private String email;
 private String phnNo;
 private String diseases;
 private int doctorId;
 private String address;
 private String status;
 
 public Appoinment() {
	super();
	// TODO Auto-generated constructor stub
}

public Appoinment(int userId, String fullName, String gender, String age, String appoinDate, String email, String phnNo,
		String diseases, int doctorId, String address, String status) {
	super();
	this.userId = userId;
	this.fullName = fullName;
	this.gender = gender;
	this.age = age;
	this.appoinDate = appoinDate;
	this.email = email;
	this.phnNo = phnNo;
	this.diseases = diseases;
	this.doctorId = doctorId;
	this.address = address;
	this.status = status;
}

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public int getUserId() {
	return userId;
}

public void setUserId(int userId) {
	this.userId = userId;
}

public String getFullName() {
	return fullName;
}

public void setFullName(String fullName) {
	this.fullName = fullName;
}

public String getGender() {
	return gender;
}

public void setGender(String gender) {
	this.gender = gender;
}

public String getAge() {
	return age;
}

public void setAge(String age) {
	this.age = age;
}

public String getAppoinDate() {
	return appoinDate;
}

public void setAppoinDate(String appoinDate) {
	this.appoinDate = appoinDate;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getPhnNo() {
	return phnNo;
}

public void setPhnNo(String phnNo) {
	this.phnNo = phnNo;
}

public String getDiseases() {
	return diseases;
}

public void setDiseases(String diseases) {
	this.diseases = diseases;
}

public int getDoctorId() {
	return doctorId;
}

public void setDoctorId(int doctorId) {
	this.doctorId = doctorId;
}

public String getAddress() {
	return address;
}

public void setAddress(String address) {
	this.address = address;
}

public String getStatus() {
	return status;
}

public void setStatus(String status) {
	this.status = status;
}
	
	
}
