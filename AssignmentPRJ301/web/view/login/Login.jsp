<%-- 
    Document   : Login
    Created on : Jun 6, 2022, 3:09:37 PM
    Author     : Tkien
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <link rel="icon" href="material/iconweb.jpg" type="image/x-icon">
        <title>MyFapv2</title>
        <link href="css/login/Login.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="row ">
            <div class="col-md-4 sidenav">
                <div class="login-main-text">
                    <img src="material/cat-fish.png" alt="icon"/>
                    <h2 style="color: #ffc13b">Welcome to FAP</h2>
                    <p style="color: #ffc13b">Simple - Easy - Productive</p>
                </div>
            </div>
            <div class="col-md-8 main">
                <h3>Sign In</h3>
                <div class="col-sm-9">
                    <div class="login-form ">
                        
                        <form action="Login" method="POST">
                            <div class="form-group">
                                <label style="color: #ff6e40">Email</label>
                                <input type="text" class="form-control" placeholder="Email" name="user">
                            </div>
                            <div class="form-group">
                                <label style="color: #ff6e40">Password</label>
                                <input type="password" class="form-control" placeholder="Password" name="pass">
                            </div>
                            <button type="submit" class="btn btn-black">Login</button>
                            <div style="text-align: center" ><p style="color: red">${mess}</p></div>
                        </form>
                        
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
