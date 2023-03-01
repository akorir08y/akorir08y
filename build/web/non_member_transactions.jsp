<%-- 
    Document   : non_member_transactions
    Created on : 10-Sep-2019, 09:13:56
    Author     : Keitany
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3 style="text-align: center;margin-top:10px;">Non Member Transactions</h3>
        <div class="list-group">
            <div class="row">
                    <div class="col-sm-6">
                        <a href="#content" onclick="newCustomers()" class="list-group-item list-group-item-action" style="margin-bottom:30px;background-color: turquoise;">
                          <div class="d-flex w-50 justify-content-between">
                            <h5 class="mb-1">Customer Centre</h5>
                          </div>
                          <p class="mb-1">Customer Details</p>
                          <small>Related to Customer Details</small>
                        </a>
                    </div>
                    <div class="col-sm-6">
                        <a href="#content" onclick="viewSupplierCentre()" class="list-group-item list-group-item-action" style="margin-bottom:30px;background-color: lightgreen;">
                          <div class="d-flex w-50 justify-content-between">
                            <h5 class="mb-1">Suppliers Centre</h5>
                          </div>
                          <p class="mb-1">Suppliers Welfare</p>
                          <small class="text-muted">Related to Suppliers</small>
                        </a>
                    </div>
            </div>
            <div class="row">
                    <div class="col-sm-6">
                        <a href="#content" onclick="newFundTransfers()" class="list-group-item list-group-item-action" style="margin-bottom:30px;background-color: turquoise;">
                          <div class="d-flex w-50 justify-content-between">
                            <h5 class="mb-1">Banking</h5>
                          </div>
                          <p class="mb-1">Banking Details</p>
                          <small>Related to Banking Details</small>
                        </a>
                    </div>
                    <div class="col-sm-6">
                        <a href="#content" onclick="newGeneralLedgerJournals()" class="list-group-item list-group-item-action" style="margin-bottom:30px;background-color: lightgreen;">
                          <div class="d-flex w-50 justify-content-between">
                            <h5 class="mb-1">General Ledger</h5>
                          </div>
                          <p class="mb-1">General Ledger</p>
                          <small class="text-muted">Related to Journals</small>
                        </a>
                    </div>
            </div>
            <div class="row">
                    <div class="col-sm-6">
                        <a href="#content" class="list-group-item list-group-item-action" style="margin-bottom:30px;background-color: turquoise;">
                          <div class="d-flex w-50 justify-content-between">
                            <h5 class="mb-1">Accounting Reports</h5>
                          </div>
                          <p class="mb-1">Accounting Reports</p>
                          <small>Related to Accounting Reports</small>
                        </a>
                    </div>
                    <div class="col-sm-6">
                        <a href="#content" onclick="viewAccountCharts()" class="list-group-item list-group-item-action" style="margin-bottom:30px;background-color: lightgreen;">
                          <div class="d-flex w-50 justify-content-between">
                            <h5 class="mb-1">Chart of Accounts</h5>
                          </div>
                          <p class="mb-1">Chart of Accounts</p>
                          <small>Related to Chart of Accounts</small>
                        </a>
                    </div>
            </div>  
        </div>
    </body>
</html>
