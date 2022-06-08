<%-- 
    Document   : Login
    Created on : Jun 6, 2022, 3:09:37 PM
    Author     : Tkien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <link href="Login.css" rel="stylesheet" type="text/css"/>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="row ">
            <div class="col-md-4 sidenav">
                <div class="login-main-text">
                    <img src="../../material/cat-fish.png" alt="icon"/>
                    <h2 style="color: #ffc13b">Welcome to FAP</h2>
                    <p style="color: #ffc13b">Simple - Easy - Productive</p>
                </div>
            </div>
            <div class="col-md-8 main">
                <h3>Sign In</h3>
                <div class="col-sm-9">
                    <div class="login-form ">
                        <form>
                            <div class="form-group">
                                <label style="color: #ff6e40">Email</label>
                                <input type="text" class="form-control" placeholder="Email">
                            </div>
                            <div class="form-group">
                                <label style="color: #ff6e40">Password</label>
                                <input type="password" class="form-control" placeholder="Password">
                            </div>
                            <button type="submit" class="btn btn-black">Login</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
