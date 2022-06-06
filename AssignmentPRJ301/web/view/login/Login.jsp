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
        <link href="LoginStyle.css" rel="stylesheet" type="text/css"/>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class="left">
                <h2>Welcome to FAP</h2>
                <p>FPT University Academic Portal</p>
            </div>
            <div class="right">
                <div class="col-md-6 col-sm-12">
                    <div>
                        <form>
                            <div class="form-group">
                                <label>Email</label>
                                <input type="text" class="form-control" placeholder="Email">
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" class="form-control" placeholder="Password">
                            </div>
                            <button type="submit" class="click-button">Login</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
