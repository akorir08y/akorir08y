<%-- 
    Document   : new_disburse_loan
    Created on : 25-Sep-2019, 12:05:24
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
        <div class="alert alert-success" role="alert" style="text-align: center;">New Loan Disbursement</div>  
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
                    <label for="inputCity">Member Registration Number</label>
                   <input type="text" class="form-control" name="amount_paid" id="amount_paid" placeholder="Member Registration Number">
                </div>
                <div class="form-group col-md-6">
                    <label for="inputCity">Date</label>
                   <input type="date" class="form-control" name="amount_paid" id="amount_paid" placeholder="Member Registration Number">
                </div>
            </div>
            <div class="form-group">
                    <label for="inputCity">Member Full Name</label>
                   <input type="text" class="form-control" name="amount_paid" id="amount_paid" placeholder="Member Full Name">
            </div>                
            
          <div class="alert alert-success" role="alert" style="text-align: center;">
            Loan Pending Disbursement
          </div>
            <table class="table table-striped" style="margin:10px;padding:10px;">
           <thead>
           <tr>
                <th scope="col"><input type="checkbox" id="select_all"/></th>
                <th scope="col">Loan Type</th>
                <th scope="col">Date Applied</th>
                <th scope="col">Amount Approved</th>
            </tr>
           </thead>

           <tbody>
           <tr>
               <td><input id="optionsCheckbox" class="checkbox"  name="selector[]" type="checkbox" value="50"></td>
               <td></td>
               <td></td>
               <td></td>
           </tr> 
           </tbody>

           </table>
    <div class="form-row">
         <div class="form-group col-md-6">
              <label for="inputCity">Disbursement Account</label>
              <select name="loan_payment_choice" id="loan_payment_choice" class="form-control select2" required>
                  <option selected="selected">--Select Bank Account Number--</option>
                  <option value="130390430934">130390430934-Equity</option>
                  <option value="130399304334">130390439034-Barclays</option>
                  <option value="130393984444">130393984444-KCB</option>
                  <option value="130392030454">130392030454-Co-operative</option>
                  <option value="130392490044">130392490044-Stanbic</option>
                  <option value="130390930244">130390930244-NIC</option>
              </select>

            </div>
        <div class="form-group col-md-6">
                    <label for="inputCity">Cheque Number</label>
                   <input type="text" class="form-control" name="amount_paid" id="amount_paid" placeholder="Cheque Number">
        </div> 
                
    </div>
        <button type="submit" class="btn btn-primary">Disburse Loan</button>
        <a href="#content" onclick="navigateMemberTransactions()" class="btn btn-primary" style="width:200px;margin-left: 20px;">Close</a>
        </form>
    </body>
</html>
