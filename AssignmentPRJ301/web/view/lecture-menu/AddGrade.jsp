<%-- 
    Document   : AddGrade
    Created on : Jun 21, 2022, 7:27:24 PM
    Author     : Tkien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
        <link href="functions-style.css" rel="stylesheet" type="text/css"/>
        <title>Add Grade</title>
        <link rel="icon" href="../../material/iconweb.jpg" type="image/x-icon">
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
        <form>
            <div id="table-group">
                <table>
                    <tr>
                        <td>
                            <select class="group-lists">
                                <option value="1">SE1631-PRJ301</option>
                                <option value="2">SE1632-JPD123</option>
                            </select>
                        </td>
                        <td id="click">
                            <button id="butt-search" type="submit">Search</button>
                        </td>
                    </tr>
                </table>
            </div>
            
            <div id="mark-edit">
                <table>
                    <thead>
                        <tr>
                            <th>Student Name</th>
                            <th>Grade Category</th>
                            <th>Grade Category</th>
                            <th>Grade Category</th>
                            <th>Grade Category</th>
                            <th>Grade Category</th>
                            <th>Grade Category</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>name</td>
                            <td>grade</td>
                            <td>grade</td>
                            <td>grade</td>
                            <td>grade</td>
                            <td>grade</td>
                            <td>grade</td>
                            
                        </tr>
                    </tbody>
                </table>
                    <button class="butt-save" type="submit">Save</button>
            </div>
            
            
            

        </form>


        

    </body>
</html>
