<%-- 
    Document   : edit_account
    Created on : 09-Dec-2019, 20:47:28
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
        <div class="alert alert-success" role="alert" style="text-align: center;">New Account</div>
        
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
        <form method="post" style="margin:10px;padding:10px;" action="edit_account.jsp">
            <div class="alert alert-success" role="alert" style="text-align: center;">
            Edit Account Details
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputCity">Account Name</label>
                    <input type="text" class="form-control" name="account_name" id="account_name" placeholder="Account Name">  
                </div>
                 <div class="form-group col-md-6">
                   <label for="inputCity">Type</label>
                    <select name="transfer_to" id="transfer_to" class="form-control select2" required>
                      <option value="BANK">BANK</option>
                      <option value="PAYBILL">PAYBILL</option>
                      <option value="TILL-NUMBER">TILL-NUMBER</option>
                    </select>                   
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="TransactionDate">Sub Account Of</label>
                    <select name="sub_account_group" id="sub_account_group" class="form-control select2" required>
                                <option selected='selected'>All Account Groups</option>
                                <option value="Accomodation Expenses">Accomodation Expenses</option>
                                <option value="Accounts Payable">Accounts Payable</option>
                                <option value="Account Receivable">Account Receivable</option>
                                <option value="Accrued Business Acquisition Costs">Accrued Business Acquisition Costs</option>
                                <option value="Accrued Bank Service Charges">Accrued Bank Service Charges</option>
                                <option value="Bad Debts">Bad Debts</option>
                                <option value="Accrued Directors Allowance">Accrued Directors Allowance</option>
                                <option value="Accrued Salaries">Accrued Salaries</option>
                    </select>  
                </div> 
                <div class="form-group col-md-6">
                    <label for="inputCity">Description</label>
                    <textarea class="form-control" name="description" id="description" rows="3" placeholder="Description"></textarea>  
                </div> 
            </div>
     <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputCity">Bank Account Number</label>
            <input type="text" class="form-control" name="account_number" id="account_number" placeholder="Bank Account Number">
        </div> 
         <div class="form-group col-md-6">
            <label for="inputCity">Opening Balance</label>
            <input type="text" class="form-control" name="amount_balance" id="amount_balance" placeholder="Opening Balance">
          </div>
     </div>
        <button type="submit" class="btn btn-primary">Edit Account</button>
        <button type="reset" class="btn btn-primary" style="width:200px;margin-left: 20px;">Cancel</button>
        </form>
        </div>
    </body>
</html>
