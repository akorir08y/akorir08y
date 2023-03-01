<%-- 
    Document   : view_members
    Created on : 11-Oct-2019, 17:54:45
    Author     : Keitany
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div id="content_provider">
            <div class="alert alert-success" role="alert" style="text-align: center;">View All Members</div>

            <ul class="nav nav-tabs">
            <li class="nav-item">
              <a onclick="viewMemberRegister()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">Add New Member</a>
            </li>
            <li class="nav-item">
              <a onclick="viewMembers()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">View Members</a>
            </li>
            <li class="nav-item">
              <a onclick="fetch()" style="background-color: lightcyan;" class="nav-link active" href="#content">Close</a>
            </li>
            </ul>
            
            <form name="search_customer" style="margin:10px;padding:10px;float:right;">
            <div class="form-inline">
                <label for="Branch">Search Member:</label>
                 <input type="text" class="form-control" name="search" id="search" onkeyup="searchCustomerInfo()" placeholder="Search Here.." >
            </div>
         </form>
   
        <table class="table table-striped" style="margin:10px;padding:10px;">
        <thead>
        <tr>
             <th scope="col"><input type="checkbox" id="select_all"/></th>
             <th scope="col">Member Registration Number</th>
             <th scope="col">Member Full Name</th>
             <th scope="col">Member Address</th>
             <th scope="col">Member Mobile Number</th>
             <th scope="col">Member Date of Birth</th>
             <th scope="col">Member Introducer Number</th>
             <th scope="col">Member Next of Kin</th>
             <th class="text-center" colspan="3">Action</th>
         </tr>
        </thead>

        <tbody>
        <tr>
            <td><input id="optionsCheckbox" class="checkbox"  name="selector[]" type="checkbox" value="50"></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td class="text-center"><a href='edit1.jsp?u=' class="btn btn-primary">View</a></td>
            <td><a href='edit1.jsp?u=' class="btn btn-secondary">Edit</a></td>
            <td><a href='delete1.jsp?d=' class="btn btn-danger">Delete</a></td>
            </tr> 

            </tbody>

            </table>
        </div>
    </body>
</html>
