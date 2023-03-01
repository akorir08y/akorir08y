<%-- 
    Document   : view_customers
    Created on : 25-Nov-2019, 12:08:51
    Author     : Keitany
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Customers</title>
    </head>
    <body>
        <div id="content_provider">
        <div class="alert alert-success" role="alert" style="text-align: center;">View Customers</div>
        
        <ul class="nav nav-tabs" style="margin: 10px;">
        <li class="nav-item">
          <a onclick="viewCustomerCentre()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">New Customer</a>
        </li>
        <li class="nav-item">
          <a onclick="viewCustomers()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">View Customers</a>
        </li>
        <li class="nav-item">
          <a onclick="newCustomerInvoice()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">New Customer Invoices</a>
        </li>
        <li class="nav-item">
          <a onclick="viewCustomerInvoices()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">View Customer Invoices</a>
        </li>
        <li class="nav-item">
          <a onclick="newCustomerPayment()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">New Customer Payments</a>
        </li>
        <li class="nav-item">
          <a onclick="viewCustomerPayments()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">View Customer Payments</a>
        </li>
        <li class="nav-item">
          <a onclick="nonMemberTransactions()" style="background-color: lightcyan;" class="nav-link active" href="#content">Close</a>
        </li>
        </ul>
        
        <form name="search_customer" style="margin:10px;padding:10px;float:right;">
            <div class="form-inline">
                <label for="Branch">Search Customer:</label>
                 <input type="text" class="form-control" name="search" id="search" onkeyup="searchCustomerInfo()" placeholder="Search Here.." >
            </div>
         </form>
   
        <table class="table table-striped" style="margin:10px;padding:10px;">
        <thead>
        <tr>
             <th scope="col"><input type="checkbox" id="select_all"/></th>
             <th scope="col">Customer Id</th>
             <th scope="col">Customer Name</th>
             <th scope="col">Customer Email</th>
             <th scope="col">Customer Mobile</th>
             <th scope="col">Customer Pin Number</th>
             <th scope="col">Customer Contact Person</th>
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
            <td></td>
            <td></td>
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
