<%-- 
    Document   : new_supplier
    Created on : 25-Nov-2019, 12:55:25
    Author     : Keitany
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Supplier</title>
    </head>
    <body>
        <div id="content_provider">
        <div class="alert alert-success" role="alert" style="text-align: center;">New Supplier</div>
        
        <ul class="nav nav-tabs" style="margin: 10px;">
        <li class="nav-item">
          <a onclick="newSupplier()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">New Supplier</a>
        </li>
        <li class="nav-item">
          <a onclick="viewSuppliers()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">View Suppliers</a>
        </li>
        <li class="nav-item">
          <a onclick="newSupplierInvoice()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">New Supplier Invoices</a>
        </li>
        <li class="nav-item">
          <a onclick="viewSupplierInvoices()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">View Supplier Invoices</a>
        </li>
        <li class="nav-item">
          <a onclick="newSupplierCreditMemo()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">New Supplier Credit Memo</a>
        </li>
        <li class="nav-item">
          <a onclick="viewSupplierCreditMemos()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">View Supplier Credit Memos</a>
        </li>
        <li class="nav-item">
          <a onclick="newBillPayment()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">New Bill Payment</a>
        </li>
        <li class="nav-item">
          <a onclick="viewBillPayments()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">View Bill Payments</a>
        </li>
        <li class="nav-item">
          <a onclick="nonMemberTransactions()" style="background-color: lightcyan;" class="nav-link active" href="#content">Close</a>
        </li>
        </ul>
        <form method="post" style="margin:10px;padding:10px;" action="new_supplier.jsp">
            <div class="alert alert-success" role="alert" style="text-align: center;">
             New Supplier Information
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputCity">Supplier Name</label>
                    <input type="text" class="form-control" name="supplier_name" id="supplier_name" placeholder="Supplier Name">
                </div>
                <div class="form-group col-md-6">
                    <label for="inputCity">Contact Person</label>
                    <input type="text" class="form-control" name="contact_person" id="contact_person" placeholder="Contact Person">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputCity">Supplier Mobile Number</label>
                    <input type="text" class="form-control" name="supplier_mobile" id="supplier_mobile" placeholder="Supplier Name">
                </div>
                <div class="form-group col-md-6">
                    <label for="inputCity">Supplier Email Address</label>
                    <input type="text" class="form-control" name="supplier_email" id="supplier_email" placeholder="Supplier Email Address">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputCity">Credit Terms</label>
                    <input type="text" class="form-control" name="credit_terms" id="credit_terms" placeholder="Credit Terms">
                </div>
                <div class="form-group col-md-6">
                    <label for="inputCity">Pin Number</label>
                    <input type="text" class="form-control" name="pin_number" id="pin_number" placeholder="Pin Number">
                </div>
            </div>
            <div class="alert alert-success" role="alert" style="text-align: center;">
                Billing Address
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputCity">Name</label>
                    <input type="text" class="form-control" name="name" id="name" placeholder="Name">
                </div>
                <div class="form-group col-md-6">
                    <label for="inputCity">P.O.B.O.X</label>
                    <input type="text" class="form-control" name="address" id="address" placeholder="Address">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputCity">Town</label>
                    <input type="text" class="form-control" name="town" id="town" placeholder="Town">
                </div>
                <div class="form-group col-md-6">
                    <label for="inputCity">Country Street</label>
                    <input type="text" class="form-control" name="country_street" id="country_street" placeholder="Country Street">
                </div>
            </div>
            <button type="submit" class="btn btn-primary">Save Supplier</button>
        </form>
      </div>
    </body>
</html>
