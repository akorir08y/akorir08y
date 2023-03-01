<%-- 
    Document   : new_transaction
    Created on : 27-Aug-2019, 15:02:54
    Author     : Keitany
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="Functionalities.FunctionalitiesJ"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="navbar.js"></script>
        
        <title>JSP Page</title>
    </head>
    <body>
        <div class="alert alert-success" role="alert" style="text-align: center;margin-top:10px;">New Member Transaction</div>
        <ul class="nav nav-tabs" style="margin:10px;">
            <li class="nav-item">
              <a onclick="navigateMemberTransactions()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">Close</a>
            </li>
        </ul>
         <script type="text/javascript">
                function calculate() {
                    var num1 = document.getElementById('share_amount').value;
                    var num2 = document.getElementById('loan_amount').value;
                    var num3 = document.getElementById('savings_amount').value;
                    var result = Number(num1) + Number(num2) + Number(num3);
                    document.getElementById('total_amount').value = result; 
                    if(num1!==null&&num2!==null&&num3!==null){
                        var result = Number(num1) + Number(num2) + Number(num3);
                        document.getElementById('total_amount').value = result; 
                    }else if(num1!==null&&num2!==null){
                        var result = Number(num1) + Number(num2);
                        document.getElementById('total_amount').value = result; 
                    }else if(num1!==null){
                        var result = Number(num1);
                        document.getElementById('total_amount').value = result;
                    }
                   

                }

            </script>
        
        <form method="post" style="margin:10px;padding:10px;" action="new_transaction.jsp">
            <div class="alert alert-success" role="alert" style="text-align: center;">
            Member Information
            </div>
            <div class="form-row">
                <div class="form-group row">
                    <label for="inputCity" class="col-sm-2 col-form-label">Member Registration Number:</label>
                    <div class="col-sm-9">
                        <select name="member_registration_number"  id="member_registration_number" class="form-control select2" required>
                                <option selected='selected'>--Member Registration Number--</option>
                                <option value="00001">00001</option>
                                <option value="00002">00002</option>
                                <option value="00003">00003</option>
                                <option value="00004">00004</option>
                        </select>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="inputCity" class="col-sm-2 col-form-label">Member Account Number:</label>
                    <div class="col-sm-9">
                        <select name="member_account_number" id="member_account_number" class="form-control select2" required>
                            <option selected="selected">--Select Member Account Number--</option>
                            <option value="00039450321">00039450321</option>
                            <option value="00039450906">00039450906</option>
                            <option value="00039450965">00039450965</option>
                            <option value="00039450700">00039450700</option>
                            <option value="00039450212">00039450212</option>
                            <option value="00039450932">00039450932</option>
                        </select>
                    </div>
              </div>
          </div>
            
            <div class="form-row">
                <div class="form-group col-md-6">
                <label for="inputCity">Transaction Reference</label>
                <input type="text" class="form-control" name="transaction_reference" id="transaction_reference" placeholder="Transaction Number">
                </div>
                <div class="form-group col-md-6">
                <label for="inputCity">Member Full Name</label>
                <input type="text" class="form-control" name="member_fullname" id="member_fullname" placeholder="Full Name">

              </div>
            </div>
                
          <div class="form-row">      
            <div class="form-group col-md-6">
              <label for="inputCity">Bank Account Number </label>
              <select name="bank_account_number" id="bank_account_number" class="form-control select2" required>
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
                <label for="inputCity">Transaction Date</label>
                <input type="date" class="form-control" name="transaction_date" id="transaction_date" placeholder="">

            </div>
          </div>
        <div class="alert alert-success" role="alert" style="text-align: center;">
            Member Products
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="inputCity">Shares Amount</label>
                <input type="number" class="form-control prc " name="share_amount" id="share_amount" placeholder="Shares Amount">
            </div>
            
             <div class="form-group col-md-6">
                <label for="inputCity">Advance Loan</label>
                <input type="number" class="form-control prc" name="advance_loan" id="advance_loan" placeholder="Advance Loan">
            </div>
        </div>
        <div class="form-row">            
             <div class="form-group col-md-6">
                <label for="inputCity">Savings Amount</label>
                <input type="number" class="form-control prc" name="savings_amount" id="savings_amount" placeholder="Savings Amount">
            </div>
            
             <div class="form-group col-md-6">
                 <label for="inputCity">Normal Loan</label>
                <input type="number" class="form-control" name="normal_loan"  id="normal_loan" placeholder="Normal Loan">
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="inputCity">Instant Loan</label>
                <input type="number" class="form-control prc " name="instant_loan" id="instant_loan" placeholder="Shares Amount">
            </div>
            
             <div class="form-group col-md-6">
                <label for="inputCity">Development Loan</label>
                <input type="number" class="form-control prc" name="development_loan" id="development_loan" placeholder="Development Loan">
            </div>
        </div>
        <div class="form-row">            
             <div class="form-group col-md-6">
                <label for="inputCity">Super-Development Loan</label>
                <input type="number" class="form-control prc" name="super_development_loan" id="super_development_loan" placeholder="Super-Development Loan">
            </div>
            
             <div class="form-group col-md-6">
                 <label for="inputCity">Share Transfer</label>
                <input type="number" class="form-control" name="share_transfer"  id="share_transfer" placeholder="Share Transfer">
            </div>
        </div>
        <div class="form-row">            
             <div class="form-group col-md-6">
                <label for="inputCity">Member Registration Fee</label>
                <input type="number" class="form-control prc" name="registration_fee" id="registration_fee" placeholder="Member Registration Fee">
            </div>
            
             <div class="form-group col-md-6">
                 <label for="inputCity">Statement Fee</label>
                <input type="number" class="form-control" name="statement_fee"  id="statement_fee" placeholder="Statement Fee">
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                     <label for="inputCity">Loan Application Fee</label>
                    <input type="number" class="form-control" name="loan_application_fee"  id="loan_application_fee" value="">
            </div>
            <div class="form-group col-md-6">
                     <label for="inputCity">Total Amount Paid</label>
                    <input type="number" class="form-control" name="total_amount_paid"  id="total_amount_paid" value="">
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Save Transaction</button>
        <a href="#content" onclick="newTransaction()" class="btn btn-primary" style="margin-left: 20px;width:200px;">Cancel</a>
        <%
            try{
                String member_registration_number = request.getParameter("member_registration_number");
                String member_account_number = request.getParameter("member_account_number");
                String transaction_reference = request.getParameter("transaction_reference").toUpperCase();
                String member_full_name = request.getParameter("member_fullname").toUpperCase();
                String bank_account_number = request.getParameter("bank_account_number");
                String shares_amount = request.getParameter("share_amount");
                String loan_amount = request.getParameter("loan_amount");
                String savings_amount = request.getParameter("savings_amount");
                String total_amount_paid = request.getParameter("total_amount");
                String serving_agent = request.getParameter("loan_officer").toUpperCase();
                String serving_agent_remarks = request.getParameter("loan_officer_remarks");
                String trans_date = request.getParameter("transaction_date");

                SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
                Date startDate = df.parse(trans_date);

                java.sql.Date transaction_date = new java.sql.Date(startDate.getTime());
                FunctionalitiesJ.initializeConnection();            
                String result = FunctionalitiesJ.newMemberPosting(member_registration_number, member_account_number, transaction_reference,
                        member_full_name, bank_account_number, shares_amount, loan_amount, savings_amount, total_amount_paid, 
                        serving_agent, serving_agent_remarks, String.valueOf(transaction_date));
                FunctionalitiesJ.closeConnection();
                if(result.equals("success")){
                    response.sendRedirect("mainframe.jsp?function_name=newTransaction");
                }else if(result.equals("failure")){

                }
             }catch(Exception e){
                e.printStackTrace();
            }
            
            
        %>
        </form>
    </body>
</html>
