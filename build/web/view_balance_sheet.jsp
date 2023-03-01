<%-- 
    Document   : view_balance_sheet
    Created on : 14-Nov-2019, 12:58:47
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
        <title>View Balance Sheet</title>
    </head>
    <body>
        <%
            Date today = Calendar.getInstance().getTime();
            LocalDate localDate = LocalDate.now();
        
        %>
        <div class="alert alert-success" role="alert" style="text-align: center;">View Balance Sheet</div>
        <form method="post" style="padding: 10px;margin:10px;margin-top:20px;" id="new_branch" action="new_branch.jsp">
            <div class="alert alert-success" role="alert" style="text-align: center;">
            Balance Sheet - Search By
            </div>
                <div class="form-group">
                    <label for="TransactionDate">On:</label>
                    <input type="date" class="form-control" name="start_date" id="start_date" placeholder="Branch Name" required>
                </div>
            <button type="submit"  class="btn btn-primary">Search</button>
        </form>
        <button type="submit"  class="btn btn-primary" style="margin-left: 20px;">Print</button>
        <button type="submit"  class="btn btn-primary" style="margin-left: 10px;">Excel(Express)</button><br><br>
        <img src="" height="100" width="100" style="margin-left: 20px;"><br><br>
        <div class="alert alert-secondary" role="alert" style="text-align: center;">
            Balance Sheet On <%= today %>
        </div>
        <table class="table" style="margin:10px;padding:10px;">    
            <tr>
                <th scope="col" colspan="2">Assets</th>
            </tr>
            <tr>
                <th scope="col">Asset Name</th>
                <th scope="col">Asset Value</th>
            </tr> 
            <tr>
                <td style="text-align: left;"></td>
                <td style="text-align: left;"></td>
            </tr>
            <tr>
                <td style="text-align: left;">Asset Total Value</td>
                <td style="text-align: left;"></td>
            </tr>
            <tr>
                <th scope="col" colspan="2"></th>
            </tr>
            <tr>
                <th scope="col" colspan="2">Liabilities</th>
            </tr>
            <tr>
                <th scope="col">Liabilities Name</th>
                <th scope="col">Liabilities Amount</th>
            </tr> 
            <tr>
                <td style="text-align: left;"></td>
                <td style="text-align: left;"></td>
            </tr>
            <tr>
                <td style="text-align: left;">Liabilities Total Amount</td>
                <td style="text-align: left;"></td>
            </tr>
            <tr>
                <th scope="col" colspan="2"></th>
            </tr>
            <tr>
                <th scope="col" colspan="2">Equity</th>
            </tr>
            <tr>
                <th scope="col">Equity Name</th>
                <th scope="col">Equity Amount</th>
            </tr> 
            <tr>
                <td style="text-align: left;"></td>
                <td style="text-align: left;"></td>
            </tr>
            <tr>
                <td style="text-align: left;">Equity Total Amount</td>
                <td style="text-align: left;"></td>
            </tr>
            <tr>
                <th scope="col" colspan="2"></th>
            </tr>
            <tr>
                <td style="text-align: left;">Total Liabilities & Equity</td>
                <td style="text-align: left;"></td>
            </tr>
        </table>
    </body>
</html>
