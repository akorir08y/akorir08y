<%-- 
    Document   : new_loan_recovery
    Created on : 28-Aug-2019, 12:10:37
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
        <div class="alert alert-success" role="alert" style="text-align: center;">New Loan Recovery Transaction</div>
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
                   

                }

            </script>
        
        <form method="post" style="margin:10px;padding:10px;" action="new_loan_recovery.jsp">
            <div class="alert alert-success" role="alert" style="text-align: center;">
            Member Information
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputCity">Member Registration Number</label>
                    <select name="member_registration_number"  id="member_registration_number" class="form-control select2" required>
                            <option selected='selected'>--Member Registration Number--</option>
                            <option value="00001">00001</option>
                            <option value="00002">00002</option>
                            <option value="00003">00003</option>
                            <option value="00004">00004</option>
                    </select>
                    </div>
                <div class="form-group col-md-6">
                    <label for="inputCity">Member Account Number</label>
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
                <label for="inputCity">Member Full Name</label>
                <input type="text" class="form-control" name="member_fullname" id="member_fullname" placeholder="Full Name">

              </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                <label for="inputCity">Loan Amount</label>
                <input type="text" class="form-control" name="loan_amount" id="loan_amount" placeholder="150000">
                </div>
                <div class="form-group col-md-6">
                <label for="inputCity">Amount Defaulted</label>
                <input type="text" class="form-control" name="amount_defaulted" id="amount_defaulted" placeholder="100000">

              </div>
            </div>
            <div class="alert alert-success" role="alert" style="text-align: center;">
            Guaranteed Amount and Amount Recovered
            </div>
            <div class="form-row">
                <div class="form-group col-md-4">
                  <label for="inputCity">Guarantor Number 1 </label>
                  <select name="guarantor_number_1" id="guarantor_number_1" class="form-control select2" required>
                      <option selected="selected">--Select Member Registration Number --</option>
                      <option value="130390430934">130390430934</option>
                      <option value="130399304334">130390439034</option>
                      <option value="130393984444">130393984444</option>
                      <option value="130392030454">130392030454</option>
                      <option value="130392490044">130392490044</option>
                      <option value="130390930244">130390930244</option>
                  </select>

                </div>
                <div class="form-group col-md-4">
                  <label for="inputCity">Guaranteed Amount </label>
                  <input type="number" class="form-control prc " name="guaranteed_amount1" id="guaranteed_amount1" placeholder="40000">

                </div>
                <div class="form-group col-md-4">
                  <label for="inputCity">Amount Recovered </label>
                  <input type="number" class="form-control prc " name="loan_amount" id="loan_amount" placeholder="Amount">

                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-4">
                  <label for="inputCity">Guarantor Number 2 </label>
                  <select name="guarantor_number_2" id="guarantor_number_2" class="form-control select2" required>
                      <option selected="selected">--Select Member Registration Number--</option>
                      <option value="130390430934">130390430934</option>
                      <option value="130399304334">130390439034</option>
                      <option value="130393984444">130393984444</option>
                      <option value="130392030454">130392030454</option>
                      <option value="130392490044">130392490044</option>
                      <option value="130390930244">130390930244</option>
                  </select>

                </div>
                <div class="form-group col-md-4">
                  <label for="inputCity">Guaranteed Amount </label>
                  <input type="number" class="form-control prc " name="guaranteed_amount2" id="guaranteed_amount2" placeholder="40000">

                </div>
                <div class="form-group col-md-4">
                  <label for="inputCity">Amount Recovered </label>
                  <input type="number" class="form-control prc " name="savings_amount" id="savings_amount" placeholder="Amount">

                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-4">
                  <label for="inputCity">Guarantor Number 3 </label>
                  <select name="guarantor_number_3" id="guarantor_number_3" class="form-control select2" required>
                      <option selected="selected">--Select Member Registration Number--</option>
                      <option value="130390430934">130390430934</option>
                      <option value="130399304334">130390439034</option>
                      <option value="130393984444">130393984444</option>
                      <option value="130392030454">130392030454</option>
                      <option value="130392490044">130392490044</option>
                      <option value="130390930244">130390930244</option>
                  </select>

                </div>
                <div class="form-group col-md-4">
                  <label for="inputCity">Guaranteed Amount </label>
                  <input type="number" class="form-control prc " name="guaranteed_amount3" id="guaranteed_amount3" placeholder="40000">

                </div>
                <div class="form-group col-md-4">
                  <label for="inputCity">Amount Recovered</label>
                  <input type="number" class="form-control prc " name="share_amount" id="share_amount" placeholder="Amount">

                </div>
            </div>
        
        <div class="form-row">            
             <div class="form-group col-md-6">
            <label for="inputCity">Serving Agent</label>
            <input type="text" class="form-control" name="loan_officer" id="loan_officer" placeholder="James Kuria">
             </div>
            
             <div class="form-group col-md-6">
                <label for="inputCity">Total Amount Paid</label>
                <input type="number" class="form-control" name="total_amount" 
                       onfocus="calculate();" onmouseover="calculate();" id="total_amount" value="">
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Save Recovery Transaction</button>
        <a href="#content" onclick="navigateMemberTransactions()" class="btn btn-primary" style="margin-left: 20px;width:200px;">Close</a>
        </form>
    </body>
</html>
