<%-- 
    Document   : view_client_statement_report
    Created on : 14-Nov-2019, 13:44:40
    Author     : Keitany
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Customer Statement Report</title>
    </head>
    <body>
        <div class="alert alert-success" role="alert" style="text-align: center;">View Customer Statement Report</div>
        <form method="post" style="padding: 10px;margin:10px;margin-top:20px;" id="new_branch" action="new_branch.jsp">
            <div class="alert alert-success" role="alert" style="text-align: center;">
            Customer Statement Report - Search By
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
                        <option selected='selected'>--Select Customer--</option>
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
        <div class="alert alert-secondary" role="alert" style="text-align: center;">
            Please Select the Customer Whose Statement you want to See
        </div> 
    </body>
</html>
