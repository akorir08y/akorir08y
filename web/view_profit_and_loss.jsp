<%-- 
    Document   : view_profit_and_loss
    Created on : 13-Nov-2019, 20:37:49
    Author     : Keitany
--%>

<%@page import="java.util.Date"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Profit and Loss</title>
    </head>
    <body>
         <%
            Date today = Calendar.getInstance().getTime();
            LocalDate localDate = LocalDate.now();
        
        %>
        <div class="alert alert-success" role="alert" style="text-align: center;">View Profit and Loss Report</div>
        <form method="post" style="padding: 10px;margin:10px;margin-top:20px;" id="new_branch" action="new_branch.jsp">
            <div class="alert alert-success" role="alert" style="text-align: center;">
            Profit and Loss Report - Search By
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
            <button type="submit"  class="btn btn-primary">Search</button>
        </form>
        <button type="submit"  class="btn btn-primary" style="margin-left: 20px;">Print</button>
        <button type="submit"  class="btn btn-primary" style="margin-left: 10px;">Excel(Express)</button><br><br>
        <img src="" height="100" width="100" style="margin-left: 20px;"><br><br>
        <div class="alert alert-secondary" role="alert" style="text-align: center;">
            Profit & Loss Report For <%= today %>
        </div>
        <table class="table" style="margin:10px;padding:10px;">        
            <tr>
                 <th scope="col" colspan="2">Revenue</th>
            </tr>
            <tr>
                <td style="text-align: right;" colspan="2">0.00</td>
            </tr> 
            <tr>
                 <th scope="col" colspan="2">Cost of Goods Sold</th>
            </tr>
            <tr style="border-bottom: none;">
                <td style="text-align: left;">Cost of Goods Sold</td>
                <td style="text-align: right;">0.00</td>
            </tr>
             <tr>
                <td style="text-align: left;">Gross Profit & Loss</td>
                <td style="text-align: right;">0.00</td>
            </tr>
            <tr>
                <th scope="col" colspan="2">Expenses</th>
            </tr>
            <tr style="border-bottom: none;">
                <td style="text-align: right;" colspan="2">0.00</td>
            </tr>
            <tr>
                <td style="text-align: left;">Net Profit & Loss</td>
                <td style="text-align: right;">0.00</td>
            </tr>
        </table>
        <button style="margin-left:20px;" class="btn btn-secondary">View Graph</button>
    </body>
</html>
