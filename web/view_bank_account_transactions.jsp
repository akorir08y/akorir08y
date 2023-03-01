<%-- 
    Document   : view_bank_account_transactions
    Created on : 07-Nov-2019, 21:29:19
    Author     : Keitany
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Bank Account Transactions</title>
    </head>
    <body>
         <div class="alert alert-success" role="alert" style="text-align: center;">View Bank Account Transactions</div>
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
            <div class="form-row">
                 <div class="form-group col-md-6">
                    <label for="inputAddress2">Bank Account</label>
                    <select name="bank_account_number" id="bank_account_number" class="form-control select2" required>
                       <option selected="selected">--Select Bank Account Number--</option>
                       <option value="130390430934">130390430934-Equity</option>
                       <option value="130399304334">130390439034-Barclays</option>
                       <option value="130393984444">130393984444-KCB</option>
                       <option value="130392030454">130392030454-Co-operative</option>
                       <option value="130392490044">130392490044-Stanbic</option>
                       <option value="130390930244">130390930244-NIC</option>
                   </select>
                </div>
                <div class="form-group col-md-6">
                    <label for="Client">Prepared By/Transacted By</label>
                    <select name="prepared_by" id="prepared_by" class="form-control select2" required>
                            <option selected='selected'>All Users</option>
                            <option value="James">James</option>
                            <option value="Malcolm">Malcolm</option>
                            <option value="Patrick">Patrick</option>
                            <option value="Kevin">Kevin</option>
                            <option value="Jason">Jason</option>
                            <option value="Matthew">Matthew</option>
                    </select>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                   <label for="inputAddress2">Contact</label>
                   <input type="text" class="form-control" name="contact" id="contact" placeholder="Contact" required>
                 </div>
                 <div class="form-group col-md-6">
                   <label for="inputAddress2">Reference</label>
                   <input type="text" class="form-control" name="reference" id="reference" placeholder="Reference" required>
                 </div>
            </div>
            <div class="form-group">
                <label for="inputCity">Description</label>
                <textarea class="form-control" name="description" id="description" rows="3" placeholder="Description"></textarea>
           </div>
            <button type="submit"  class="btn btn-primary">Search</button>
        </form>
         <div class="alert alert-secondary" role="alert" style="text-align: center;">
            Select the bank account whose transactions you want to view
         </div>
    </body>
</html>
