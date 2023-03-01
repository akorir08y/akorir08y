<%-- 
    Document   : view_customers
    Created on : 10-Sep-2019, 09:24:45
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
        <div class="alert alert-success" role="alert" style="text-align: center;">Customer Centre</div>
        
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
          
        <form method="post" style="margin:10px;padding:10px;" action="new_customer_invoice.jsp">
            <div class="alert alert-success" role="alert" style="text-align: center;">
            New Customer Information
            </div>
            <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputCity">Customer Name</label>
                        <input type="text" class="form-control" name="customer_name" id="customer_name" placeholder="Customer Name">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputCity">Customer Email</label>
                        <input type="text" class="form-control" name="customer_email" id="customer_email" placeholder="Customer Email">
                    </div>
            </div>
            <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputCity">Customer Mobile</label>
                        <input type="text" class="form-control" name="customer_mobile" id="customer_mobile" placeholder="Customer Mobile">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputCity">Customer Pin Number</label>
                        <input type="text" class="form-control" name="customer_pin_number" id="customer_pin_number" placeholder="Customer Pin Number">
                    </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputCity">Customer Contact Person</label>
                    <input type="text" class="form-control" name="customer_contact_person" id="customer_contact_person" placeholder="Customer Contact Person">
                </div>
                <div class="form-group col-md-6">
                            <label for="inputCity">Transaction Date</label>
                            <input type="date" class="form-control" name="transaction_date" id="transaction_date" placeholder="Customer Pin Number">
                </div>
            </div>
            <button type="submit" class="btn btn-primary">Save Customer</button>
            <%
            try{
                String customer_name = request.getParameter("account_name").toUpperCase();
                String customer_email = request.getParameter("account_type");
                String customer_mobile = request.getParameter("sub_account_group");
                String customer_pin_number = request.getParameter("description");
                String customer_contact_person = request.getParameter("account_number");
                String opening_date = request.getParameter("transaction_date");

                SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
                Date startDate = df.parse(opening_date);

                java.sql.Date transaction_date = new java.sql.Date(startDate.getTime());
                FunctionalitiesJ.initializeConnection();            
                String result = FunctionalitiesJ.newCustomer(customer_name, customer_email, customer_mobile, 
                        customer_pin_number, customer_contact_person, String.valueOf(transaction_date));
                FunctionalitiesJ.closeConnection();
                if(result.equals("success")){
                    response.sendRedirect("mainframe.jsp?function_name=newCustomer");
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
