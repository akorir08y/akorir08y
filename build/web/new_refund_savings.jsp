<%-- 
    Document   : new_refund_savings
    Created on : 25-Sep-2019, 12:24:46
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
        <div class="alert alert-success" role="alert" style="text-align: center;">New Savings Refund</div>   
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
                   <input type="text" class="form-control" name="member_registration_number" id="member_registration_number" placeholder="Member Registration Number">
                </div>
                <div class="form-group col-md-6">
                    <label for="inputCity">Refund Date</label>
                   <input type="date" class="form-control" name="refund_date" id="refund_date" placeholder="Refund Date">
                </div>
            </div>
            <div class="form-group">
                    <label for="inputCity">Member Full Name</label>
                   <input type="text" class="form-control" name="member_fullname" id="member_fullname" placeholder="Member Full Name">
            </div>                
            
          <div class="alert alert-success" role="alert" style="text-align: center;">
            Member Account Details
          </div>
            <table class="table table-striped" style="margin:10px;padding:10px;">
           <thead>
           <tr>
                <th scope="col"><input type="checkbox" id="select_all"/></th>
                <th scope="col">Product Type</th>
                <th scope="col">Balance</th>
                <th scope="col">Refund Status</th>
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
              <label for="inputCity">Refund Savings Account</label>
              <select name="refund_savings_account" id="refund_savings_account" class="form-control select2" required>
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
                   <input type="text" class="form-control" name="cheque_number" id="cheque_number" placeholder="Member Full Name">
        </div> 
       </div>
        <div class="alert alert-danger" role="alert" style="text-align: center;">
            All loans must be 0.00 and status reads cleared in order for a refund
        </div>
        <button type="submit" class="btn btn-primary">Refund Savings</button>
        <a href="#content" onclick="navigateMemberTransactions()" class="btn btn-primary" style="width:200px;margin-left: 20px;">Close</a>
        </form>
    </body>
</html>
