<%-- 
    Document   : new_journal_transfer
    Created on : 25-Sep-2019, 12:47:22
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
        <div class="alert alert-success" role="alert" style="text-align: center;">New Journal Transfer</div>
        <ul class="nav nav-tabs" style="margin:10px;">
            <li class="nav-item">
              <a onclick="navigateMemberTransactions()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">Close</a>
            </li>
        </ul>
        <form method="post" style="margin:10px;padding:10px;" action="">
            <div class="alert alert-success" role="alert" style="text-align: center;">
            Member Information
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputCity">Transfer Date</label>
                   <input type="date" class="form-control" name="transfer_date" id="transfer_date" placeholder="Transfer Date">
                </div>
                 <div class="form-group col-md-6">
                      <label for="inputCity">Search</label>
                   <input type="text" class="form-control" name="search_engine" id="search_engine" placeholder="Search Here...">
                   
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                      <label for="inputCity">Member Registration Number</label>
                       <input type="text" class="form-control" name="member_registration_number" id="member_registration_number" placeholder="Member Registration Number">  
                </div> 
                <div class="form-group col-md-6">
                      <label for="inputCity">Full Name</label>
                       <input type="text" class="form-control" name="member_fullname" id="member_fullname" placeholder="Member Registration Number">  
                </div> 
            </div>
            
          
      <div class="form-row">
         <div class="form-group col-md-6">
              <label for="inputCity">Loan Product</label>
                <select name="loan_product" id="loan_product" class="form-control select2" required>
                    <option selected="selected">--Select Loan Product--</option>
                    <option value="Business Loan">Business Loan</option>
                    <option value="Overseas Worker Loan">Overseas Worker Loan</option>
                    <option value="Pensioner Loan">Pensioner Loan</option>
                    <option value="Personal Loan">Personal Loan</option>
                    <option value="Student Loan">Student Loan</option>
                </select>
            </div>
        <div class="form-group col-md-6">
            <label for="inputCity">Amount</label>
            <input type="text" class="form-control" name="amount_paid" id="amount_paid" placeholder="Amount">
        </div> 
                
    </div>
     <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputCity">Transaction Type</label>
            <select name="transaction_type" id="transaction_type" class="form-control select2" required>
                 <option selected="selected">--Select Transaction Type--</option>
                    <option value="Debit">Debit</option>
                    <option value="Credit">Credit</option>
            </select>
        </div> 
         <div class="form-group col-md-6">
            <label for="inputCity">Description</label>
            <textarea class="form-control" name="transfer_description" id="transfer_description" rows="3" placeholder="Description"></textarea>
          </div>
     </div>
        <button type="submit" class="btn btn-primary">Transfer Journal</button>
        <a href="#content" onclick="journalTransfer()" class="btn btn-primary" style="width:200px;margin-left: 20px;">Cancel</a>
        </form>
    </body>
</html>
