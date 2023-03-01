<%-- 
    Document   : view_bank_account_transactions_report
    Created on : 07-Nov-2019, 21:37:08
    Author     : Keitany
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Bank Account Transactions Report</title>
    </head>
    <body>
        <form method="post" style="padding: 10px;margin:10px;margin-top:20px;" id="new_branch" action="new_branch.jsp">
            <div class="alert alert-success" role="alert" style="text-align: center;">
            Search By
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="TransactionDate">Transactions Between:</label>
                    <input type="date" class="form-control" name="start_date" id="start_date" placeholder="Branch Name" required>
                </div>
                <div class="form-group col-md-6">
                    <label for="TransactionDate">And:</label>
                    <input type="date" class="form-control" name="end_date" id="end_date" placeholder="Branch Name" required>
                </div>
            </div>
            <div class="form-inline">
                <div class="form-group form-check">
                   <input type="checkbox" class="form-check-input" id="exampleCheck1">
                   <label class="form-check-label" for="exampleCheck1">130390430934-Equity</label>
                </div>
                <div class="form-group form-check">
                   <input type="checkbox" class="form-check-input" id="exampleCheck1">
                   <label class="form-check-label" for="exampleCheck1">130390430944-Equity</label>
                </div>
                <div class="form-group form-check">
                   <input type="checkbox" class="form-check-input" id="exampleCheck1">
                   <label class="form-check-label" for="exampleCheck1">130390430954-Equity</label>
                </div>
                <div class="form-group form-check">
                   <input type="checkbox" class="form-check-input" id="exampleCheck1">
                   <label class="form-check-label" for="exampleCheck1">130390430964-Equity</label>
                </div>
                  <div class="form-group form-check">
                   <input type="checkbox" class="form-check-input" id="exampleCheck1">
                   <label class="form-check-label" for="exampleCheck1">130390439034-Barclays</label>
                </div>
                <div class="form-group form-check">
                   <input type="checkbox" class="form-check-input" id="exampleCheck1">
                   <label class="form-check-label" for="exampleCheck1">130393984444-KCB</label>
                </div>
                <div class="form-group form-check">
                   <input type="checkbox" class="form-check-input" id="exampleCheck1">
                   <label class="form-check-label" for="exampleCheck1">130392030454-Co-operative</label>
                </div>
                <div class="form-group form-check">
                   <input type="checkbox" class="form-check-input" id="exampleCheck1">
                   <label class="form-check-label" for="exampleCheck1">130392490044-Stanbic</label>
                </div>
                <div class="form-group form-check">
                   <input type="checkbox" class="form-check-input" id="exampleCheck1">
                   <label class="form-check-label" for="exampleCheck1">130390930244-NIC</label>
                </div>
                <div class="form-group form-check">
                   <input type="checkbox" class="form-check-input" id="exampleCheck1">
                   <label class="form-check-label" for="exampleCheck1">130392493444-Stanbic</label>
                </div>
            </div>
            <button type="submit"  class="btn btn-primary" style="margin:10px;">Select All</button>
            <button type="submit"  class="btn btn-primary" style="margin:10px;">DeSelect All</button><br>
            <button type="submit"  class="btn btn-primary" style="margin:10px;">Search</button>
            <div class="alert alert-secondary" role="alert" style="text-align: center;">
                At least one bank account should be selected
            </div>
        </form>
    </body>
</html>
