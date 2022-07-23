package com.gl.debate.dao;

import java.util.List;

import com.gl.debate.entity.Student;

public interface StudentDAO {
	
	public List<Student> getStudents();
	
	public void saveStudent(Student theStudent);
	
	public Student getStudent(int theId);
	
	public void deleteStudent(int theId);
	
}
