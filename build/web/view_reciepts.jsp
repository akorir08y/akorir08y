<%-- 
    Document   : view_reciepts
    Created on : 11-Sep-2019, 12:40:53
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
    <div class="alert alert-success" role="alert" style="text-align: center;">
        Retrieve Receipts
    </div>
    <ul class="nav nav-tabs" style="margin:10px;">
        <li class="nav-item">
            <a onclick="navigateMemberTransactions()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">Close</a>
        </li>
    </ul>
    <div id="my_location">
    <form name="search_customer" style="margin:10px;padding:10px;float:right;">
       <div class="form-inline">
           <label for="Branch">Search Member Registration Number:</label>
            <input type="text" class="form-control" name="search" id="search" onkeyup="searchCustomerInfo()" placeholder="Search Here.." >
       </div>
    </form>
   
    <table class="table table-striped" style="margin:10px;padding:10px;">
    <thead>
    <tr>
         <th scope="col"><input type="checkbox" id="select_all"/></th>
         <th scope="col">Receipt ID</th>
         <th scope="col">Receipt Number</th>
         <th scope="col">Date of Receipt</th>
         <th scope="col">Amount</th>
         <th scope="col">Receipt Status</th>
         <th class="text-center">Action</th>
     </tr>
    </thead>

    <tbody>
    <tr>
        <td><input id="optionsCheckbox" class="checkbox"  name="selector[]" type="checkbox" value="50"></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td><a href='#content' class="btn btn-success" onclick="retrieveReciepts()">Retrieve Receipt</a></td>
        <td class="text-center">
            <a href='edit1.jsp?u=' class="btn btn-warning">Edit</a>
            <a href='delete1.jsp?d=' class="btn btn-danger">Delete</a>
        </td>
    </tr> 

    </tbody>

    </table>
   </div>
    </body>
</html>
