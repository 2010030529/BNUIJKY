<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PRODUCT PAGE</title>
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
                    <img src="" width="125px">
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
<div class="small_container">
<% 
try {
   Class.forName("com.mysql.cj.jdbc.Driver");  
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Bunijky","root","Vamsi123!"); 
   Statement st = con.createStatement();
   ResultSet rs = st.executeQuery("Select * from dataadding");
   while (rs.next()) {
%>
<div class = "card-wrapper">
      <div class = "card">
        <!-- card left -->
        <div class = "product-imgs">
          <div class = "img-display">
          </div>
          <div class = "img-select">
            <div class = "img-item">
              <a href = "#" data-id = "1">
                <img src = "Images\<%=rs.getString("imageFileName") %>" width="400" height="500"  alt = "shoe image">
                <a href="<%=rs.getString("ppagedata")%>">this is product</a>
              </a>
            </div>
          </div>
        </div>
        <!-- card right -->
        <div class = "product-content">
          <h2 class = "product-title" ><%=rs.getString("pname") %></h2>
          <div class = "product-rating">
            <i class = "fas fa-star"></i>
            <i class = "fas fa-star"></i>
            <i class = "fas fa-star"></i>
            <i class = "fas fa-star"></i>
            <i class = "fas fa-star-half-alt"></i>
            <span>4.7(21)</span>
          </div>

          <div class = "product-price">
            <p class = "last-price" type = "text" name="pid" >Price: <%=rs.getString("pid") %><span></span></p>
            <p class = "last-price" type = "text" name="Price" >Price: <%=rs.getString("pprise") %><span></span></p>
           
          </div>
          <div class = "product-detail">
        <ul>
              <li>Color: <span>Black</span></li>
              <li>Available: <span>In stock</span></li>
              <li >Product Desc: <span><%=rs.getString("pdetails") %></span></li>
              <li>Shipping Area: <span>All over the world</span></li>
            </ul>
          </div>
          <div class = "purchase-info">
           
          </div>

          
        </div>
      </div>
     
    </div>

    
   
<%
} 
}
catch(SQLException e) 
  {System.out.println(e);}  
%>
</div>>
</body>
</html>