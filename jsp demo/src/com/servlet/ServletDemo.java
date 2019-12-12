package com.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("")
public class ServletDemo extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		List<Student> students = new ArrayList<Student>();
		students.add(new Student(1, "Rahul"));
		students.add(new Student(2, "Raj"));
		students.add(new Student(3, "Amit"));
		students.add(new Student(4, "Ayush"));
		req.setAttribute("students", students);
		RequestDispatcher rd = req.getRequestDispatcher("jstlDemo.jsp");
		rd.forward(req, res);
	}
}
