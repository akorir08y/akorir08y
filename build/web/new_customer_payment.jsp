<%-- 
    Document   : view_reciept
    Created on : 10-Sep-2019, 19:54:49
    Author     : Keitany
--%>

<%@page import="Functionalities.FunctionalitiesJ"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <div id="content_provider">
        <div class="alert alert-success" role="alert" style="text-align: center;margin-top: 10px;">New Customer Payment Transaction</div>
        <ul class="nav nav-tabs" style="margin: 10px;">
        <li class="nav-item">
          <a onclick="viewCustomerCentre()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">New Customer</a>
        </li>
        <li class="nav-item">
          <a onclick="viewCustomers()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">View Customers</a>
        </li>
        <li class="nav-item">
          <a onclick="newCustomerInvoice()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">New Customer Invoices</a>
        </li>
        <li class="nav-item">
          <a onclick="viewCustomerInvoices()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">View Customer Invoices</a>
        </li>
        <li class="nav-item">
          <a onclick="newCustomerPayment()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">New Customer Payments</a>
        </li>
        <li class="nav-item">
          <a onclick="viewCustomerPayments()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">View Customer Payments</a>
        </li>
        <li class="nav-item">
          <a onclick="nonMemberTransactions()" style="background-color: lightcyan;" class="nav-link active" href="#content">Close</a>
        </li>
        </ul>
        
       <form method="post" style="margin:10px;padding:10px;" action="new_customer_payment.jsp">
            <div class="alert alert-success" role="alert" style="text-align: center;">
            Customer Payment Information
            </div>
            
            <div class="form-group">
                    <label for="inputCity">Received From</label>
                    <select name="recieved_from"  id="recieved_from" class="form-control select2" required>
                            <option selected='selected'>--Member Registration Number--</option>
                            <option value="00001">00001</option>
                            <option value="00002">00002</option>
                            <option value="00003">00003</option>
                            <option value="00004">00004</option>
                    </select>
            </div>
         
            
            <div class="form-row">
                <div class="form-group col-md-6">
                <label for="inputCity">Transaction Number</label>
                <input type="text" class="form-control" name="transaction_number" id="transaction_number" placeholder="Transaction Number">
                </div>
                <div class="form-group col-md-6">
                <label for="inputCity">Cheque Number</label>
                <input type="text" class="form-control" name="cheque_number" id="cheque_number" placeholder="Full Name">

              </div>
            </div>
             
           <div class="form-row">
                <div class="form-group col-md-6">
                  <label for="inputCity">Payment Method </label>
                  <select name="payment_method" id="payment_method" class="form-control select2" required>
                      <option selected="selected">--Disbursed By--</option>
                      <option value="Cash">Cash</option>
                      <option value="Cheque">Cheque</option>
                      <option value="Wire Transfer">Wire Transfer</option>
                      <option value="Online Transfer">Online Transfer</option>
                  </select>

                </div>
                <div class="form-group col-md-6">
                <label for="inputCity">Description</label>
                <textarea class="form-control" name="payment_description" id="payment_description" rows="3" placeholder="Description"></textarea>

              </div>
            </div>
        <div class="alert alert-success" role="alert" style="text-align: center;">
            Customer Existing Invoices
        </div>
        <div id="my_location">
                <form name="search_customer" style="margin:10px;padding:10px;float:right;">
                   <div class="form-inline">
                       <label for="Branch">Search Invoice:</label>
                        <input type="text" class="form-control" name="search" id="search" onkeyup="searchCustomerInfo()" placeholder="Search Here.." >
                   </div>
                </form>
        <table class="table table-striped" style="margin:10px;padding:10px;">
           <thead>
           <tr>
                <th scope="col"><input type="checkbox" id="select_all"/></th>
                <th scope="col">Date</th>
                <th scope="col">Invoice Number</th>
                <th scope="col">Original Amount</th>
                <th scope="col">Balance</th>
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
           </tbody>
           </table>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="inputCity">Payment Amount</label>
                <input type="number" class="form-control prc " name="payment_amount" id="payment_amount" placeholder="Shares Amount">
            </div>
            
             <div class="form-group col-md-6">
                <label for="inputCity">Bank Account Number</label>
                 <select name="payment_account_number" id="payment_account_number" class="form-control select2" required>
                  <option selected="selected">--Select Bank Account Number--</option>
                  <option value="130390430934">130390430934-Equity</option>
                  <option value="130399304334">130390439034-Barclays</option>
                  <option value="130393984444">130393984444-KCB</option>
                  <option value="130392030454">130392030454-Co-operative</option>
                  <option value="130392490044">130392490044-Stanbic</option>
                  <option value="130390930244">130390930244-NIC</option>
              </select>
            </div>
        </div>
        
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="inputCity">Serving Agent</label>
                <input type="text" class="form-control" name="serving_officer" id="serving_officer" placeholder="James Kuria">
            </div>
            <div class="form-group col-md-6">
                <label for="inputCity">Transaction Date</label>
                <input type="date" class="form-control" name="transaction_date" id="transaction_date" placeholder="James Kuria">
            </div>
        </div>
             
                
        </div>
        <button type="submit" class="btn btn-primary">Save Payment</button>
        <a href="#content" onclick="nonMemberTransactions()" class="btn btn-primary" style="margin-left: 20px;width:200px;">Close</a>
       <%
            try{
                String member_registration_number = request.getParameter("recieved_from");
                String payment_amount = request.getParameter("payment_amount");
                String transaction_number = request.getParameter("transaction_number");
                String cheque_number = request.getParameter("cheque_number");
                String payment_method = request.getParameter("payment_method");
                String bank_account_number = request.getParameter("payment_account_number");
                String customer_payment_description = request.getParameter("payment_description");
                String opening_date = request.getParameter("transaction_date");
                String serving_agent = request.getParameter("serving_officer");

                SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
                Date startDate = df.parse(opening_date);

                java.sql.Date transaction_date = new java.sql.Date(startDate.getTime());
                FunctionalitiesJ.initializeConnection();            
                String result = FunctionalitiesJ.newCustomerPayment(member_registration_number, payment_amount,transaction_number,cheque_number,
                        payment_method, bank_account_number, customer_payment_description, serving_agent, String.valueOf(transaction_date));
                FunctionalitiesJ.closeConnection();
                if(result.equals("success")){
                    response.sendRedirect("mainframe.jsp?function_name=newAccount");
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
