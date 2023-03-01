<%-- 
    Document   : view_fund_transfers
    Created on : 09-Dec-2019, 18:52:23
    Author     : Keitany
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Fund Transfers</title>
    </head>
    <body>
        <div id="content_provider">
        <div class="alert alert-success" role="alert" style="text-align: center;">View Fund Transfers</div>
        
        <ul class="nav nav-tabs" style="margin: 10px;">
        <li class="nav-item">
          <a onclick="newFundTransfer()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">New Fund Transfer</a>
        </li>
        <li class="nav-item">
          <a onclick="viewFundTransfers()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">View Fund Transfers</a>
        </li>
        <li class="nav-item">
          <a onclick="newDirectExpense()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">New Direct Expense</a>
        </li>
        <li class="nav-item">
          <a onclick="viewDirectExpenses()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">View Direct Expenses</a>
        </li>
        <li class="nav-item">
          <a onclick="newBankReconciliation()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">New Bank Reconciliation Statement</a>
        </li>
        <li class="nav-item">
          <a onclick="viewBankReconciliations()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">View Bank Reconciliation Statements</a>
        </li>
        <li class="nav-item">
          <a onclick="nonMemberTransactions()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">Close</a>
        </li>
        </ul>
        
        <form name="search_customer" style="margin:10px;padding:10px;float:right;">
            <div class="form-inline">
                <label for="Branch">Search Fund Transfer:</label>
                 <input type="text" class="form-control" name="search" id="search" onkeyup="searchCustomerInfo()" placeholder="Search Here.." >
            </div>
         </form>
   
        <table class="table table-striped" style="margin:10px;padding:10px;">
        <thead>
        <tr>
             <th scope="col"><input type="checkbox" id="select_all"/></th>
             <th scope="col">Transfer Date</th>
             <th scope="col">Account Transferred From</th>
             <th scope="col">Account Transferred To</th>
             <th scope="col">Amount</th>
             <th scope="col">Description</th>
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
            <td class="text-center">
                <a href='edit1.jsp?u=' class="btn btn-primary">View</a>
                <a href='edit1.jsp?u=' class="btn btn-success">Edit</a>
                <a href='delete1.jsp?d=' class="btn btn-danger">Delete</a>
            </td>
            </tr> 

            </tbody>

            </table>
        </div>
    </body>
</html>
