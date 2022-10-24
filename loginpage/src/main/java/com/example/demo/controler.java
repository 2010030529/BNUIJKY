package com.example.demo;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class controler {
	@RequestMapping("/")
	public String login()
	{
		return "MainPage.jsp";
	}
	@RequestMapping("/Registration")
	public void inputdata(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{   
	  res.setContentType("text/html");
	    PrintWriter out=res.getWriter();
	    
	    String Name=req.getParameter("name");
	    String Username=req.getParameter("username");
	    String email=req.getParameter("email");
	    String password=req.getParameter("password");
	    String conform_password=req.getParameter("conform_password");
	   
	    
	    try{
	        
	      Class.forName("com.mysql.cj.jdbc.Driver");
	        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/Bunijky","root","Vamsi123!");
	        
	        PreparedStatement Rs= con.prepareStatement("insert into Registration values(?,?,?,?,?)");
	        PreparedStatement ls= con.prepareStatement("insert into Login values(?,?)");
	        
	      //PreparedStatement ps= con.prepareStatement("select name from register where name=? and email=? and password=?");
	        Rs.setString(1,Name);
	        Rs.setString(2, Username);
	        Rs.setString(3, email);
	        Rs.setString(4, password);
	        Rs.setString(5, conform_password);
	        
	        ls.setString(1,email);
	        ls.setString(2,password);
	        
	        int rs=Rs.executeUpdate();
	        int ks=ls.executeUpdate();
	       
	        if(rs>0 && ks>0)
	        {
	          System.out.print("done");
	          RequestDispatcher rd=req.getRequestDispatcher("Login.jsp");
	          rd.forward(req, res);
	        }
	    }
	    catch(Exception e)
	    {
	      System.out.print("error1");
	    }
	}
	@RequestMapping("/homepage")
	public void updatedatavalue(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
	  res.setContentType("text/html");
	    PrintWriter out=res.getWriter();
	    
	    String email=req.getParameter("email");
	    String password=req.getParameter("password");
	  
	     try{
	           
	         Class.forName("com.mysql.cj.jdbc.Driver");
	           Connection con=DriverManager.getConnection("jdbc:mysql://localhost/Bunijky","root","Vamsi123!");
	           
	         PreparedStatement is= con.prepareStatement("select email from Login where email=? and password=?");
	           
	           is.setString(1, email);
	           is.setString(2, password);
	          
	        ResultSet rs=is.executeQuery();
	          
	         if(rs.next()) 
	          {
	           System.out.print("done");
	          RequestDispatcher rd=req.getRequestDispatcher("Homepage.jsp");
	          rd.forward(req, res);
	        }
	       }
	       catch(Exception e)
	       {
	         System.out.print("error");
	       }
	}
	@RequestMapping("/imagesweb")
	public String imageweb()
	{
		return "Addimagesforweb.jsp";
	}
	@RequestMapping("/webimage")
	public void imageweba(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
	    res.setContentType("text/html");
	    PrintWriter out=res.getWriter();
	    
	    
	    Part file2=req.getPart("webimagesss");
	   
	    String webimagepath=file2.getSubmittedFileName();
//	    System.out.print(webimagepath);
	    String webuploadimag="C:\\Users\\saiva\\eclipse-workspace\\loginpage\\src\\main\\WebApp\\Images_for_web\\"+webimagepath;
	    System.out.print(webuploadimag);
	    try{
	        FileOutputStream fos=new FileOutputStream(webuploadimag);
	        InputStream is=file2.getInputStream();
	        byte[] data=new byte[is.available()];
	        is.read(data);
	        fos.write(data);
	        fos.close();
	        }
	    catch(Exception e)
	        {
	          e.printStackTrace();
	        }	    
	}
	@RequestMapping("/Adddata")
	public String Addproduct()
	{
		return "Productdata.jsp";
	}  
	@RequestMapping("/productAdd")
	public void imagesup(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
	    res.setContentType("text/html");
	    PrintWriter out=res.getWriter();
	    
	    String pid=req.getParameter("id");
	    String pname=req.getParameter("name");
	    String pdetails=req.getParameter("details");
	    String pprise=req.getParameter("prise");
	    Part file=req.getPart("imagef");
	    Part file1=req.getPart("data");
	   
	    String imageFileName=file.getSubmittedFileName();
	    String uploadimag="C:\\Users\\saiva\\eclipse-workspace\\loginpage\\src\\main\\WebApp\\Images\\"+imageFileName;
	    System.out.print(uploadimag);
	    
	    String ppagedata=file1.getSubmittedFileName();
	    String showpdatass="C:\\Users\\saiva\\eclipse-workspace\\loginpage\\src\\main\\WebApp\\Images\\"+ppagedata;
	    System.out.print(showpdatass);
	    
	    try {
	        FileOutputStream fos=new FileOutputStream(uploadimag);
	        InputStream is=file.getInputStream();
	        byte[] data=new byte[is.available()];
	        is.read(data);
	        fos.write(data);
	        fos.close();
	        }
	    catch(Exception e)
	        {
	          e.printStackTrace();
	        }
	    
	    try {
	        FileOutputStream fos=new FileOutputStream(showpdatass);
	        InputStream is=file1.getInputStream();
	        byte[] data1=new byte[is.available()];
	        is.read(data1);
	        fos.write(data1);
	        fos.close();
	        }
	    catch(Exception e)
	        {
	          e.printStackTrace();
	        }
	    try 
	    {
	      Class.forName("com.mysql.cj.jdbc.Driver");
	         Connection con=DriverManager.getConnection("jdbc:mysql://localhost/Bunijky","root","Vamsi123!");
	         
	       PreparedStatement is= con.prepareStatement("insert into dataadding values(?,?,?,?,?,?)");
	         
	         is.setString(1,pid);
	         is.setString(2,pname);
	         is.setString(3,pdetails);
	         is.setString(4,pprise);
	         is.setString(5,imageFileName);
	         is.setString(6, ppagedata);
	        
	      int rs=is.executeUpdate();
	        
	       if(rs>0) 
	        {
	         System.out.print("done");
	          RequestDispatcher rd=req.getRequestDispatcher("Product.jsp");
	          rd.forward(req, res);
	        }
	    }
	    catch (Exception e)
	    {
	      System.out.print("error");
	    }
	}
	@RequestMapping("/cartdatain")
	public void adddatatocart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
	    res.setContentType("text/html");
	    PrintWriter out=res.getWriter();
	    
	    String productname=req.getParameter("productname");
	    String costofproduct=req.getParameter("costofproduct");
	    if(Integer.valueOf(costofproduct)<900)
	    {
	    	RequestDispatcher rd=req.getRequestDispatcher("dataaddingcart.jsp");
	          rd.forward(req, res);
	    }
	     
  else {
	     try{
	           
	         Class.forName("com.mysql.cj.jdbc.Driver");
	           Connection con=DriverManager.getConnection("jdbc:mysql://localhost/Bunijky","root","Vamsi123!");
	           
	         PreparedStatement is= con.prepareStatement("insert into cart values(?,?)");
	           
	           is.setString(1,productname );
	           is.setString(2,costofproduct);
	          
	        int rs=is.executeUpdate();
	          
	        if(rs>0)
	        {
	          System.out.print("done");
	          RequestDispatcher rd=req.getRequestDispatcher("cart.jsp");
	          rd.forward(req, res);
	        }
	       }
	       catch(Exception e)
	       {
	         System.out.print("error");
	       }
	    }
	}
}
