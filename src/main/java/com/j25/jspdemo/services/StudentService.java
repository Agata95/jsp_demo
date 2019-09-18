package com.j25.jspdemo.services;

import com.j25.jspdemo.database.EntityDao;
import com.j25.jspdemo.model.Student;

import java.util.List;

public class StudentService {
    private EntityDao entityDao = new EntityDao();

    public StudentService() {

    }

    public List<Student> findAll() {
        return entityDao.getAll(Student.class);
    }

    public void addStudent(String name, String lastname, int age, boolean isAlive) {
        entityDao.saveOrUpdate(new Student(null, name, lastname, age, isAlive));
    }
}
