<%-- 
    Document   : view_profit_and_loss_detailed
    Created on : 14-Nov-2019, 10:53:26
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
        <title>View Profit and Loss Detailed</title>
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
                 <th scope="col" colspan="8">Turnover</th>
            </tr>
            <tr>
                <th scope="col"></th>
                <th scope="col">Kenyatta Avenue</th>
                <th scope="col">Ronald Ngala</th>
                <th scope="col">Tom Mboya</th>
                <th scope="col">Fig Tree</th>
                <th scope="col">TRM Mall</th>
                <th scope="col">Umoja 2</th>
                <th scope="col">Totals</th>
            </tr>
            <tr>
                <td style="text-align: left;">Cash Sales</td>
                <td style="text-align: left;">0.00</td>
                <td style="text-align: left;">0.00</td>
                <td style="text-align: left;">0.00</td>
                <td style="text-align: left;">0.00</td>
                <td style="text-align: left;">0.00</td>
                <td style="text-align: left;">0.00</td>
                <td style="text-align: left;">0.00</td>
            </tr> 
             <tr>
                <td style="text-align: left;">Client Invoices</td>
                <td style="text-align: left;">0.00</td>
                <td style="text-align: left;">0.00</td>
                <td style="text-align: left;">0.00</td>
                <td style="text-align: left;">0.00</td>
                <td style="text-align: left;">0.00</td>
                <td style="text-align: left;">0.00</td>
                <td style="text-align: left;">0.00</td>
            </tr> 
            <tr>
                <td style="text-align: left;">Totals</td>
                <td style="text-align: left;">0.00</td>
                <td style="text-align: left;">0.00</td>
                <td style="text-align: left;">0.00</td>
                <td style="text-align: left;">0.00</td>
                <td style="text-align: left;">0.00</td>
                <td style="text-align: left;">0.00</td>
                <td style="text-align: left;">0.00</td>
            </tr> 
            <tr>
                <th scope="col" colspan="8"></th>
            </tr>
            <tr>
                 <th scope="col" colspan="8">Cost of Sale</th>
            </tr>
            <tr>
                <th scope="col"></th>
                <th scope="col">Kenyatta Avenue</th>
                <th scope="col">Ronald Ngala</th>
                <th scope="col">Tom Mboya</th>
                <th scope="col">Fig Tree</th>
                <th scope="col">TRM Mall</th>
                <th scope="col">Umoja 2</th>
                <th scope="col">Totals</th>
            </tr>
            <tr>
                <td style="text-align: left;">Totals</td>
                <td style="text-align: left;">0.00</td>
                <td style="text-align: left;">0.00</td>
                <td style="text-align: left;">0.00</td>
                <td style="text-align: left;">0.00</td>
                <td style="text-align: left;">0.00</td>
                <td style="text-align: left;">0.00</td>
                <td style="text-align: left;">0.00</td>
            </tr> 
            <tr>
                <th scope="col">Gross Profit</th>
                <th scope="col">0.00</th>
                <th scope="col">0.00</th>
                <th scope="col">0.00</th>
                <th scope="col">0.00</th>
                <th scope="col">0.00</th>
                <th scope="col">0.00</th>
                <th scope="col">0.00</th>
            </tr>
            <tr>
                <th scope="col" colspan="8"></th>
            </tr>
            <tr>
                 <th scope="col" colspan="8">Miscellaneous Income</th>
            </tr>
            <tr>
                <th scope="col"></th>
                <th scope="col">Kenyatta Avenue</th>
                <th scope="col">Ronald Ngala</th>
                <th scope="col">Tom Mboya</th>
                <th scope="col">Fig Tree</th>
                <th scope="col">TRM Mall</th>
                <th scope="col">Umoja 2</th>
                <th scope="col">Totals</th>
            </tr>
            <tr>
                <td style="text-align: left;">Totals</td>
                <td style="text-align: left;">0.00</td>
                <td style="text-align: left;">0.00</td>
                <td style="text-align: left;">0.00</td>
                <td style="text-align: left;">0.00</td>
                <td style="text-align: left;">0.00</td>
                <td style="text-align: left;">0.00</td>
                <td style="text-align: left;">0.00</td>
            </tr>
            <tr>
                <th scope="col" colspan="8"></th>
            </tr>
            <tr>
                 <th scope="col" colspan="8">Expenses</th>
            </tr>
            <tr>
                <th scope="col"></th>
                <th scope="col">Kenyatta Avenue</th>
                <th scope="col">Ronald Ngala</th>
                <th scope="col">Tom Mboya</th>
                <th scope="col">Fig Tree</th>
                <th scope="col">TRM Mall</th>
                <th scope="col">Umoja 2</th>
                <th scope="col">Totals</th>
            </tr>
            <tr>
                <td style="text-align: left;">Totals</td>
                <td style="text-align: left;">0.00</td>
                <td style="text-align: left;">0.00</td>
                <td style="text-align: left;">0.00</td>
                <td style="text-align: left;">0.00</td>
                <td style="text-align: left;">0.00</td>
                <td style="text-align: left;">0.00</td>
                <td style="text-align: left;">0.00</td>
            </tr>
            <tr>
                <th scope="col" colspan="8"></th>
            </tr>
            <tr>
                <th scope="col">Net Profit</th>
                <th scope="col">0.00</th>
                <th scope="col">0.00</th>
                <th scope="col">0.00</th>
                <th scope="col">0.00</th>
                <th scope="col">0.00</th>
                <th scope="col">0.00</th>
                <th scope="col">0.00</th>
            </tr>
        </table>
        <button style="margin-left:20px;" class="btn btn-secondary">View Graph</button>
    </body>
</html>
