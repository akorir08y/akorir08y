<%-- 
    Document   : new_bill_payment
    Created on : 27-Nov-2019, 16:50:15
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
        <title>New Bill Payment</title>
    </head>
    <body>
    <div id="content_provider">
        <div class="alert alert-success" role="alert" style="text-align: center;">New Bill Payment</div>
        
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
        <form method="post" style="margin:10px;padding:10px;" action="new_bill_payment.jsp">
            <div class="alert alert-success" role="alert" style="text-align: center;">
             New Bill Payment Information
            </div>
            <div class="form-group">
                <label for="inputCity">Bank Amount</label>
                <input type="text" class="form-control" name="bank_amount" id="bank_amount" placeholder="Bank Amount">

            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                <label for="inputCity">Payment Date</label>
                <input type="date" class="form-control" name="payment_date" id="payment_date" placeholder="Transaction Number">
                </div>
                <div class="form-group col-md-6">
                <label for="inputCity">Cheque Number</label>
                <input type="text" class="form-control" name="cheque_number" id="cheque_number" placeholder="Cheque Number">

              </div>
            </div>
            <div class="alert alert-success" role="alert" style="text-align: center;">
                Outstanding Bills
            </div>
            <div id="my_location">
                <form name="search_customer" style="margin:10px;padding:10px;float:right;">
                   <div class="form-inline">
                       <label for="Branch">Search OutStanding Bills:</label>
                        <input type="text" class="form-control" name="search" id="search" onkeyup="searchCustomerInfo()" placeholder="Search Here.." >
                   </div>
                </form>
                <table class="table table-striped" style="margin:10px;padding:10px;">
                   <thead>
                   <tr>
                        <th scope="col"><input type="checkbox" id="select_all"/></th>
                        <th scope="col">Supplier</th>
                        <th scope="col">Supplier Invoice Number</th>
                        <th scope="col">Open Balance</th>
                        <th scope="col">Payment</th>
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
                    <label for="inputCity">Total Payment</label>
                    <input type="text" class="form-control" name="total_payment" id="total_payment" placeholder="Total Payment">
                </div>
                <div class="form-group col-md-6">
                    <label for="inputCity">Current Bank Balance</label>
                    <input type="text" class="form-control" name="bank_balance" id="bank_balance" placeholder="Current Bank Balance">
                </div>
            </div>
                <div class="form-group">
                    <label for="inputCity">New Bank Balance</label>
                    <input type="text" class="form-control" name="balance" id="balance" placeholder="New Bank Balance">
                </div>
               
            <button type="submit" class="btn btn-primary">Save Bill Payment</button>
                    <%
            try{
                String bank_amount = request.getParameter("bank_account").toUpperCase();
                String cheque_number = request.getParameter("book_balance");
                String total_payment = request.getParameter("bank_charges");
                String balance_before_transaction = request.getParameter("balance");
                String opening_date = request.getParameter("transfer_date");

                SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
                Date startDate = df.parse(opening_date);

                java.sql.Date transaction_date = new java.sql.Date(startDate.getTime());
                FunctionalitiesJ.initializeConnection();            
                String result = FunctionalitiesJ.newBillPayment(Double.parseDouble(bank_amount), cheque_number, Double.parseDouble(total_payment), String.valueOf(transaction_date),
                        Double.parseDouble(balance_before_transaction));
                FunctionalitiesJ.closeConnection();
                if(result.equals("success")){
                    response.sendRedirect("mainframe.jsp?function_name=newBillPayment");
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
