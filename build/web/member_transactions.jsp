<%-- 
    Document   : member_transactions
    Created on : 27-Aug-2019, 14:30:47
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
        <h3 style="text-align: center;margin-top:10px;">All Member Transactions</h3>
        <div class="list-group">
            <div class="row">
                <div class="col-sm-4">
                    <a href="#content" onclick="newTransaction()" class="list-group-item list-group-item-action" style="margin-bottom:30px;background-color: turquoise;">
                      <div class="d-flex w-50 justify-content-between">
                        <h5 class="mb-1">Member Posting/Receipts</h5>
                      </div>
                      <p class="mb-1">Posting Member Transactions</p>
                    </a>
                </div>
                <div class="col-sm-4">
                    <a href="#content" onclick="viewReciepts()" class="list-group-item list-group-item-action" style="margin-bottom:30px;background-color: ivory;">
                      <div class="d-flex w-50 justify-content-between">
                        <h5 class="mb-1">Retrieve Member Receipts</h5>
                      </div>
                      <p class="mb-1">Print Member Receipts</p>
                    </a>
                </div>
                <div class="col-sm-4">
                    <a href="#content" onclick="newLoanApplication()" class="list-group-item list-group-item-action" style="margin-bottom:30px;background-color: azure;">
                      <div class="d-flex w-50 justify-content-between">
                        <h5 class="mb-1">Member Apply Loan </h5>
                      </div>
                      <p class="mb-1">Application of Loans</p>
                    </a>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <a href="#content" onclick="viewGuarantorCheck()" class="list-group-item list-group-item-action" style="margin-bottom:30px;background-color: turquoise;">
                      <div class="d-flex w-50 justify-content-between">
                        <h5 class="mb-1">Guarantor Check</h5>
                      </div>
                      <p class="mb-1">Checking Guarantors</p>
                    </a>
                </div>
                <div class="col-sm-4">
                     <a href="#content" onclick="disburseLoan()" class="list-group-item list-group-item-action" style="margin-bottom:30px;background-color: ivory;">
                      <div class="d-flex w-50 justify-content-between">
                        <h5 class="mb-1">Disburse Loan  </h5>
                      </div>
                      <p class="mb-1">Disbursement of Loans</p>
                    </a>
                </div>
                <div class="col-sm-4">
                    <a  href="#content" onclick="refundSavings()" class="list-group-item list-group-item-action" style="margin-bottom:30px;background-color: azure;">
                      <div class="d-flex w-50 justify-content-between">
                        <h5 class="mb-1">Refund Savings</h5>
                      </div>
                      <p class="mb-1">Refunding Savings to Members.</p>
                    </a>
                </div>
            </div>
            <div class="row">
                    <div class="col-sm-4">
                        <a href="#content" onclick="newLoanRecovery()" class="list-group-item list-group-item-action" style="margin-bottom:30px;background-color: turquoise;">
                        <div class="d-flex w-50 justify-content-between">
                          <h5 class="mb-1">Recover Loan</h5>
                        </div>
                        <p class="mb-1">Loan Recovery from members</p>
                      </a>
                    </div>
                    <div class="col-sm-4">
                      <a href="#content" onclick="journalTransfer()" class="list-group-item list-group-item-action" style="margin-bottom:30px;background-color: ivory;">
                        <div class="d-flex w-50 justify-content-between">
                          <h5 class="mb-1">Journal Transfer</h5>
                        </div>
                        <p class="mb-1">Transfer of Funds</p>
                      </a>
                   </div>
                    <div class="col-sm-4">
                      <a href="#content" onclick="shareTransfer()" class="list-group-item list-group-item-action" style="margin-bottom:30px;background-color: azure;">
                        <div class="d-flex w-50 justify-content-between">
                          <h5 class="mb-1">Share Transfer</h5>
                        </div>
                        <p class="mb-1">Transfer of Shares</p>
                      </a>
                   </div>
            </div>
                </div>
    </body>
</html>
