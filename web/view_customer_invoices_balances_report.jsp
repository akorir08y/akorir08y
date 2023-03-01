<%-- 
    Document   : view_client_invoices_balances_report
    Created on : 14-Nov-2019, 13:36:04
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
        <title>View Customer Invoices Balances Report</title>
    </head>
    <body>
        <%
            Date today = Calendar.getInstance().getTime();
            LocalDate localDate = LocalDate.now();
        
        %>
        <div class="alert alert-success" role="alert" style="text-align: center;">View Customer Invoices Balances Report</div>
        <form method="post" style="padding: 10px;margin:10px;margin-top:20px;" id="new_branch" action="new_branch.jsp">
            <div class="alert alert-success" role="alert" style="text-align: center;">
            Customer Invoices Balances Report - Search By
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
                <label for="Client">Customer</label>
                <select name="client_name" id="client_name" class="form-control select2" required>
                        <option selected='selected'>--Select Client--</option>
                        <option value="James">James</option>
                        <option value="Malcolm">Malcolm</option>
                        <option value="Patrick">Patrick</option>
                        <option value="Kevin">Kevin</option>
                        <option value="Jason">Jason</option>
                        <option value="Matthew">Matthew</option>
                </select>
            </div>
            <button type="submit"  class="btn btn-primary">Search</button>
        </form>
        <button type="submit"  class="btn btn-primary" style="margin-left: 20px;">Print</button>
        <button type="submit"  class="btn btn-primary" style="margin-left: 10px;">Excel(Express)</button><br><br>
        <img src="" height="100" width="100" style="margin-left: 20px;"><br><br>
        <div class="alert alert-secondary" role="alert" style="text-align: center;">
            Customer Invoices Balances Report On <%= today %>
        </div>
        <table class="table" style="margin:10px;padding:10px;">        
            <tr>
                <th scope="col">Invoice No</th>
                <th scope="col">Transaction Date</th>
                <th scope="col">Customer</th>
                <th scope="col">Prepared/Transacted By</th>
                <th scope="col">Invoice Amount</th>
                <th scope="col">Amount Paid</th>
                <th scope="col">Balance</th>
            </tr> 
            <tr>
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
            </tr>
        </table>
    </body>
</html>
