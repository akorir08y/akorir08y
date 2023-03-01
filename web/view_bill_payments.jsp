<%-- 
    Document   : view_bill_payments
    Created on : 27-Nov-2019, 17:23:05
    Author     : Keitany
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Bill Payment</title>
    </head>
    <body>
        <div id="content_provider">
        <div class="alert alert-success" role="alert" style="text-align: center;">View Bill Payments</div>
        
        <ul class="nav nav-tabs" style="margin: 10px;">
        <li class="nav-item">
          <a onclick="newSupplier()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">New Supplier</a>
        </li>
        <li class="nav-item">
          <a onclick="viewSuppliers()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">View Suppliers</a>
        </li>
        <li class="nav-item">
          <a onclick="newSupplierInvoice()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">New Supplier Invoices</a>
        </li>
        <li class="nav-item">
          <a onclick="viewSupplierInvoices()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">View Supplier Invoices</a>
        </li>
        <li class="nav-item">
          <a onclick="newSupplierCreditMemo()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">New Supplier Credit Memo</a>
        </li>
        <li class="nav-item">
          <a onclick="viewSupplierCreditMemos()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">View Supplier Credit Memos</a>
        </li>
        <li class="nav-item">
          <a onclick="newBillPayment()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">New Bill Payment</a>
        </li>
        <li class="nav-item">
          <a onclick="viewBillPayments()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">View Bill Payments</a>
        </li>
        <li class="nav-item">
          <a onclick="nonMemberTransactions()" style="background-color: lightcyan;" class="nav-link active" href="#content">Close</a>
        </li>
        </ul>
        
                <form name="search_customer" style="margin:10px;padding:10px;float:right;">
                   <div class="form-inline">
                       <label for="Branch">Search Bill Payments:</label>
                        <input type="text" class="form-control" name="search" id="search" onkeyup="searchCustomerInfo()" placeholder="Search Here.." >
                   </div>
                </form>
                <table class="table table-striped" style="margin:10px;padding:10px;">
                   <thead>
                   <tr>
                        <th scope="col"><input type="checkbox" id="select_all"/></th>
                        <th scope="col">Payment Date</th>
                        <th scope="col">Bank Amount</th>
                        <th scope="col">Cheque Number</th>
                        <th scope="col">Total Payment</th>
                        <th scope="col">Bank Balance</th>
                        <th scope="col" colspan="3">Action</th>
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
                       <td class="text-center">
                            <a href='edit1.jsp?u=' class="btn btn-primary">View</a>
                            <a href='edit1.jsp?u=' class="btn btn-secondary">Edit</a>
                            <a href='delete1.jsp?d=' class="btn btn-danger">Delete</a>
                        </td>
                   </tr> 
                   </tbody>
                </table>
        </div>
    </body>
</html>
