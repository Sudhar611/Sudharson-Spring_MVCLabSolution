package com.gl.debate.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.gl.debate.dao.StudentDAO;
import com.gl.debate.entity.Student;
import com.gl.debate.service.StudentService;

@Service
@EnableTransactionManagement
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentDAO studentDAO;

	@Override
	@Transactional
	public List<Student> getStudents() {
		return studentDAO.getStudents();
	}

	@Override
	@Transactional
	public void saveStudent(Student theStudent) {
		studentDAO.saveStudent(theStudent);
	}

	@Override
	@Transactional
	public Student getStudent(int theId) {
		return studentDAO.getStudent(theId);
	}

	@Override
	@Transactional
	public void deleteStudent(int theId) {
		studentDAO.deleteStudent(theId);
	}

}
