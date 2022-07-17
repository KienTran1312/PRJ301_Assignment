<%-- 
    Document   : MarkReport
    Created on : Jun 20, 2022, 9:15:46 PM
    Author     : Tkien
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
        <link href="../css/student/student-function.css" rel="stylesheet" type="text/css"/>
        <title>Mark Report</title>
    </head>

    <header class="heading">
        <h3> FPT University Academic Portal </h3>
        <div class="navigator">
            <nav class="navbar navbar-expand-lg">
                <ul class="nav navbar-nav ml-auto navbar-nav ">
                    <li class="active">
                        <a href="#" class="nav-link">Home</a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">Activity</a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">Sign out</a>
                    </li>
                </ul>
            </nav>
        </div>
    </header>
    <body>
        <div class="row">
            <div class="col-md-6 tables">
                <form action="markreport" method="POST">
                    <c:if test="${sessionScope.account ne null}">
                        <h4 style="color: #1e3d59">Grade report for student ${sessionScope.account.displayName} </h4>
                    </c:if>

                    <div class="left">
                        <div>
                            <select class="group-lists" name="courseid">
                                <c:forEach items="${course}" var="c">
                                    <option style="text-align: center">${c.getCourseId()}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div id="click">
                            <button class="show-mark" type="submit">Show</button>
                        </div>
                    </div>
                </form>
            </div>

            <div class="col-md-6 mark-table">
                <c:if test="${assessments !=null}">
                    <div class="right">
                        <table>
                            <thead>
                                <tr>
                                    <th>GRADE ITEM</th>
                                    <th>WEIGHT</th>
                                    <th>VALUE</th>
                                    <th>COMMENT</th>
                                </tr>
                            </thead>

                            <tbody>
                                
                                <c:forEach items="${assessments}" var="a">
                                    <tr>
                                        <td style="text-align: center">${a.getName()}</td>
                                        <td style="text-align: center">${a.getWeight()}</td>
                                        <td style="text-align: center">${a.getExam().getScore()}</td>                                
                                        <td style="text-align: center">No comment</td>
                                    </tr>
                                </c:forEach>

                                <tr>
                                    <td><h5>Total</h5></td>
                                    <td> </td>
                                </tr>
                                <tr>
                                    <td><h5>Status</h5></td>
                                    <td> 
                                        <p hidden id="pass">Pass</p> 
                                        <p id="not-pass">Not Pass</p>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </c:if>

            </div>
        </div>



    </body>
</html>
