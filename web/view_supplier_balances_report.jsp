<%-- 
    Document   : view_supplier_balances_report
    Created on : 14-Nov-2019, 14:14:27
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
        <title>View Supplier Balances Report</title>
    </head>
    <body>
        <%
            Date today = Calendar.getInstance().getTime();
            LocalDate localDate = LocalDate.now();
        
        %>
        <div class="alert alert-success" role="alert" style="text-align: center;">View Supplier Balances Report</div>
        <form method="post" style="padding: 10px;margin:10px;margin-top:20px;" id="new_branch" action="new_branch.jsp">
            <div class="alert alert-success" role="alert" style="text-align: center;">
            Supplier Balances Report - Search By
            </div>             
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="TransactionDate">On:</label>
                    <input type="date" class="form-control" name="start_date" id="start_date" placeholder="Branch Name" required>
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
            
            <button type="submit"  class="btn btn-primary">Search</button>
        </form>
        <button type="submit"  class="btn btn-primary" style="margin-left: 20px;">Print</button>
        <button type="submit"  class="btn btn-primary" style="margin-left: 10px;">Excel(Express)</button><br><br>
        <img src="" height="100" width="100" style="margin-left: 20px;"><br><br>
        <div class="alert alert-secondary" role="alert" style="text-align: center;">
            Supplier Balances Report As Of <%= today %>
        </div>
        <table class="table" style="margin:10px;padding:10px;">        
            <tr>
                <th scope="col">Supplier</th>
                <th scope="col">Balance</th>
            </tr> 
            <tr>
                <td style="text-align: left;"></td>
                <td style="text-align: left;">0.00</td>
            </tr>
            <tr>
                <td style="text-align: left;">Total Balance</td>
                <td style="text-align: left;">0.00</td>
            </tr>
        </table>
    </body>
</html>
