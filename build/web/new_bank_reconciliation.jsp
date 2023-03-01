<%-- 
    Document   : new_bank_reconciliation
    Created on : 14-Dec-2019, 14:49:01
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
        <title>New Bank Reconciliation</title>
    </head>
    <body>
        <div id="content_provider">
        <div class="alert alert-success" role="alert" style="text-align: center;">New Bank Reconciliation Statement</div>
        
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
        <form method="post" style="margin:10px;padding:10px;" action="new_bank_reconciliation.jsp">
            <div class="alert alert-success" role="alert" style="text-align: center;">
            Bank Reconciliation Details
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputCity">Bank Account</label>
                    <select name="bank_account" id="bank_account" class="form-control select2" required>
                      <option value="130390430934">130390430934-KCB</option>
                      <option value="130399304334">130390439034-EQUITY</option>
                      <option value="130393984444">130393984444-STANDARD CHARTERED</option>
                      <option value="130392030454">130392030454-ABC BANK</option>
                      <option value="130392490044">130392490044-BARCLAYS</option>
                      <option value="130390930244">130390930244-CO-OPERATIVE</option>
                    </select>
                </div>
                 <div class="form-group col-md-6">
                      <label for="inputCity">Transfer Date</label>
                       <input type="date" class="form-control" name="transfer_date" id="transfer_date" placeholder="Member Registration Number">  
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                      <label for="inputCity">Book Balance</label>
                       <input type="number" class="form-control" name="book_balance" id="book_balance" placeholder="Book Balance">  
                </div> 
                <div class="form-group col-md-6">
                      <label for="inputCity">Bank Charges</label>
                       <input type="number" class="form-control" name="bank_charges" id="bank_charges" placeholder="Bank Charges">  
                </div> 
            </div>
          <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputCity">Interest Income</label>
                    <input type="number" class="form-control" name="interest_income" id="interest_income" placeholder="Interest Income">  
                </div> 
                <div class="form-group col-md-6">
                    <label for="inputCity">Balance As Per Bank Statement</label>
                    <input type="text" class="form-control" name="balance" id="balance" placeholder="Balance As Per Bank Statement">
                </div>
          </div>
            <button class="btn btn-primary" type="submit">Save Reconciliation Statement</button>
            <button class="btn btn-primary" type="reset" style="margin-left: 20px;width:200px;">Cancel</button>
        <%
            try{
                String bank_account = request.getParameter("bank_account").toUpperCase();
                String book_balance = request.getParameter("book_balance");
                String bank_charges = request.getParameter("bank_charges");
                String interest_income = request.getParameter("interest_income");
                String balance_as_per_bank_statement = request.getParameter("balance");
                String opening_date = request.getParameter("transfer_date");

                SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
                Date startDate = df.parse(opening_date);

                java.sql.Date transaction_date = new java.sql.Date(startDate.getTime());
                FunctionalitiesJ.initializeConnection();            
                String result = FunctionalitiesJ.newBankReconciliation(bank_account, Double.parseDouble(book_balance), Double.parseDouble(bank_charges), 
                        String.valueOf(transaction_date), Double.parseDouble(interest_income), Double.parseDouble(balance_as_per_bank_statement));
                FunctionalitiesJ.closeConnection();
                if(result.equals("success")){
                    response.sendRedirect("mainframe.jsp?function_name=newReconciliation");
                }else if(result.equals("failure")){

                }
             }catch(Exception e){
                e.printStackTrace();
            }
            
            %>
        </form>
      </div>
    </body>
</html>
