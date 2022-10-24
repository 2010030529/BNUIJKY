<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<center>
	<form action="webimage" method="post" enctype="multipart/form-data">
	UPLODE THE FILE:-<input type="file" name="webimagesss"><br>
	<input type="submit" value="submit">
	</form>
</center>
</body>
</html>