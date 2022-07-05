<%-- 
    Document   : MarkReport
    Created on : Jun 20, 2022, 9:15:46 PM
    Author     : Tkien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
        <link href="student-function.css" rel="stylesheet" type="text/css"/>
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
                <h4 style="color: #1e3d59">Grade report for student "Name" + (StudentId)</h4>
                <div class="left">
                    <table>
                        <thead>
                            <tr>
                                <th class="seasons">Subject</th>
                                <th class="tit-left"></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>PRJ301</td>
                                <td><input class="show-mark" type="button" value="Show"/></td>
                            </tr>
                        </tbody>
                    </table>
                </div>


            </div>
            <div class="col-md-6 mark-table">
                <div class="right">
                    <table>
                        <thead>
                            <tr>
                                <th>GRADE CATEGORY</th>
                                <th>GRADE ITEM</th>
                                <th>WEIGHT</th>
                                <th>VALUE</th>
                                <th>COMMENT</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>thành phần</td>
                                <td>items</td>
                                <td>trọng số</td>
                                <td>tổng</td>
                                <td>cmt</td>
                            </tr>
                            <tr>
                                <td><h5>Total</h5></td>
                                <td></td>
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


            </div>
        </div>
        
        

    </body>
</html>
