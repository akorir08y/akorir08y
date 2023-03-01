<%-- 
    Document   : new_fund_transfer
    Created on : 09-Dec-2019, 09:38:34
    Author     : Keitany
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Fund Transfer</title>
    </head>
    <body>
        <div id="content_provider">
        <div class="alert alert-success" role="alert" style="text-align: center;">New Fund Transfer</div>
        
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
        <form method="post" style="margin:10px;padding:10px;" action="new_fund_transfer.jsp">
            <div class="alert alert-success" role="alert" style="text-align: center;">
            Fund Transfer Details
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputCity">Transfer From</label>
                    <select name="transfer_from" id="transfer_from" class="form-control select2" required>
                      <option value="130390430934">130390430934-KCB</option>
                      <option value="130399304334">130390439034-EQUITY</option>
                      <option value="130393984444">130393984444-STANDARD CHARTERED</option>
                      <option value="130392030454">130392030454-ABC BANK</option>
                      <option value="130392490044">130392490044-BARCLAYS</option>
                      <option value="130390930244">130390930244-CO-OPERATIVE</option>
                    </select>
                </div>
                 <div class="form-group col-md-6">
                   <label for="inputCity">Transfer To</label>
                    <select name="transfer_to" id="transfer_to" class="form-control select2" required>
                      <option value="130390430934">130390430934-KCB</option>
                      <option value="130399304334">130390439034-EQUITY</option>
                      <option value="130393984444">130393984444-STANDARD CHARTERED</option>
                      <option value="130392030454">130392030454-ABC BANK</option>
                      <option value="130392490044">130392490044-BARCLAYS</option>
                      <option value="130390930244">130390930244-CO-OPERATIVE</option>
                    </select>                   
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                      <label for="inputCity">Transfer Date</label>
                       <input type="date" class="form-control" name="transfer_date" id="transfer_date" placeholder="Member Registration Number">  
                </div> 
                <div class="form-group col-md-6">
                      <label for="inputCity">Amount</label>
                       <input type="text" class="form-control" name="amount" id="amount" placeholder="Amount">  
                </div> 
            </div>
          <div class="form-group">
            <label for="inputCity">Memo/Description</label>
            <textarea class="form-control" name="description" id="description" rows="3" placeholder="Description"></textarea>
          </div>
     <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputCity">Account Balance 1(Transferred From)</label>
            <input type="text" class="form-control" name="amount_balance1" id="amount_balance1" placeholder="Account Balance 1(Transferred From)" disabled>
        </div> 
         <div class="form-group col-md-6">
            <label for="inputCity">Account Balance 2(Transferred to)</label>
            <input type="text" class="form-control" name="amount_balance2" id="amount_balance2" placeholder="Account Balance 2(Transferred To)" disabled>
          </div>
     </div>
        <button type="submit" class="btn btn-primary">Save Fund Transfer</button>
        <button type="reset" class="btn btn-primary" style="width:200px;margin-left: 20px;">Cancel</button>
        </form>
        </div>
    </body>
</html>
