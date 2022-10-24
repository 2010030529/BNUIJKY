<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login page</title>
    <style>
        fieldset{
            background:radial-gradient(rgb(236, 230, 230),#e15959);
        }
        body{
            background-color: rgb(220, 202, 202);
        }
    </style>
</head>
<body>
<form action="homepage" method="post">
<fieldset style="border: 8px solid rgb(14, 19, 13)">
    <center>
        <h1 style="border: 8px solid rgb(173, 173, 230)">Login page</h1>
        <h1>Emai:<input type="email" name="email"></h1>
        <h1>Password:<input type="password" name="password"></h1>
        <h1 style="background-color: rgb(0, 255, 128);"><input type="submit" value="Submit"></h1>
    </center>
</div>
</fieldset>
</form>
</body>
</html>