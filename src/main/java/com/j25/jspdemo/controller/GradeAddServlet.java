package com.j25.jspdemo.controller;

import com.j25.jspdemo.model.GradeSubject;
import com.j25.jspdemo.services.GradeService;
import com.j25.jspdemo.services.StudentService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/grade-add")
public class GradeAddServlet extends HttpServlet {
    private final GradeService gradeService = new GradeService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/grade-add.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String subject = req.getParameter("grade_subject");
        double value = Double.parseDouble(req.getParameter("grade"));

//        gradeService.addGrade(subject,value);

        resp.sendRedirect("/grade-list");
    }
}
