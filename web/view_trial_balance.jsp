<%-- 
    Document   : view_trial_balance
    Created on : 13-Nov-2019, 19:01:20
    Author     : Keitany
--%>

<%@page import="java.time.Month"%>
<%@page import="java.util.Date"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Trial Balance</title>
    </head>
    <body>
        <%
            Date today = Calendar.getInstance().getTime();
            Calendar now = Calendar.getInstance();
            int current_year = now.get(Calendar.YEAR);        
        %>
        <div class="alert alert-success" role="alert" style="text-align: center;">View Trial Balance</div>
        <form method="post" style="padding: 10px;margin:10px;margin-top:20px;" id="new_branch" action="new_branch.jsp">
            <div class="alert alert-success" role="alert" style="text-align: center;">
            Trial Balance - Search By
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
        <div class="alert alert-success" role="alert" style="text-align: center;">Trial Balance for the period between 
            January 1, <%= current_year %> And December 31, <%= current_year %></div>
        <table class="table table-striped" style="margin:10px;padding:10px;">
        <thead>
        <tr>
             <th scope="col"><input type="checkbox" id="select_all"/></th>
             <th scope="col">Account</th>
             <th scope="col">Debit</th>
             <th scope="col">Credit</th>
             <th class="text-center" colspan="3">Action</th>
         </tr>
        </thead>

        <tbody>
        <tr>
            <td><input id="optionsCheckbox" class="checkbox"  name="selector[]" type="checkbox" value="50"></td>
            <td></td>
            <td></td>
            <td></td>
            <td class="text-center">
                <a href='edit1.jsp?u=' class="btn btn-primary">View</a>
                <a href='edit1.jsp?u=' class="btn btn-success">Edit</a>
                <a href='delete1.jsp?d=' class="btn btn-danger">Delete</a>
            </td>
        </tr> 
        <tr>
            <th scope="col">Total</th>
            <td></td> 
        </tr>

        </tbody>

        </table>
    </body>
</html>
