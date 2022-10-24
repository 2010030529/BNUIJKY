<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>display cart data</title>
<link rel="stylesheet" href="style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@312;400&display=swap" rel="stylesheet">
</head>
<body>
<div class="headder">
    <div class="container">
        <div class="navbar">
           <div class="logo">
                    <img src="Images_for_web\Screenshot (931).png" width="125px">
                    <nav>
                        <ul>
                            <li><a href="Homepage.jsp">Home</a></li>
                            <li><a href="Product.jsp">Product</a></li>
                            <li><a href="Aboutus.jsp">About us</a></li>
                            <li><a href="cart.jsp">Cart</a></li>
                        </ul>
                    </nav>
                    <img src="" widht="30px" height="30px" alt="">
           </div>
         </div>
    </div>
</div>
<% 
try {
   Class.forName("com.mysql.cj.jdbc.Driver");  
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Bunijky","root","Vamsi123!"); 
   Statement st = con.createStatement();
   ResultSet rs = st.executeQuery("Select * from cart");
   while (rs.next()) {
%>
<h1>Cart</h1>
product name:- <h2 class = "product-title" ><%=rs.getString("productname") %></h2><br>
product cost:- <h2 class = "product-title" ><%=rs.getString("costofproduct") %></h2>
<br>
<br>

<%
} 
}
catch(SQLException e) 
  {System.out.println(e);}  
%>
<button><a href="">Payment</a></button>
</body>
</html>