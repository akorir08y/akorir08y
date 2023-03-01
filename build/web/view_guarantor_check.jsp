<%-- 
    Document   : view_guarantor_check
    Created on : 25-Sep-2019, 11:28:25
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
        <div class="alert alert-success" role="alert" style="text-align: center;">View Guarantor Check</div>  
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
                    <label for="inputCity">Member Full Name</label>
                   <input type="text" class="form-control" name="amount_paid" id="amount_paid" placeholder="Member Full Name">

              </div>
          </div>
            
          <div class="alert alert-success" role="alert" style="text-align: center;">
            Guaranteed Amount and Amount Recovered
          </div>
     <table class="table table-striped" style="margin:10px;padding:10px;">
    <thead>
    <tr>
         <th scope="col"><input type="checkbox" id="select_all"/></th>
         <th scope="col">Member Number</th>
         <th scope="col">Member Name</th>
         <th scope="col">Amount Guaranteed</th>
         <th scope="col">Loan Balance</th>
     </tr>
    </thead>

    <tbody>
    <tr>
        <td><input id="optionsCheckbox" class="checkbox"  name="selector[]" type="checkbox" value="50"></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr> 
    <tr>
            <th scope="col">Total Amount Guaranteed</th>
            <td colspan="5"></td>
    </tr>

    </tbody>

    </table>
        <a href="#content" onclick="navigateMemberTransactions()" class="btn btn-primary" style="width:200px;">Close</a>
        </form>
    </body>
</html>
