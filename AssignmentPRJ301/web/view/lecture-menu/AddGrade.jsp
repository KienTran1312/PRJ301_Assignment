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
        <link href="LectFunctStyle.css" rel="stylesheet" type="text/css"/>
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
                        <td id="subject">
                            <select class="group-subject">
                                <option value="1">Subject1</option>
                                <option value="2">Subject2</option>
                                <option value="3">Subject3</option>
                            </select></td>
                        <td>
                            <select class="group-lists">
                                <option value="1">SE1631</option>
                                <option value="2">SE1632</option>
                                <option value="3">SE1633</option>
                            </select>
                        </td>
                        <td id="click">
                            <button id="butt-search" type="submit">Search</button>
                        </td>
                    </tr>
                </table>
            </div>
            <div>
                <table border="1">
                    <thead>
                        <tr>
                            <th>Category</th>
                            <th>Edit</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>progress test 1</td>
                            <td><a href="">Edit</a></td>
                        </tr>
                        <tr>
                            <td>progress test 2</td>
                            <td><a href="">Edit</a></td>
                        </tr>
                        <tr>
                            <td>ws1</td>
                            <td><a href="">Edit</a></td>
                        </tr>
                        <tr>
                            <td>ws2</td>
                            <td><a href="">Edit</a></td>
                        </tr>
                        <tr>
                            <td>assignment</td>
                            <td><a href="">Edit</a></td>
                        </tr>
                        <tr>
                            <td>pe</td>
                            <td><a href="">Edit</a></td>
                        </tr>
                        <tr>
                            <td>fe</td>
                            <td><a href="">Edit</a></td>
                        </tr>
                    </tbody>
                </table>

            </div>
            
            
            

        </form>


        

    </body>
</html>
