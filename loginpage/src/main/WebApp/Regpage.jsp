<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Regristeation page</title>
    <style>
        fieldset{
            background:radial-gradient(#fff,#ffd6d6);
        }
        body{
            background-color: black;
        }
    </style>
</head>
<body>
<form method="post" action="Registration">
<fieldset style="border: 8px solid rgb(14, 19, 13)">
    <center>
        <h1 style="border: 8px solid rgb(173, 173, 230)">Regristeation page</h1>
        <h1>Name:<input type="text" name="name"></h1>
        <h1>UserName:<input type="text" name="username"></h1>
        <h1>Emai:<input type="email" name="email"></h1>
        <h1>Password:<input type="password" name="password"></h1>
        <h1>Conform_password:<input type="password" name="conform_password"></h1>
        <h1 style="background-color: rgb(0, 255, 128);"><input type="submit" value="Submit"></h1>
    </center>
</div>
</fieldset>
</form>
</body>
</html>