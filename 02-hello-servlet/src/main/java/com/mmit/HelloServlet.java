package com.mmit;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
//@WebServlet("/hello")
//@WebServlet(urlPatterns = {"/","/hello","/home"})
@WebServlet(urlPatterns = {"/login"})

public class HelloServlet extends HttpServlet{
	
	
	private static final long serialVersionUID = 1L;

	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);
		System.out.println("This is init Method.");
		System.out.println("------------------------");
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//System.out.println("This is doGet Method.");
		
		System.out.println("This is doPost Method.");
		System.out.println("------------------------");
		PrintWriter writer=resp.getWriter();
		writer.write("<h1>Hello Servlet</h1>");
	}
	
	
}
