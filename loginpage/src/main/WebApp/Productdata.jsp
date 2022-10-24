<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Adding products</title>
</head>
<body>

<center>
<h1>Add the products</h1>
<form action="productAdd" method="post" enctype="multipart/form-data">
Enter the id <input type="text" name="id"><br>
Enter the name <input type="text" name="name"><br>
Enter the details <input type="text" name="details"><br>
Enter the prise <input type="text" name="prise"><br>
Enter the file <input type="file" name="imagef"><br>
Enter the data <input type="file" name="data"><br>
<input type="submit" value="Add product">
</form>
</center>
</body>
</html>