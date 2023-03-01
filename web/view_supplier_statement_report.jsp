<%-- 
    Document   : view_supplier_statement_report
    Created on : 14-Nov-2019, 14:12:34
    Author     : Keitany
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Supplier Statement Report</title>
    </head>
    <body>
        <div class="alert alert-success" role="alert" style="text-align: center;">View Supplier Statement Report</div>
        <form method="post" style="padding: 10px;margin:10px;margin-top:20px;" id="new_branch" action="new_branch.jsp">
            <div class="alert alert-success" role="alert" style="text-align: center;">
            Supplier Statement Report - Search By
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
        <div class="alert alert-secondary" role="alert" style="text-align: center;">
            Please Select the Supplier Whose Statement you want to See
        </div> 
    </body>
</html>
