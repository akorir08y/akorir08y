<%-- 
    Document   : view_supplier_invoices_balances_report
    Created on : 14-Nov-2019, 14:09:17
    Author     : Keitany
--%>

<%@page import="java.time.LocalDate"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Supplier Invoices Balances Report</title>
    </head>
    <body>
        <%
            Date today = Calendar.getInstance().getTime();
            LocalDate localDate = LocalDate.now();
        
        %>
        <div class="alert alert-success" role="alert" style="text-align: center;">View Supplier Invoices Balances Report</div>
        <form method="post" style="padding: 10px;margin:10px;margin-top:20px;" id="new_branch" action="new_branch.jsp">
            <div class="alert alert-success" role="alert" style="text-align: center;">
            Supplier Invoices Balances Report - Search By
            </div>             
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="TransactionDate">Dates Between:</label>
                    <input type="date" class="form-control" name="start_date" id="start_date" placeholder="Branch Name" required>
                </div>
                <div class="form-group col-md-6">
                    <label for="TransactionDate">And:</label>
                    <input type="date" class="form-control" name="end_date" id="end_date" placeholder="Branch Name" required>
                </div>
            </div>
            <div class="form-group">
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
            <button type="submit"  class="btn btn-primary">Search</button>
        </form>
        <button type="submit"  class="btn btn-primary" style="margin-left: 20px;">Print</button>
        <button type="submit"  class="btn btn-primary" style="margin-left: 10px;">Excel(Express)</button><br><br>
        <img src="" height="100" width="100" style="margin-left: 20px;"><br><br>
        <div class="alert alert-secondary" role="alert" style="text-align: center;">
            Supplier Invoices Balances Report On <%= today %>
        </div>
        <table class="table" style="margin:10px;padding:10px;">        
            <tr>
                <th scope="col">Supplier Invoice No</th>
                <th scope="col">Transaction Date</th>
                <th scope="col">Supplier</th>
                <th scope="col">Prepared/Transacted By</th>
                <th scope="col">Invoice Amount</th>
                <th scope="col">Credit Notes Amount</th>
                <th scope="col">Amount Paid</th>
                <th scope="col">Balance</th>
            </tr> 
            <tr>
                <td style="text-align: left;"></td>
                <td style="text-align: left;"></td>
                <td style="text-align: left;"></td>
                <td style="text-align: left;"></td>
                <td style="text-align: left;"></td>
                <td style="text-align: left;"></td>
                <td style="text-align: left;">0.00</td>
                <td style="text-align: left;">0.00</td>
            </tr>
            <tr>
                <td style="text-align: left;">Totals</td>
                <td style="text-align: left;"></td>
                <td style="text-align: left;"></td>
                <td style="text-align: left;"></td>
                <td style="text-align: left;">0.00</td>
                <td style="text-align: left;">0.00</td>
                <td style="text-align: left;">0.00</td>
                <td style="text-align: left;">0.00</td>
            </tr>
        </table>
    </body>
</html>
