<%-- 
    Document   : LectureMenu
    Created on : Jun 8, 2022, 8:36:25 PM
    Author     : Tkien
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
        <link href="../../css/main-menu/lectStyle.css" rel="stylesheet" type="text/css"/>
        <title>MyFapv2</title>
        <link rel="icon" href="../../material/iconweb.jpg" type="image/x-icon">
    </head>

    <header class="heading">
        <c:if test="${sessionScope.account ne null}">
            <h3> Hello ${sessionScope.account.displayName} !</h3>
        </c:if>
        <p>FPT University Academic Portal</p>
        <div class="navigator">
            <nav class="navbar navbar-expand-lg">
                <ul class="nav navbar-nav ml-auto navbar-nav ">
                    <li class="active">
                        <a href="#" class="nav-link">Account</a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">Campus: </a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">Sign out</a>
                    </li>
                </ul>
            </nav>
        </div>
    </header>
    <body>
        <div class="container">
            <ul class="decor-li">
                <c:if test="${sessionScope.account.lecture == 1}">
                    <li class="decor-a"><a href="../lecture-menu/AddGrade.jsp">Add Grade</a></li>
                    <li class="decor-a"><a href="#">Status Management</a></li>
                    </c:if>

                <c:if test="${sessionScope.account.student == 1}">
                    <li class="decor-a"><a href="../student-menu/MarkReport.jsp">Mark Report</a></li>
                    </c:if>
            </ul>
        </div>

    </body>
</html>
