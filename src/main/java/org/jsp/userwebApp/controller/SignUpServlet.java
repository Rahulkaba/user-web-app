package org.jsp.userwebApp.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsp.userwebApp.dao.UserDao;
import org.jsp.userwebApp.dto.User;

@WebServlet("/signup")
public class SignUpServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("nm");
		String password=req.getParameter("ps");
		String email=req.getParameter("em");
		long phone=Long.parseLong(req.getParameter("ph")); 
		User u= new User();
		u.setEmail(email);
		u.setName(name);
		u.setPassword(password);
		u.setPhone(phone);
		UserDao dao=new UserDao();
		u=dao.saveUser(u);
		PrintWriter writer=resp.getWriter();
		writer.write("<html><body><h2>user saved with ID : "+u.getId()+"</h2></body></html>");
	
	}

}
