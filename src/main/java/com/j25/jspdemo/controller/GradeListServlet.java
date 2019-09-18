package com.j25.jspdemo.controller;

import com.j25.jspdemo.model.Grade;
import com.j25.jspdemo.model.Student;
import com.j25.jspdemo.services.GradeService;
import com.j25.jspdemo.services.StudentService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/grade-list")
public class GradeListServlet extends HttpServlet {
    private final GradeService gradeService = new GradeService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<Grade> gradeList = gradeService.findAll();
        req.setAttribute("moja_list", gradeList);

        // załaduj plik .jsp i przekieruj tam req (parametry i resp)
        req.getRequestDispatcher("/grade-list.jsp").forward(req, resp);
    }
}
