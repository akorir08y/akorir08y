<%-- 
    Document   : view_customer_invoices
    Created on : 11-Sep-2019, 13:37:39
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
        <div class="alert alert-success" role="alert" style="text-align: center;">View Customer Invoices</div>
        
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
        <div id="my_location">
        <form name="search_customer" style="margin:10px;padding:10px;float:right;">
           <div class="form-inline">
               <label for="Branch">Search Customer Invoice Number:</label>
                <input type="text" class="form-control" name="search" id="search" onkeyup="searchCustomerInfo()" placeholder="Search Here.." >
           </div>
        </form>

        <table class="table table-striped" style="margin:10px;padding:10px;">
        <thead>
        <tr>
             <th scope="col"><input type="checkbox" id="select_all"/></th>
             <th scope="col">Invoice ID</th>
             <th scope="col">Invoice Number</th>
             <th scope="col">Date of Invoice</th>
             <th scope="col">Invoice Amount</th>
             <th scope="col">Invoice Status</th>
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
            <td><a href='#content' class="btn btn-success" onclick="retrieveReciepts()">Retrieve Invoice</a></td>
            <td class="text-center">
                <a href='edit1.jsp?u=' class="btn btn-warning">Edit</a>
                <a href='delete1.jsp?d=' class="btn btn-danger">Delete</a>
            </td>
        </tr> 

        </tbody>

        </table>
       </div>
    </div>
    </body>
</html>
