<%-- 
    Document   : retrieve_receipt
    Created on : 11-Sep-2019, 13:01:58
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
        <h3 style="text-align: center;margin-top:10px;">Retrieve Receipt</h3>
        <form method="post" style="margin:10px;padding:10px;" action="retrieve_receipt.jsp">
            <div class="alert alert-success" role="alert">
            Receipt Information
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputCity">Member Registration Number</label>
                    <select name="customer_name"  id="customer_name" class="form-control select2" required>
                            <option selected='selected'>--Member Registration Number--</option>
                            <option value="00001">00001</option>
                            <option value="00002">00002</option>
                            <option value="00003">00003</option>
                            <option value="00004">00004</option>
                    </select>
                    </div>
                <div class="form-group col-md-6">
                    <label for="inputCity">Receipt Number</label>
                    <input type="text" class="form-control" name="amount_paid" id="amount_paid" placeholder="Receipt Number">

              </div>
          </div>
            <div class="alert alert-success" role="alert">
             Allocation Details
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                <label for="inputCity">Shares</label>
                <input type="text" class="form-control" name="amount_paid" id="amount_paid" placeholder="Transaction Number">
                </div>
                <div class="form-group col-md-6">
                <label for="inputCity">Amount</label>
                <input type="text" class="form-control" name="amount_paid" id="amount_paid" placeholder="Full Name">

              </div>
            </div>
                
            <div class="form-row">
               <div class="form-group col-md-6">
                <label for="inputCity">Savings</label>
                <input type="text" class="form-control" name="amount_paid" id="amount_paid" placeholder="Transaction Number">
                </div>
                <div class="form-group col-md-6">
                <label for="inputCity">Amount</label>
                <input type="text" class="form-control" name="amount_paid" id="amount_paid" placeholder="Full Name">

              </div>
            </div>
            
             <div class="form-row">
               <div class="form-group col-md-6">
                <label for="inputCity">Loan</label>
                <input type="text" class="form-control" name="amount_paid" id="amount_paid" placeholder="Transaction Number">
                </div>
                <div class="form-group col-md-6">
                <label for="inputCity">Amount</label>
                <input type="text" class="form-control" name="amount_paid" id="amount_paid" placeholder="Full Name">

              </div>
            </div>
        
        <button type="submit" class="btn btn-primary">Print Receipt</button>
        </form>
    </body>
</html>
