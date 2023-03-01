<%-- 
    Document   : new_direct_expense
    Created on : 14-Dec-2019, 13:53:25
    Author     : Keitany
--%>

<%@page import="Functionalities.FunctionalitiesJ"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%
            String redirect_url = "";
            try{
                String bank_account = request.getParameter("bank_account");
                String payment_mode = request.getParameter("payment_method");
                String total_amount = request.getParameter("total_amount");
                String cheque_number = request.getParameter("bank_charges");
                String description = request.getParameter("interest_income");
                String account_1 = request.getParameter("ledger_account1");
                String expense_1_description = request.getParameter("account_description1");
                String expense_1_amount = request.getParameter("amount1");
                String expense_1_vat = request.getParameter("item_vat_1");
                String account_2 = request.getParameter("ledger_account2");
                String expense_2_description = request.getParameter("account_description2");
                String expense_2_amount = request.getParameter("amount2");
                String expense_2_vat = request.getParameter("item_vat_2");
                String account_3 = request.getParameter("ledger_account3");
                String expense_3_description = request.getParameter("account_description3");
                String expense_3_amount = request.getParameter("amount3");
                String expense_3_vat = request.getParameter("item_vat_3");
                String serving_agent = request.getParameter("serving_agent");
                String total_net_amount = request.getParameter("net_amount");
                String total_vat_amount = request.getParameter("vat_amount");
                String total_gross_amount = request.getParameter("gross_amount");
                String account_4 = request.getParameter("ledger_account4");
                String expense_4_description = request.getParameter("account_description4");
                String expense_4_amount = request.getParameter("amount4");
                String expense_4_vat = request.getParameter("item_vat_4");
                String account_5 = request.getParameter("ledger_account5");
                String expense_5_amount = request.getParameter("amount5");
                String expense_5_description = request.getParameter("account_description5");
                String expense_5_vat = request.getParameter("item_vat_5");
                String account_6 = request.getParameter("ledger_account6");
                String expense_6_description = request.getParameter("amount6");
                String expense_6_amount = request.getParameter("account_description6");
                String expense_6_vat = request.getParameter("item_vat_6");
                String account_7 = request.getParameter("ledger_account7");
                String expense_7_description = request.getParameter("account_description7");
                String expense_7_amount = request.getParameter("amount7");
                String expense_7_vat= request.getParameter("item_vat_7");
                String account_8 = request.getParameter("ledger_account8");
                String expense_8_description = request.getParameter("account_description8");
                String expense_8_amount = request.getParameter("amount8");
                String expense_8_vat = request.getParameter("item_vat_8");
                String account_9 = request.getParameter("ledger_account9");
                String expense_9_description = request.getParameter("account_description9");
                String expense_9_amount = request.getParameter("amount9");
                String expense_9_vat= request.getParameter("item_vat_9");
                String account_10 = request.getParameter("ledger_account10");
                String expense_10_description = request.getParameter("account_description10");
                String expense_10_amount = request.getParameter("amount10");
                String expense_10_vat= request.getParameter("item_vat_10");
                String account_11 = request.getParameter("ledger_account11");
                String expense_11_description = request.getParameter("account_description11");
                String expense_11_amount = request.getParameter("amount11");
                String expense_11_vat = request.getParameter("item_vat_11");
                String account_12 = request.getParameter("ledger_account12");
                String expense_12_description = request.getParameter("account_description12");
                String expense_12_amount = request.getParameter("amount12");
                String expense_12_vat= request.getParameter("item_vat_12");
                String opening_date = request.getParameter("transfer_date");

                SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
                Date startDate = df.parse(opening_date);

                java.sql.Date transaction_date = new java.sql.Date(startDate.getTime());
                FunctionalitiesJ.initializeConnection();            
                String result = FunctionalitiesJ.newDirectExpense(bank_account, payment_mode, total_amount, 
                        cheque_number, description, account_1, expense_1_description, Double.parseDouble(expense_1_amount), expense_1_vat, 
                        account_2, expense_2_description, Double.parseDouble(expense_2_amount), expense_2_vat, account_3, 
                        expense_3_description, Double.parseDouble(expense_3_amount), expense_3_vat, serving_agent, String.valueOf(transaction_date), 
                        Double.parseDouble(total_net_amount), Double.parseDouble(total_vat_amount), Double.parseDouble(total_gross_amount));
                String result1 = FunctionalitiesJ.addExpenses(account_4, expense_4_description, Double.parseDouble(expense_4_amount), 
                        expense_4_vat, account_5, expense_5_description, Double.parseDouble(expense_5_amount), expense_5_vat, account_6,
                        expense_6_description, Double.parseDouble(expense_6_amount), expense_6_vat, account_7, expense_7_description, 
                        Double.parseDouble(expense_7_amount), expense_7_vat, account_8, expense_8_description, Double.parseDouble(expense_8_amount), 
                        expense_8_vat, account_9, expense_9_description, Double.parseDouble(expense_9_amount), expense_9_vat, 
                        account_10, expense_10_description, Double.parseDouble(expense_10_amount), expense_10_vat, account_11, 
                        expense_11_description, Double.parseDouble(expense_11_amount), expense_11_vat, account_12, expense_12_description,
                        Double.parseDouble(expense_12_amount), expense_12_vat);
                FunctionalitiesJ.closeConnection();
                if(result.equals("success")&&result1.equals("success")){
                    redirect_url="mainframe.jsp?function_name=newDirectExpense";
                }else if(result.equals("failure")&&result1.equals("success")){

                }else if(result.equals("success")){
                    redirect_url="mainframe.jsp?function_name=newDirectExpense";
                }
             }catch(Exception e){
                e.printStackTrace();
            }
            
%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Direct Expense</title>
    </head>
    <body>
        <div id="content_provider">
        <div class="alert alert-success" role="alert" style="text-align: center;">New Direct Expense</div>
        
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
        <form method="post" style="margin:10px;padding:10px;" action="new_direct_expense.jsp">
            <div class="alert alert-success" role="alert" style="text-align: center;">
            Direct Expense Details
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
                   <label for="inputCity">Payment Mode</label>
                    <select name="payment_method" id="payment_method" class="form-control select2" required>
                      <option selected="selected">--Disbursed By--</option>
                      <option value="Cash">Cash</option>
                      <option value="Cheque">Cheque</option>
                      <option value="Wire Transfer">Wire Transfer</option>
                      <option value="Online Transfer">Online Transfer</option>
                  </select>             
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                      <label for="inputCity">Transfer Date</label>
                       <input type="date" class="form-control" name="transfer_date" id="transfer_date" placeholder="Member Registration Number">  
                </div> 
                <div class="form-group col-md-6">
                      <label for="inputCity">Cheque Number</label>
                       <input type="text" class="form-control" name="cheque_no" id="cheque_no" placeholder="Amount">  
                </div> 
            </div>
          <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputCity">Total Amount</label>
                    <input type="text" class="form-control" name="total_amount" id="total_amount" placeholder="Total Amount">  
                </div> 
                <div class="form-group col-md-6">
                    <label for="inputCity">Memo/Description</label>
                    <textarea class="form-control" name="description" id="description" rows="3" placeholder="Description"></textarea>
                </div>
          </div>
          <div class="alert alert-success" role="alert" style="text-align: center;">
                Add Items
            </div>
            <table class="table table-hover" style="margin:10px;padding:10px;">
                   
                   <tr>
                        <th scope="col">#</th>
                        <th scope="col">Account</th>
                        <th scope="col">VAT</th>
                        <th scope="col">Memo/Description</th>                        
                        <th scope="col">Amount</th>                        
                   </tr>                   
                   <tr> 
                       <th scope="row">1</th>
                       <td><select name="ledger_account1" id="ledger_account1" class="form-control select2" required>
                        <option selected="selected">--Select Account--</option>
                      <option value="130390430934">130390430934-KCB</option>
                      <option value="130399304334">130390439034-EQUITY</option>
                      <option value="130393984444">130393984444-STANDARD CHARTERED</option>
                      <option value="130392030454">130392030454-ABC BANK</option>
                      <option value="130392490044">130392490044-BARCLAYS</option>
                      <option value="130390930244">130390930244-CO-OPERATIVE</option>
                      <option value="130399304334">140390439034-DIAMOND TRUST</option>
                      <option value="130393984444">140393984444-RAFIKI MICRO-FINANCE</option>
                      <option value="130392030454">140392030454-KWFT</option>
                      <option value="130392490044">140392490044-CBA</option>
                      <option value="130390930244">140390930244-CITY BANK</option>
                      <option value="130390930244">140390930944-BANK OF INDIA</option>
                      </select></td>
                       <td><select name="item_vat_1" id="item_vat_1" class="form-control select2" required>
                      <option selected="selected">--Select VAT--</option>
                        <option value="0%">0%</option>
                        <option value="16%">16%</option>
                      </select></td>
                      <td><textarea class="form-control" name="account_description1" id="account_description1" rows="3" placeholder="Description"></textarea></td>
                      <td><input type="number" class="form-control prc " name="amount1" id="amount1" placeholder=""></td>                      
                   </tr>
                   <tr> 
                       <th scope="row">2</th>
                       <td><select name="ledger_account2" id="ledger_account2" class="form-control select2" required>
                        <option selected="selected">--Select Account--</option>
                      <option value="130390430934">130390430934-KCB</option>
                      <option value="130399304334">130390439034-EQUITY</option>
                      <option value="130393984444">130393984444-STANDARD CHARTERED</option>
                      <option value="130392030454">130392030454-ABC BANK</option>
                      <option value="130392490044">130392490044-BARCLAYS</option>
                      <option value="130390930244">130390930244-CO-OPERATIVE</option>
                      <option value="130399304334">140390439034-DIAMOND TRUST</option>
                      <option value="130393984444">140393984444-RAFIKI MICRO-FINANCE</option>
                      <option value="130392030454">140392030454-KWFT</option>
                      <option value="130392490044">140392490044-CBA</option>
                      <option value="130390930244">140390930244-CITY BANK</option>
                      <option value="130390930244">140390930944-BANK OF INDIA</option>
                      </select></td>
                       <td><select name="item_vat_2" id="item_vat_2" class="form-control select2" required>
                      <option selected="selected">--Select VAT--</option>
                        <option value="0%">0%</option>
                        <option value="16%">16%</option>
                      </select></td>
                      <td><textarea class="form-control" name="account_description2" id="account_description2" rows="3" placeholder="Description"></textarea></td>
                      <td><input type="number" class="form-control prc " name="amount2" id="amount2" placeholder=""></td>                      
                   </tr>
                   <tr> 
                       <th scope="row">3</th>
                       <td><select name="ledger_account3" id="ledger_account3" class="form-control select2" required>
                        <option selected="selected">--Select Account--</option>
                      <option value="130390430934">130390430934-KCB</option>
                      <option value="130399304334">130390439034-EQUITY</option>
                      <option value="130393984444">130393984444-STANDARD CHARTERED</option>
                      <option value="130392030454">130392030454-ABC BANK</option>
                      <option value="130392490044">130392490044-BARCLAYS</option>
                      <option value="130390930244">130390930244-CO-OPERATIVE</option>
                      <option value="130399304334">140390439034-DIAMOND TRUST</option>
                      <option value="130393984444">140393984444-RAFIKI MICRO-FINANCE</option>
                      <option value="130392030454">140392030454-KWFT</option>
                      <option value="130392490044">140392490044-CBA</option>
                      <option value="130390930244">140390930244-CITY BANK</option>
                      <option value="130390930244">140390930944-BANK OF INDIA</option>
                      </select></td>
                       <td><select name="item_vat_3" id="item_vat_3" class="form-control select2" required>
                      <option selected="selected">--Select VAT--</option>
                        <option value="0%">0%</option>
                        <option value="16%">16%</option>
                      </select></td>
                      <td><textarea class="form-control" name="account_description3" id="account_description3" rows="3" placeholder="Description"></textarea></td>
                      <td><input type="number" class="form-control prc " name="amount3" id="amount3" placeholder=""></td>                      
                   </tr>
                   <tr>
                       <td colspan="5"><div class="alert alert-success" style="text-align: center;" role="alert" onclick="itemsListA();">
                        Add Additional Items
                        </div></td>
                   </tr>
            </table>
            <div id="item_lista">
            <table class="table table-hover" style="margin:10px;padding:10px;">                  
                   <tr> 
                       <th scope="row">4</th>
                       <td><select name="ledger_account4" id="ledger_account4" class="form-control select2" required>
                        <option selected="selected">--Select Account--</option>
                      <option value="130390430934">130390430934-KCB</option>
                      <option value="130399304334">130390439034-EQUITY</option>
                      <option value="130393984444">130393984444-STANDARD CHARTERED</option>
                      <option value="130392030454">130392030454-ABC BANK</option>
                      <option value="130392490044">130392490044-BARCLAYS</option>
                      <option value="130390930244">130390930244-CO-OPERATIVE</option>
                      <option value="130399304334">140390439034-DIAMOND TRUST</option>
                      <option value="130393984444">140393984444-RAFIKI MICRO-FINANCE</option>
                      <option value="130392030454">140392030454-KWFT</option>
                      <option value="130392490044">140392490044-CBA</option>
                      <option value="130390930244">140390930244-CITY BANK</option>
                      <option value="130390930244">140390930944-BANK OF INDIA</option>
                      </select></td>
                       <td><select name="item_vat_4" id="item_vat_4" class="form-control select2" required>
                      <option selected="selected">--Select VAT--</option>
                        <option value="0%">0%</option>
                        <option value="16%">16%</option>
                      </select></td>
                      <td><textarea class="form-control" name="account_description4" id="account_description4" rows="3" placeholder="Description"></textarea></td>
                      <td><input type="number" class="form-control prc " name="amount4" id="amount4" placeholder=""></td>                      
                   </tr>
                   <tr> 
                       <th scope="row">5</th>
                       <td><select name="ledger_account5" id="ledger_account5" class="form-control select2" required>
                        <option selected="selected">--Select Account--</option>
                      <option value="130390430934">130390430934-KCB</option>
                      <option value="130399304334">130390439034-EQUITY</option>
                      <option value="130393984444">130393984444-STANDARD CHARTERED</option>
                      <option value="130392030454">130392030454-ABC BANK</option>
                      <option value="130392490044">130392490044-BARCLAYS</option>
                      <option value="130390930244">130390930244-CO-OPERATIVE</option>
                      <option value="130399304334">140390439034-DIAMOND TRUST</option>
                      <option value="130393984444">140393984444-RAFIKI MICRO-FINANCE</option>
                      <option value="130392030454">140392030454-KWFT</option>
                      <option value="130392490044">140392490044-CBA</option>
                      <option value="130390930244">140390930244-CITY BANK</option>
                      <option value="130390930244">140390930944-BANK OF INDIA</option>
                      </select></td>
                       <td><select name="item_vat_5" id="item_vat_5" class="form-control select2" required>
                      <option selected="selected">--Select VAT--</option>
                        <option value="0%">0%</option>
                        <option value="16%">16%</option>
                      </select></td>
                      <td><textarea class="form-control" name="account_description5" id="account_description5" rows="3" placeholder="Description"></textarea></td>
                      <td><input type="number" class="form-control prc " name="amount5" id="amount5" placeholder=""></td>                      
                   </tr>
                   <tr> 
                       <th scope="row">6</th>
                       <td><select name="ledger_account6" id="ledger_account6" class="form-control select2" required>
                        <option selected="selected">--Select Account--</option>
                      <option value="130390430934">130390430934-KCB</option>
                      <option value="130399304334">130390439034-EQUITY</option>
                      <option value="130393984444">130393984444-STANDARD CHARTERED</option>
                      <option value="130392030454">130392030454-ABC BANK</option>
                      <option value="130392490044">130392490044-BARCLAYS</option>
                      <option value="130390930244">130390930244-CO-OPERATIVE</option>
                      <option value="130399304334">140390439034-DIAMOND TRUST</option>
                      <option value="130393984444">140393984444-RAFIKI MICRO-FINANCE</option>
                      <option value="130392030454">140392030454-KWFT</option>
                      <option value="130392490044">140392490044-CBA</option>
                      <option value="130390930244">140390930244-CITY BANK</option>
                      <option value="130390930244">140390930944-BANK OF INDIA</option>
                      </select></td>
                       <td><select name="item_vat_6" id="item_vat_6" class="form-control select2" required>
                      <option selected="selected">--Select VAT--</option>
                        <option value="0%">0%</option>
                        <option value="16%">16%</option>
                      </select></td>
                      <td><textarea class="form-control" name="account_description6" id="account_description6" rows="3" placeholder="Description"></textarea></td>
                      <td><input type="number" class="form-control prc " name="amount6" id="amount6" placeholder=""></td>                      
                   </tr>
                   <tr>
                       <td colspan="5"><div class="alert alert-success" style="text-align: center;" role="alert" onclick="itemsListB();">
                        Add Additional Items
                        </div></td>
                   </tr>
            </table>
            <div id="item_listb">
            <table class="table table-hover" style="margin:10px;padding:10px;">              
                   <tr> 
                       <th scope="row">7</th>
                       <td><select name="ledger_account7" id="ledger_account7" class="form-control select2" required>
                        <option selected="selected">--Select Account--</option>
                      <option value="130390430934">130390430934-KCB</option>
                      <option value="130399304334">130390439034-EQUITY</option>
                      <option value="130393984444">130393984444-STANDARD CHARTERED</option>
                      <option value="130392030454">130392030454-ABC BANK</option>
                      <option value="130392490044">130392490044-BARCLAYS</option>
                      <option value="130390930244">130390930244-CO-OPERATIVE</option>
                      <option value="130399304334">140390439034-DIAMOND TRUST</option>
                      <option value="130393984444">140393984444-RAFIKI MICRO-FINANCE</option>
                      <option value="130392030454">140392030454-KWFT</option>
                      <option value="130392490044">140392490044-CBA</option>
                      <option value="130390930244">140390930244-CITY BANK</option>
                      <option value="130390930244">140390930944-BANK OF INDIA</option>
                      </select></td>
                       <td><select name="item_vat_7" id="item_vat_7" class="form-control select2" required>
                      <option selected="selected">--Select VAT--</option>
                        <option value="0%">0%</option>
                        <option value="16%">16%</option>
                      </select></td>
                      <td><textarea class="form-control" name="account_description7" id="account_description7" rows="3" placeholder="Description"></textarea></td>
                      <td><input type="number" class="form-control prc " name="amount7" id="amount7" placeholder=""></td>                      
                   </tr>
                   <tr> 
                       <th scope="row">8</th>
                       <td><select name="ledger_account8" id="ledger_account8" class="form-control select2" required>
                        <option selected="selected">--Select Account--</option>
                      <option value="130390430934">130390430934-KCB</option>
                      <option value="130399304334">130390439034-EQUITY</option>
                      <option value="130393984444">130393984444-STANDARD CHARTERED</option>
                      <option value="130392030454">130392030454-ABC BANK</option>
                      <option value="130392490044">130392490044-BARCLAYS</option>
                      <option value="130390930244">130390930244-CO-OPERATIVE</option>
                      <option value="130399304334">140390439034-DIAMOND TRUST</option>
                      <option value="130393984444">140393984444-RAFIKI MICRO-FINANCE</option>
                      <option value="130392030454">140392030454-KWFT</option>
                      <option value="130392490044">140392490044-CBA</option>
                      <option value="130390930244">140390930244-CITY BANK</option>
                      <option value="130390930244">140390930944-BANK OF INDIA</option>
                      </select></td>
                       <td><select name="item_vat_8" id="item_vat_8" class="form-control select2" required>
                      <option selected="selected">--Select VAT--</option>
                        <option value="0%">0%</option>
                        <option value="16%">16%</option>
                      </select></td>
                      <td><textarea class="form-control" name="account_description8" id="account_description8" rows="3" placeholder="Description"></textarea></td>
                      <td><input type="number" class="form-control prc " name="amount8" id="amount8" placeholder=""></td>                      
                   </tr>
                   <tr> 
                       <th scope="row">9</th>
                       <td><select name="ledger_account9" id="ledger_account9" class="form-control select2" required>
                        <option selected="selected">--Select Account--</option>
                      <option value="130390430934">130390430934-KCB</option>
                      <option value="130399304334">130390439034-EQUITY</option>
                      <option value="130393984444">130393984444-STANDARD CHARTERED</option>
                      <option value="130392030454">130392030454-ABC BANK</option>
                      <option value="130392490044">130392490044-BARCLAYS</option>
                      <option value="130390930244">130390930244-CO-OPERATIVE</option>
                      <option value="130399304334">140390439034-DIAMOND TRUST</option>
                      <option value="130393984444">140393984444-RAFIKI MICRO-FINANCE</option>
                      <option value="130392030454">140392030454-KWFT</option>
                      <option value="130392490044">140392490044-CBA</option>
                      <option value="130390930244">140390930244-CITY BANK</option>
                      <option value="130390930244">140390930944-BANK OF INDIA</option>
                      </select></td>
                       <td><select name="item_vat_9" id="item_vat_9" class="form-control select2" required>
                      <option selected="selected">--Select VAT--</option>
                        <option value="0%">0%</option>
                        <option value="16%">16%</option>
                      </select></td>
                      <td><textarea class="form-control" name="account_description9" id="account_description9" rows="3" placeholder="Description"></textarea></td>
                      <td><input type="number" class="form-control prc " name="amount9" id="amount9" placeholder=""></td>                      
                   </tr>
                   <tr>
                       <td colspan="5"><div class="alert alert-success" style="text-align: center;" role="alert" onclick="itemsListC();">
                        Add Additional Items
                        </div></td>
                   </tr>
            </table>
            <div id="item_listc">
            <table class="table table-hover" style="margin:10px;padding:10px;">                  
                   <tr> 
                       <th scope="row">10</th>
                       <td><select name="ledger_account10" id="ledger_account10" class="form-control select2" required>
                        <option selected="selected">--Select Account--</option>
                      <option value="130390430934">130390430934-KCB</option>
                      <option value="130399304334">130390439034-EQUITY</option>
                      <option value="130393984444">130393984444-STANDARD CHARTERED</option>
                      <option value="130392030454">130392030454-ABC BANK</option>
                      <option value="130392490044">130392490044-BARCLAYS</option>
                      <option value="130390930244">130390930244-CO-OPERATIVE</option>
                      <option value="130399304334">140390439034-DIAMOND TRUST</option>
                      <option value="130393984444">140393984444-RAFIKI MICRO-FINANCE</option>
                      <option value="130392030454">140392030454-KWFT</option>
                      <option value="130392490044">140392490044-CBA</option>
                      <option value="130390930244">140390930244-CITY BANK</option>
                      <option value="130390930244">140390930944-BANK OF INDIA</option>
                      </select></td>
                       <td><select name="item_vat_10" id="item_vat_10" class="form-control select2" required>
                      <option selected="selected">--Select VAT--</option>
                        <option value="0%">0%</option>
                        <option value="16%">16%</option>
                      </select></td>
                      <td><textarea class="form-control" name="account_description10" id="account_description10" rows="3" placeholder="Description"></textarea></td>
                      <td><input type="number" class="form-control prc " name="amount10" id="amount10" placeholder=""></td>                      
                   </tr>
                   <tr> 
                       <th scope="row">11</th>
                       <td><select name="ledger_account11" id="ledger_account11" class="form-control select2" required>
                        <option selected="selected">--Select Account--</option>
                      <option value="130390430934">130390430934-KCB</option>
                      <option value="130399304334">130390439034-EQUITY</option>
                      <option value="130393984444">130393984444-STANDARD CHARTERED</option>
                      <option value="130392030454">130392030454-ABC BANK</option>
                      <option value="130392490044">130392490044-BARCLAYS</option>
                      <option value="130390930244">130390930244-CO-OPERATIVE</option>
                      <option value="130399304334">140390439034-DIAMOND TRUST</option>
                      <option value="130393984444">140393984444-RAFIKI MICRO-FINANCE</option>
                      <option value="130392030454">140392030454-KWFT</option>
                      <option value="130392490044">140392490044-CBA</option>
                      <option value="130390930244">140390930244-CITY BANK</option>
                      <option value="130390930244">140390930944-BANK OF INDIA</option>
                      </select></td>
                       <td><select name="item_vat_11" id="item_vat_11" class="form-control select2" required>
                      <option selected="selected">--Select VAT--</option>
                        <option value="0%">0%</option>
                        <option value="16%">16%</option>
                      </select></td>
                      <td><textarea class="form-control" name="account_description11" id="account_description11" rows="3" placeholder="Description"></textarea></td>
                      <td><input type="number" class="form-control prc " name="amount11" id="amount11" placeholder=""></td>                      
                   </tr>
                   <tr> 
                       <th scope="row">12</th>
                       <td><select name="ledger_account12" id="ledger_account12" class="form-control select2" required>
                        <option selected="selected">--Select Account--</option>
                      <option value="130390430934">130390430934-KCB</option>
                      <option value="130399304334">130390439034-EQUITY</option>
                      <option value="130393984444">130393984444-STANDARD CHARTERED</option>
                      <option value="130392030454">130392030454-ABC BANK</option>
                      <option value="130392490044">130392490044-BARCLAYS</option>
                      <option value="130390930244">130390930244-CO-OPERATIVE</option>
                      <option value="130399304334">140390439034-DIAMOND TRUST</option>
                      <option value="130393984444">140393984444-RAFIKI MICRO-FINANCE</option>
                      <option value="130392030454">140392030454-KWFT</option>
                      <option value="130392490044">140392490044-CBA</option>
                      <option value="130390930244">140390930244-CITY BANK</option>
                      <option value="130390930244">140390930944-BANK OF INDIA</option>
                      </select></td>
                       <td><select name="item_vat_12" id="item_vat_12" class="form-control select2" required>
                      <option selected="selected">--Select VAT--</option>
                        <option value="0%">0%</option>
                        <option value="16%">16%</option>
                      </select></td>
                      <td><textarea class="form-control" name="account_description12" id="account_description12" rows="3" placeholder="Description"></textarea></td>
                      <td><input type="number" class="form-control prc " name="amount12" id="amount12" placeholder=""></td>                      
                   </tr>
            </table>                    
            </div>
            </div>
            </div>
            
            <div class="form-row">
                <div class="form-group col-md-4">
                      <label for="inputCity">Total Net Amount</label>
                       <input type="number" class="form-control" name="net_amount" id="net_amount" placeholder="Net Amount">  
                </div> 
                <div class="form-group col-md-4">
                      <label for="inputCity">Total VAT Amount</label>
                       <input type="number" class="form-control" name="vat_amount" id="vat_amount" placeholder=" VAT Amount">  
                </div>
                 <div class="form-group col-md-4">
                      <label for="inputCity">Total Gross Amount</label>
                       <input type="number" class="form-control" name="gross_amount" id="gross_amount" placeholder=" Gross Amount">  
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-4">
                      <label for="inputCity">Current Account Balance</label>
                       <input type="number" class="form-control" name="account_balance" id="account_balance" placeholder="Current Balance">  
                </div> 
                <div class="form-group col-md-4">
                      <label for="inputCity">Amount Payable</label>
                       <input type="number" class="form-control" name="amount_payable" id="amount_payable" placeholder=" VAT Amount">  
                </div>
                 <div class="form-group col-md-4">
                      <label for="inputCity">New Account Balance</label>
                       <input type="number" class="form-control" name="new_account_balance" id="new_account_balance" placeholder="New Current Balance">  
                </div>
            </div>
            <button class="btn btn-primary" type="submit">Save Direct Expense</button>
            <button class="btn btn-primary" type="reset" style="margin-left: 20px;width:200px;">Cancel</button>

        </form>
        </div>
    </body>
</html>
