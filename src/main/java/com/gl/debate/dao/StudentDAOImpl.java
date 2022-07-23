package com.gl.debate.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.gl.debate.dao.StudentDAO;

import com.gl.debate.entity.Student;

@Repository
@Transactional
@EnableTransactionManagement
public class StudentDAOImpl implements StudentDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public List<Student> getStudents() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Student> theQuery = currentSession.createQuery("from Student order by name", Student.class);
		List<Student> students = theQuery.getResultList();
		return students;
	};
	
	@Override
	@Transactional
	public void saveStudent(Student theStudent) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(theStudent);
	};
	
	@Override
	@Transactional
	public Student getStudent(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		Student theStudent = currentSession.get(Student.class, theId);
		return theStudent;
	};
	
	@Override
	@Transactional
	public void deleteStudent(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Student> theQuery = currentSession.createQuery("delete from Student where id=:studentId");
		theQuery.setParameter("studentId", theId);
		theQuery.executeUpdate();
	};
}
