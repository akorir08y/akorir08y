<%-- 
    Document   : new_supplier_invoice
    Created on : 25-Nov-2019, 13:55:46
    Author     : Keitany
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="Functionalities.FunctionalitiesJ"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%
            String redirect_url = "";
            try{
                String supplier_full_name = request.getParameter("bank_account");
                String supplier_terms = request.getParameter("bank_account");
                String mailing_address = request.getParameter("book_balance");
                String invoice_number = request.getParameter("bank_charges");
                String amount = request.getParameter("interest_income");
                String ledger_account_1 = request.getParameter("balance");
                String expense_1_description = request.getParameter("bank_account");
                String expense_1_amount = request.getParameter("bank_account");
                String expense_1_vat = request.getParameter("book_balance");
                String ledger_account_2 = request.getParameter("bank_charges");
                String expense_2_description = request.getParameter("interest_income");
                String expense_2_amount = request.getParameter("balance");
                String expense_2_vat = request.getParameter("interest_income");
                String ledger_account_3 = request.getParameter("balance");
                String expense_3_description = request.getParameter("bank_account");
                String expense_3_amount = request.getParameter("bank_account");
                String expense_3_vat = request.getParameter("book_balance");
                String serving_agent = request.getParameter("bank_charges");
                String total_amount = request.getParameter("interest_income");
                String ledger_account_4 = request.getParameter("bank_account");
                String expense_4_description = request.getParameter("bank_account");
                String expense_4_amount = request.getParameter("book_balance");
                String expense_4_vat = request.getParameter("bank_charges");
                String ledger_account_5 = request.getParameter("interest_income");
                String expense_5_amount = request.getParameter("balance");
                String expense_5_description = request.getParameter("bank_account");
                String expense_5_vat = request.getParameter("bank_account");
                String ledger_account_6 = request.getParameter("book_balance");
                String expense_6_description = request.getParameter("bank_charges");
                String expense_6_amount = request.getParameter("interest_income");
                String expense_6_vat = request.getParameter("balance");
                String ledger_account_7 = request.getParameter("interest_income");
                String expense_7_description = request.getParameter("balance");
                String expense_7_amount = request.getParameter("bank_account");
                String expense_7_vat= request.getParameter("bank_account");
                String ledger_account_8 = request.getParameter("book_balance");
                String expense_8_description = request.getParameter("bank_charges");
                String expense_8_amount = request.getParameter("interest_income");
                String expense_8_vat = request.getParameter("balance");
                String ledger_account_9 = request.getParameter("interest_income");
                String expense_9_description = request.getParameter("balance");
                String expense_9_amount = request.getParameter("bank_account");
                String expense_9_vat= request.getParameter("bank_account");
                String ledger_account_10 = request.getParameter("interest_income");
                String expense_10_description = request.getParameter("balance");
                String expense_10_amount = request.getParameter("bank_account");
                String expense_10_vat= request.getParameter("bank_account");
                String ledger_account_11 = request.getParameter("book_balance");
                String expense_11_description = request.getParameter("bank_charges");
                String expense_11_amount = request.getParameter("interest_income");
                String expense_11_vat = request.getParameter("balance");
                String ledger_account_12 = request.getParameter("interest_income");
                String expense_12_description = request.getParameter("balance");
                String expense_12_amount = request.getParameter("bank_account");
                String expense_12_vat= request.getParameter("bank_account");
                String opening_date = request.getParameter("transfer_date");

                SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
                Date startDate = df.parse(opening_date);

                java.sql.Date transaction_date = new java.sql.Date(startDate.getTime());
                FunctionalitiesJ.initializeConnection();            
                String result = FunctionalitiesJ.newSupplierInvoice(supplier_full_name, supplier_terms, mailing_address, invoice_number, 
                        Double.parseDouble(amount), ledger_account_1, expense_1_description, expense_1_amount, expense_1_vat, ledger_account_2, 
                        expense_2_description, expense_2_amount, expense_2_vat, ledger_account_3, expense_3_description, expense_3_amount,
                        expense_3_vat, serving_agent, String.valueOf(transaction_date), total_amount);
                String result1 = FunctionalitiesJ.addSupplierInvoices(ledger_account_4, expense_4_description, 
                        expense_4_amount, expense_4_vat, ledger_account_5, expense_5_description, expense_5_amount, 
                        expense_5_vat, ledger_account_6, expense_6_description, expense_6_amount, expense_6_vat, 
                        ledger_account_7, expense_7_description, expense_7_amount, expense_7_vat, ledger_account_8, 
                        expense_8_description, expense_8_amount, expense_8_vat, ledger_account_9, expense_9_description,
                        expense_9_amount, expense_9_vat, ledger_account_10, expense_10_description, expense_10_amount, 
                        expense_10_vat, ledger_account_11, expense_11_description, expense_11_amount, expense_11_vat, 
                        ledger_account_12, expense_12_description, expense_12_amount, expense_12_vat);
                FunctionalitiesJ.closeConnection();
                if(result.equals("success")&&result1.equals("success")){
                    redirect_url="mainframe.jsp?function_name=newSupplierInvoice";
                }else if(result.equals("failure")&&result1.equals("success")){

                }else if(result.equals("success")){
                    redirect_url="mainframe.jsp?function_name=newSupplierInvoice";
                }
             }catch(Exception e){
                e.printStackTrace();
            }
            
%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Supplier Invoice</title>
    </head>
    <body>
        <div id="content_provider">
        <div class="alert alert-success" role="alert" style="text-align: center;">New Supplier Invoice</div>
        
        <ul class="nav nav-tabs" style="margin: 10px;">
        <li class="nav-item">
          <a onclick="newSupplier()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">New Supplier</a>
        </li>
        <li class="nav-item">
          <a onclick="viewSuppliers()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">View Suppliers</a>
        </li>
        <li class="nav-item">
          <a onclick="newSupplierInvoice()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">New Supplier Invoices</a>
        </li>
        <li class="nav-item">
          <a onclick="viewSupplierInvoices()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">View Supplier Invoices</a>
        </li>
        <li class="nav-item">
          <a onclick="newSupplierCreditMemo()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">New Supplier Credit Memo</a>
        </li>
        <li class="nav-item">
          <a onclick="viewSupplierCreditMemos()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">View Supplier Credit Memos</a>
        </li>
        <li class="nav-item">
          <a onclick="newBillPayment()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">New Bill Payment</a>
        </li>
        <li class="nav-item">
          <a onclick="viewBillPayments()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">View Bill Payments</a>
        </li>
        <li class="nav-item">
          <a onclick="nonMemberTransactions()" style="background-color: lightcyan;" class="nav-link active" href="#content">Close</a>
        </li>
        </ul>
        <form method="post" style="margin:10px;padding:10px;" action="new_supplier_invoice.jsp">
            <div class="alert alert-success" role="alert" style="text-align: center;">
             New Supplier Invoice Information
            </div>
            <div class="form-row">
            <div class="form-group col-md-6">
                <label for="TransactionDate">Transaction Date</label>
                <input type="date" class="form-control" name="transaction_date" id="transaction_date" placeholder="Branch Name" required>
            </div>
                <div class="form-group col-md-6">
                    <label for="Client">Suppliers</label>
                        <select name="supplier_name" id="supplier_name" class="form-control select2" required>
                                <option selected='selected'>All Suppliers</option>
                                <option value="Ishano Distributors">Ishano Distributors</option>
                                <option value="Bollore Logistics">Bollore Logistics</option>
                                <option value="Cannon Logistics">Cannon Logistics</option>
                                <option value="Ibrahim's Enterprises">Ibrahim's Enterprises</option>
                                <option value="Kam Pharmacy">Kam Pharmacy</option>
                                <option value="RangeChem Enterprises">RangeChem Enterprises</option>
                        </select>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputCity">Supplier Terms</label>
                    <input type="text" class="form-control" name="supplier_terms" id="supplier_terms" placeholder="Supplier Terms">
                </div>
                <div class="form-group col-md-6">
                    <label for="inputCity">Supplier Mailing Address</label>
                    <input type="text" class="form-control" name="address" id="address" placeholder="Mailing Address">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputCity">Supplier Invoice Number</label>
                    <input type="text" class="form-control" name="invoice_number" id="invoice_number" placeholder="Supplier Invoice Number">
                </div>
                <div class="form-group col-md-6">
                    <label for="inputCity">Amount</label>
                    <input type="text" class="form-control" name="amount" id="amount" placeholder="Amount">
                </div>
            </div>
            <div class="alert alert-success" role="alert" style="text-align: center;">
               Expenses
            </div>
            <div class="form-row">
                    <div class="form-group col-md-3">
                      <label for="inputCity">Ledger Account 1</label>
                      <select name="ledger_account_1" id="ledger_account_1" class="form-control select2" required>
                        <option selected='selected'>--Select Ledger Account--</option>
                                <option value="Accomodation Expenses">Accomodation Expenses</option>
                                <option value="Accounts Payable">Accounts Payable</option>
                                <option value="Account Receivable">Account Receivable</option>
                                <option value="Accrued Business Acquisition Costs">Accrued Business Acquisition Costs</option>
                                <option value="Accrued Bank Service Charges">Accrued Bank Service Charges</option>
                                <option value="Bad Debts">Bad Debts</option>
                                <option value="Accrued Directors Allowance">Accrued Directors Allowance</option>
                                <option value="Accrued Salaries">Accrued Salaries</option>
                      </select>

                    </div>
                    <div class="form-group col-md-3">
                      <label for="inputCity">Expense Description</label>
                      <textarea class="form-control" name="expense_description1" id="expense_description1" rows="3" placeholder="Description"></textarea>

                    </div>
                    <div class="form-group col-md-3">
                      <label for="inputCity">Amount</label>
                      <input type="number" class="form-control prc " name="expense_amount1" id="expense_amount1" placeholder="40000">

                    </div>
                    <div class="form-group col-md-3">
                      <label for="inputCity">VAT(Value Added Tax)</label>
                      <select name="expense_vat_1" id="expense_vat_1" class="form-control select2" required>
                      <option selected="selected">--Select Invoice Item--</option>
                        <option value="0%">0%</option>
                        <option value="16%">16%</option>
                      </select>
                    </div>
                </div>
            <div class="form-row">
                    <div class="form-group col-md-3">
                      <label for="inputCity">Ledger Account 2</label>
                      <select name="ledger_account_2" id="ledger_account_2" class="form-control select2" required>
                        <option selected='selected'>--Select Ledger Account--</option>
                                <option value="Accomodation Expenses">Accomodation Expenses</option>
                                <option value="Accounts Payable">Accounts Payable</option>
                                <option value="Account Receivable">Account Receivable</option>
                                <option value="Accrued Business Acquisition Costs">Accrued Business Acquisition Costs</option>
                                <option value="Accrued Bank Service Charges">Accrued Bank Service Charges</option>
                                <option value="Bad Debts">Bad Debts</option>
                                <option value="Accrued Directors Allowance">Accrued Directors Allowance</option>
                                <option value="Accrued Salaries">Accrued Salaries</option>
                      </select>

                    </div>
                    <div class="form-group col-md-3">
                      <label for="inputCity">Expense Description</label>
                      <textarea class="form-control" name="expense_description2" id="expense_description2" rows="3" placeholder="Description"></textarea>

                    </div>
                    <div class="form-group col-md-3">
                      <label for="inputCity">Amount</label>
                      <input type="number" class="form-control prc " name="expense_amount2" id="expense_amount2" placeholder="40000">

                    </div>
                    <div class="form-group col-md-3">
                      <label for="inputCity">VAT(Value Added Tax)</label>
                      <select name="expense_vat_2" id="expense_vat_2" class="form-control select2" required>
                      <option selected="selected">--Select Invoice Item--</option>
                        <option value="0%">0%</option>
                        <option value="16%">16%</option>
                      </select>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-3">
                      <label for="inputCity">Ledger Account 3</label>
                      <select name="ledger_account_3" id="ledger_account_3" class="form-control select2" required>
                        <option selected='selected'>--Select Ledger Account--</option>
                                <option value="Accomodation Expenses">Accomodation Expenses</option>
                                <option value="Accounts Payable">Accounts Payable</option>
                                <option value="Account Receivable">Account Receivable</option>
                                <option value="Accrued Business Acquisition Costs">Accrued Business Acquisition Costs</option>
                                <option value="Accrued Bank Service Charges">Accrued Bank Service Charges</option>
                                <option value="Bad Debts">Bad Debts</option>
                                <option value="Accrued Directors Allowance">Accrued Directors Allowance</option>
                                <option value="Accrued Salaries">Accrued Salaries</option>
                      </select>

                    </div>
                    <div class="form-group col-md-3">
                      <label for="inputCity">Expense Description</label>
                      <textarea class="form-control" name="expense_description3" id="expense_description3" rows="3" placeholder="Description"></textarea>

                    </div>
                    <div class="form-group col-md-3">
                      <label for="inputCity">Amount</label>
                      <input type="number" class="form-control prc " name="expense_amount3" id="expense_amount3" placeholder="40000">

                    </div>
                    <div class="form-group col-md-3">
                      <label for="inputCity">VAT(Value Added Tax)</label>
                      <select name="expense_vat_3" id="expense_vat_3" class="form-control select2" required>
                      <option selected="selected">--Select Invoice Item--</option>
                        <option value="0%">0%</option>
                        <option value="16%">16%</option>
                      </select>
                    </div>
                </div>
                 <div class="alert alert-success" style="text-align: center;" role="alert" onclick="ExpenseListA();">
                    Add Additional Expenses
                </div>
                <div id="expense_lista">
                <div class="form-row">
                        <div class="form-group col-md-3">
                          <label for="inputCity">Ledger Account 4</label>
                          <select name="ledger_account_4" id="ledger_account_4" class="form-control select2" required>
                            <option selected='selected'>--Select Ledger Account--</option>
                                    <option value="Accomodation Expenses">Accomodation Expenses</option>
                                    <option value="Accounts Payable">Accounts Payable</option>
                                    <option value="Account Receivable">Account Receivable</option>
                                    <option value="Accrued Business Acquisition Costs">Accrued Business Acquisition Costs</option>
                                    <option value="Accrued Bank Service Charges">Accrued Bank Service Charges</option>
                                    <option value="Bad Debts">Bad Debts</option>
                                    <option value="Accrued Directors Allowance">Accrued Directors Allowance</option>
                                    <option value="Accrued Salaries">Accrued Salaries</option>
                          </select>

                        </div>
                        <div class="form-group col-md-3">
                          <label for="inputCity">Expense Description</label>
                          <textarea class="form-control" name="expense_description4" id="expense_description4" rows="3" placeholder="Description"></textarea>

                        </div>
                        <div class="form-group col-md-3">
                          <label for="inputCity">Amount</label>
                          <input type="number" class="form-control prc " name="expense_amount4" id="expense_amount4" placeholder="40000">

                        </div>
                        <div class="form-group col-md-3">
                          <label for="inputCity">VAT(Value Added Tax)</label>
                          <select name="expense_vat_4" id="expense_vat_4" class="form-control select2" required>
                          <option selected="selected">--Select Invoice Item--</option>
                            <option value="0%">0%</option>
                            <option value="16%">16%</option>
                          </select>
                        </div>
                    </div>
                <div class="form-row">
                        <div class="form-group col-md-3">
                          <label for="inputCity">Ledger Account 5</label>
                          <select name="ledger_account_5" id="ledger_account_5" class="form-control select2" required>
                            <option selected='selected'>--Select Ledger Account--</option>
                                    <option value="Accomodation Expenses">Accomodation Expenses</option>
                                    <option value="Accounts Payable">Accounts Payable</option>
                                    <option value="Account Receivable">Account Receivable</option>
                                    <option value="Accrued Business Acquisition Costs">Accrued Business Acquisition Costs</option>
                                    <option value="Accrued Bank Service Charges">Accrued Bank Service Charges</option>
                                    <option value="Bad Debts">Bad Debts</option>
                                    <option value="Accrued Directors Allowance">Accrued Directors Allowance</option>
                                    <option value="Accrued Salaries">Accrued Salaries</option>
                          </select>

                        </div>
                        <div class="form-group col-md-3">
                          <label for="inputCity">Expense Description</label>
                          <textarea class="form-control" name="expense_description5" id="expense_description5" rows="3" placeholder="Description"></textarea>

                        </div>
                        <div class="form-group col-md-3">
                          <label for="inputCity">Amount</label>
                          <input type="number" class="form-control prc " name="expense_amount5" id="expense_amount5" placeholder="40000">

                        </div>
                        <div class="form-group col-md-3">
                          <label for="inputCity">VAT(Value Added Tax)</label>
                          <select name="expense_vat_5" id="expense_vat_5" class="form-control select2" required>
                          <option selected="selected">--Select Invoice Item--</option>
                            <option value="0%">0%</option>
                            <option value="16%">16%</option>
                          </select>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-3">
                          <label for="inputCity">Ledger Account 6</label>
                          <select name="ledger_account_6" id="ledger_account_6" class="form-control select2" required>
                            <option selected='selected'>--Select Ledger Account--</option>
                                    <option value="Accomodation Expenses">Accomodation Expenses</option>
                                    <option value="Accounts Payable">Accounts Payable</option>
                                    <option value="Account Receivable">Account Receivable</option>
                                    <option value="Accrued Business Acquisition Costs">Accrued Business Acquisition Costs</option>
                                    <option value="Accrued Bank Service Charges">Accrued Bank Service Charges</option>
                                    <option value="Bad Debts">Bad Debts</option>
                                    <option value="Accrued Directors Allowance">Accrued Directors Allowance</option>
                                    <option value="Accrued Salaries">Accrued Salaries</option>
                          </select>

                        </div>
                        <div class="form-group col-md-3">
                          <label for="inputCity">Expense Description</label>
                          <textarea class="form-control" name="expense_description6" id="expense_description6" rows="3" placeholder="Description"></textarea>

                        </div>
                        <div class="form-group col-md-3">
                          <label for="inputCity">Amount</label>
                          <input type="number" class="form-control prc " name="expense_amount6" id="expense_amount6" placeholder="40000">

                        </div>
                        <div class="form-group col-md-3">
                          <label for="inputCity">VAT(Value Added Tax)</label>
                          <select name="expense_vat_6" id="expense_vat_6" class="form-control select2" required>
                          <option selected="selected">--Select Invoice Item--</option>
                            <option value="0%">0%</option>
                            <option value="16%">16%</option>
                          </select>
                        </div>
                    </div>
                    <div class="alert alert-success" role="alert" style="text-align: center;" onclick="ExpenseListB();">
                        Add Additional Expenses
                    </div>
                    <div id="expense_listb">
                    <div class="form-row">
                            <div class="form-group col-md-3">
                              <label for="inputCity">Ledger Account 7</label>
                              <select name="ledger_account_7" id="ledger_account_7" class="form-control select2" required>
                                <option selected='selected'>--Select Ledger Account--</option>
                                        <option value="Accomodation Expenses">Accomodation Expenses</option>
                                        <option value="Accounts Payable">Accounts Payable</option>
                                        <option value="Account Receivable">Account Receivable</option>
                                        <option value="Accrued Business Acquisition Costs">Accrued Business Acquisition Costs</option>
                                        <option value="Accrued Bank Service Charges">Accrued Bank Service Charges</option>
                                        <option value="Bad Debts">Bad Debts</option>
                                        <option value="Accrued Directors Allowance">Accrued Directors Allowance</option>
                                        <option value="Accrued Salaries">Accrued Salaries</option>
                              </select>

                            </div>
                            <div class="form-group col-md-3">
                              <label for="inputCity">Expense Description</label>
                              <textarea class="form-control" name="expense_description7" id="expense_description7" rows="3" placeholder="Description"></textarea>

                            </div>
                            <div class="form-group col-md-3">
                              <label for="inputCity">Amount</label>
                              <input type="number" class="form-control prc " name="expense_amount7" id="expense_amount7" placeholder="40000">

                            </div>
                            <div class="form-group col-md-3">
                              <label for="inputCity">VAT(Value Added Tax)</label>
                              <select name="expense_vat_7" id="expense_vat_7" class="form-control select2" required>
                              <option selected="selected">--Select Invoice Item--</option>
                                <option value="0%">0%</option>
                                <option value="16%">16%</option>
                              </select>
                            </div>
                        </div>
                    <div class="form-row">
                            <div class="form-group col-md-3">
                              <label for="inputCity">Ledger Account 8</label>
                              <select name="ledger_account_8" id="ledger_account_8" class="form-control select2" required>
                                <option selected='selected'>--Select Ledger Account--</option>
                                        <option value="Accomodation Expenses">Accomodation Expenses</option>
                                        <option value="Accounts Payable">Accounts Payable</option>
                                        <option value="Account Receivable">Account Receivable</option>
                                        <option value="Accrued Business Acquisition Costs">Accrued Business Acquisition Costs</option>
                                        <option value="Accrued Bank Service Charges">Accrued Bank Service Charges</option>
                                        <option value="Bad Debts">Bad Debts</option>
                                        <option value="Accrued Directors Allowance">Accrued Directors Allowance</option>
                                        <option value="Accrued Salaries">Accrued Salaries</option>
                              </select>

                            </div>
                            <div class="form-group col-md-3">
                              <label for="inputCity">Expense Description</label>
                              <textarea class="form-control" name="expense_description8" id="expense_description8" rows="3" placeholder="Description"></textarea>

                            </div>
                            <div class="form-group col-md-3">
                              <label for="inputCity">Amount</label>
                              <input type="number" class="form-control prc " name="expense_amount8" id="expense_amount8" placeholder="40000">

                            </div>
                            <div class="form-group col-md-3">
                              <label for="inputCity">VAT(Value Added Tax)</label>
                              <select name="expense_vat_8" id="expense_vat_8" class="form-control select2" required>
                              <option selected="selected">--Select Invoice Item--</option>
                                <option value="0%">0%</option>
                                <option value="16%">16%</option>
                              </select>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-3">
                              <label for="inputCity">Ledger Account 9</label>
                              <select name="ledger_account_9" id="ledger_account_9" class="form-control select2" required>
                                <option selected='selected'>--Select Ledger Account--</option>
                                        <option value="Accomodation Expenses">Accomodation Expenses</option>
                                        <option value="Accounts Payable">Accounts Payable</option>
                                        <option value="Account Receivable">Account Receivable</option>
                                        <option value="Accrued Business Acquisition Costs">Accrued Business Acquisition Costs</option>
                                        <option value="Accrued Bank Service Charges">Accrued Bank Service Charges</option>
                                        <option value="Bad Debts">Bad Debts</option>
                                        <option value="Accrued Directors Allowance">Accrued Directors Allowance</option>
                                        <option value="Accrued Salaries">Accrued Salaries</option>
                              </select>

                            </div>
                            <div class="form-group col-md-3">
                              <label for="inputCity">Expense Description</label>
                              <textarea class="form-control" name="expense_description9" id="expense_description9" rows="3" placeholder="Description"></textarea>

                            </div>
                            <div class="form-group col-md-3">
                              <label for="inputCity">Amount</label>
                              <input type="number" class="form-control prc " name="expense_amount9" id="expense_amount9" placeholder="40000">

                            </div>
                            <div class="form-group col-md-3">
                              <label for="inputCity">VAT(Value Added Tax)</label>
                              <select name="expense_vat_9" id="expense_vat_9" class="form-control select2" required>
                              <option selected="selected">--Select Invoice Item--</option>
                                <option value="0%">0%</option>
                                <option value="16%">16%</option>
                              </select>
                            </div>
                        </div>
                    <div class="alert alert-success" role="alert" style="text-align: center;" onclick="ExpenseListC()">
                        Add Additional Expenses
                    </div>
                    <div id="expense_listc">
                    <div class="form-row">
                            <div class="form-group col-md-3">
                              <label for="inputCity">Ledger Account 10</label>
                              <select name="ledger_account_10" id="ledger_account_10" class="form-control select2" required>
                                <option selected='selected'>--Select Ledger Account--</option>
                                        <option value="Accomodation Expenses">Accomodation Expenses</option>
                                        <option value="Accounts Payable">Accounts Payable</option>
                                        <option value="Account Receivable">Account Receivable</option>
                                        <option value="Accrued Business Acquisition Costs">Accrued Business Acquisition Costs</option>
                                        <option value="Accrued Bank Service Charges">Accrued Bank Service Charges</option>
                                        <option value="Bad Debts">Bad Debts</option>
                                        <option value="Accrued Directors Allowance">Accrued Directors Allowance</option>
                                        <option value="Accrued Salaries">Accrued Salaries</option>
                              </select>

                            </div>
                            <div class="form-group col-md-3">
                              <label for="inputCity">Expense Description</label>
                              <textarea class="form-control" name="expense_description10" id="expense_description10" rows="3" placeholder="Description"></textarea>

                            </div>
                            <div class="form-group col-md-3">
                              <label for="inputCity">Amount</label>
                              <input type="number" class="form-control prc " name="expense_amount10" id="expense_amount10" placeholder="40000">

                            </div>
                            <div class="form-group col-md-3">
                              <label for="inputCity">VAT(Value Added Tax)</label>
                              <select name="expense_vat_10" id="expense_vat_10" class="form-control select2" required>
                              <option selected="selected">--Select Invoice Item--</option>
                                <option value="0%">0%</option>
                                <option value="16%">16%</option>
                              </select>
                            </div>
                        </div>
                    <div class="form-row">
                            <div class="form-group col-md-3">
                              <label for="inputCity">Ledger Account 11</label>
                              <select name="ledger_account_11" id="ledger_account_11" class="form-control select2" required>
                                <option selected='selected'>--Select Ledger Account--</option>
                                        <option value="Accomodation Expenses">Accomodation Expenses</option>
                                        <option value="Accounts Payable">Accounts Payable</option>
                                        <option value="Account Receivable">Account Receivable</option>
                                        <option value="Accrued Business Acquisition Costs">Accrued Business Acquisition Costs</option>
                                        <option value="Accrued Bank Service Charges">Accrued Bank Service Charges</option>
                                        <option value="Bad Debts">Bad Debts</option>
                                        <option value="Accrued Directors Allowance">Accrued Directors Allowance</option>
                                        <option value="Accrued Salaries">Accrued Salaries</option>
                              </select>

                            </div>
                            <div class="form-group col-md-3">
                              <label for="inputCity">Expense Description</label>
                              <textarea class="form-control" name="expense_description11" id="expense_description11" rows="3" placeholder="Description"></textarea>

                            </div>
                            <div class="form-group col-md-3">
                              <label for="inputCity">Amount</label>
                              <input type="number" class="form-control prc " name="expense_amount11" id="expense_amount11" placeholder="40000">

                            </div>
                            <div class="form-group col-md-3">
                              <label for="inputCity">VAT(Value Added Tax)</label>
                              <select name="expense_vat_11" id="expense_vat_11" class="form-control select2" required>
                              <option selected="selected">--Select Invoice Item--</option>
                                <option value="0%">0%</option>
                                <option value="16%">16%</option>
                              </select>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-3">
                              <label for="inputCity">Ledger Account 12</label>
                              <select name="ledger_account_12" id="ledger_account_12" class="form-control select2" required>
                                <option selected='selected'>--Select Ledger Account--</option>
                                        <option value="Accomodation Expenses">Accomodation Expenses</option>
                                        <option value="Accounts Payable">Accounts Payable</option>
                                        <option value="Account Receivable">Account Receivable</option>
                                        <option value="Accrued Business Acquisition Costs">Accrued Business Acquisition Costs</option>
                                        <option value="Accrued Bank Service Charges">Accrued Bank Service Charges</option>
                                        <option value="Bad Debts">Bad Debts</option>
                                        <option value="Accrued Directors Allowance">Accrued Directors Allowance</option>
                                        <option value="Accrued Salaries">Accrued Salaries</option>
                              </select>

                            </div>
                            <div class="form-group col-md-3">
                              <label for="inputCity">Expense Description</label>
                              <textarea class="form-control" name="expense_description12" id="expense_description12" rows="3" placeholder="Description"></textarea>

                            </div>
                            <div class="form-group col-md-3">
                              <label for="inputCity">Amount</label>
                              <input type="number" class="form-control prc " name="expense_amount12" id="expense_amount12" placeholder="40000">

                            </div>
                            <div class="form-group col-md-3">
                              <label for="inputCity">VAT(Value Added Tax)</label>
                              <select name="expense_vat_12" id="expense_vat_12" class="form-control select2" required>
                              <option selected="selected">--Select Invoice Item--</option>
                                <option value="0%">0%</option>
                                <option value="16%">16%</option>
                              </select>
                            </div>
                        </div>
                     </div>
                    </div>
                </div>
            <div class="form-group">
                <label for="inputCity">Total Amount</label>
                <input type="number" class="form-control prc " name="total_amount" id="total_amount" placeholder="">
            </div>
            <button type="submit" class="btn btn-primary">Save Supplier Invoice</button>
            <button type="reset" class="btn btn-primary">Cancel</button>
        </form>
      </div>
    </body>
</html>
