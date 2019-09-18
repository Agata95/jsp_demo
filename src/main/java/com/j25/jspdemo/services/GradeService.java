package com.j25.jspdemo.services;

import com.j25.jspdemo.database.EntityDao;
import com.j25.jspdemo.model.Grade;
import com.j25.jspdemo.model.GradeSubject;

import java.util.List;

public class GradeService {
    private EntityDao entityDao = new EntityDao();

    public GradeService() {

    }

    public List<Grade> findAll() {
        return entityDao.getAll(Grade.class);
    }

    public void addGrade(GradeSubject subject, double value) {
        entityDao.saveOrUpdate(new Grade(null, subject, null, value));
    }
}
