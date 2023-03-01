<%-- 
    Document   : view_bank_reconciliations
    Created on : 14-Dec-2019, 14:53:24
    Author     : Keitany
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Bank Reconciliations</title>
    </head>
    <body>
        <div id="content_provider">
        <div class="alert alert-success" role="alert" style="text-align: center;">View Bank Reconciliations</div>
        
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
                <label for="Branch">Search Bank Reconciliations:</label>
                 <input type="text" class="form-control" name="search" id="search" onkeyup="searchCustomerInfo()" placeholder="Search Here.." >
            </div>
         </form>
   
        <table class="table table-striped" style="margin:10px;padding:10px;">
            <tr>
                <th scope="col" colspan="10" style="text-align: center">Bank Transaction Reconciliation Summary</th>
            </tr>
            <tr>
                <th scope="col" colspan="5" style="border-right:1px solid gainsboro">Debits</th>
                <th scope="col" colspan="5" style="border-left:1px solid gainsboro">Credits</th>
            </tr>
            <tr>
                     <th scope="col" style="border-left:1px solid gainsboro"><input type="checkbox" id="select_all"/></th>
                     <th scope="col" style="border-left:1px solid gainsboro">Transaction Date</th>
                     <th scope="col" style="border-left:1px solid gainsboro">Account Holder Name</th>
                     <th scope="col" style="border-left:1px solid gainsboro">Amount</th>
                     <th scope="col" style="border-left:1px solid gainsboro">Action</th>
                     <th scope="col" style="border-left:1px solid gainsboro"><input type="checkbox" id="select_all"/></th>
                     <th scope="col" style="border-left:1px solid gainsboro">Transaction Date</th>
                     <th scope="col" style="border-left:1px solid gainsboro">Account Holder Name</th>
                     <th scope="col" style="border-left:1px solid gainsboro">Amount</th>
                     <th scope="col" style="border-left:1px solid gainsboro">Action</th>
            </tr>

            <tr>
                <td><input id="optionsCheckbox" class="checkbox"  name="selector[]" type="checkbox" value="50"></td>
                <td></td>
                <td></td>
                <td></td>
                <td class="text-center">
                    <a href='edit1.jsp?u=' class="btn btn-primary btn-sm">View</a>
                    <a href='edit1.jsp?u=' class="btn btn-success btn-sm">Edit</a>
                    <a href='delete1.jsp?d=' class="btn btn-danger btn-sm">Delete</a>
                </td>
                <td><input id="optionsCheckbox" class="checkbox"  name="selector[]" type="checkbox" value="50"></td>
                <td></td>
                <td></td>
                <td></td>
                <td class="text-center">
                    <a href='edit1.jsp?u=' class="btn btn-primary btn-sm">View</a>
                    <a href='edit1.jsp?u=' class="btn btn-success btn-sm">Edit</a>
                    <a href='delete1.jsp?d=' class="btn btn-danger btn-sm">Delete</a>
                </td>
                
            </tr> 
            <tr>
                <td colspan="10"></td>
            </tr>
            <tr>
                <th scope="col" colspan="5">Beginning Bank Balance</th>
                <td colspan="5"></td>
            </tr>
            <tr>
                <th scope="col" colspan="5">Reconciled Debits</th>
                <td colspan="5"></td>
            </tr>
            <tr>
                <th scope="col" colspan="5">Reconciled Credits</th>
                <td colspan="5"></td>
            </tr>
            <tr>
                <th scope="col" colspan="5">Bank Charges</th>
                <td colspan="5"></td>
            </tr>
            <tr>
                <th scope="col" colspan="5">Ending Bank Balance</th>
                <td colspan="5"></td>
            </tr>
            </table>
        </div>
    </body>
</html>
