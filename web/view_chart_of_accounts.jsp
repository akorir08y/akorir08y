<%-- 
    Document   : new_chart_of_accounts
    Created on : 09-Dec-2019, 19:53:31
    Author     : Keitany
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>General Ledger Chart of Accounts</title>
    </head>
    <body>
         <div id="content_provider" style="overflow-x:auto;">
        <div class="alert alert-success" role="alert" style="text-align: center;">View Chart Of Accounts</div>
        
        <ul class="nav nav-tabs" style="margin: 10px;">
        <li class="nav-item">
          <a onclick="viewChartOfAccounts()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">View Chart of Accounts</a>
        </li>
        <li class="nav-item">
          <a onclick="newAccount()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">New Account</a>
        </li>
        <li class="nav-item">
          <a onclick="nonMemberTransactions()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">Close</a>
        </li>
        </ul>
        <form name="search_customer" style="margin:10px;padding:10px;float:right;">
            <div class="form-inline">
                <label for="Branch">Search Chart Of Accounts:</label>
                 <input type="text" class="form-control" name="search" id="search" onkeyup="searchCustomerInfo()" placeholder="Search Here.." >
            </div>
         </form>
        
        <table class="table table-hover" style="margin:10px;padding:10px;">
            <tr>
                <th scope="col" colspan="18" style="text-align: center;">General Ledger Chart of Accounts</th>
            </tr>
            <tr>
                 <th scope="col"><input type="checkbox" id="select_all"/></th>
                 <th scope="col">Name of Account</th>
                 <th scope="col">Type</th>
                 <th scope="col">Description</th>
                 <th scope="col">Balance</th>
                 <th class="text-center" colspan="3">Action</th>
                 <th class="text-center" colspan="5">Additional Actions</th>
             </tr>

            <tr>
                <td><input id="optionsCheckbox" class="checkbox"  name="selector[]" type="checkbox" value="50"></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td class="text-center" colspan="3">
                    <a href='edit1.jsp?u=' class="btn btn-primary btn-sm">View</a>
                    <a href='edit1.jsp?u=' class="btn btn-success btn-sm">Edit</a>
                    <a href='delete1.jsp?d=' class="btn btn-danger btn-sm">Delete</a>
                </td>
                <td class="text-center" colspan="5">
                    <a href='edit1.jsp?u=' class="btn btn-secondary btn-sm">Run Report</a>
                    <a href='edit1.jsp?u=' class="btn btn-secondary btn-sm">Make Inactive</a>
                    <a href='delete1.jsp?d=' class="btn btn-secondary btn-sm">Make Active</a>
                    <a href='edit1.jsp?u=' class="btn btn-secondary btn-sm">Export</a>
                    <a href='delete1.jsp?d=' class="btn btn-secondary btn-sm">Import</a>
                </td>
            </tr>           

            </table>
        </div>
    </body>
</html>
