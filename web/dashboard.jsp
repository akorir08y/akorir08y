<%-- 
    Document   : dashboard
    Created on : 27-Aug-2019, 13:32:05
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
        <h3 style="text-align: center;margin-top:10px;">Dashboard</h3>
        <div class="list-group">
            <div class="row">
                    <div class="col-sm-6">
                        <a href="#content" onclick="navigateMemberTransactions()" class="list-group-item list-group-item-action" style="margin-bottom:30px;background-color: turquoise;">
                          <div class="d-flex w-50 justify-content-between">
                            <h5 class="mb-1">Member Transactions</h5>
                          </div>
                          <p class="mb-1">Member Posting,Member Receipts,Applying of Loans,Guarantor cheques,
                              Disbursement of loans,Refund Savings,Recover Loan and Journal Transfer</p>
                          <small>Related to Sacco Members</small>
                        </a>
                        <a href="#content" onclick="viewMemberRegister()" class="list-group-item list-group-item-action" style="margin-bottom:30px;background-color: lightgreen;">
                          <div class="d-flex w-50 justify-content-between">
                            <h5 class="mb-1">Member Register</h5>
                            <small class="text-muted" style="float:right;">356</small>
                          </div>
                          <p class="mb-1">The Number of Members in the Sacco,Active Members and Dormant Members and Loan Defaulters</p>
                          <small class="text-muted">Related to the Member Number and Activity</small>
                        </a>
                       </div>
                       <div class="col-sm-6">
                        <a href="#content" onclick="nonMemberTransactions()" class="list-group-item list-group-item-action" style="margin-bottom:30px;background-color: azure;">
                          <div class="d-flex w-50 justify-content-between">
                            <h5 class="mb-1">Non Member Transactions</h5>
                          </div>
                          <p class="mb-1">Customer posting,Customer Receipts and Payment of Suppliers. Transactions about Expenses 
                              incurred during the day to day operations</p>
                          <small>Related to Non Sacco Members</small>
                        </a>
                        <a href="#" class="list-group-item list-group-item-action" style="margin-bottom:30px;background-color: ivory;">
                          <div class="d-flex w-50 justify-content-between">
                            <h5 class="mb-1">Member Reports</h5>
                          </div>
                          <p class="mb-1">Individual Reports on Member Savings,Member Shares and Member Loans in the Past Financial Year</p>
                          <small class="text-muted">Detailed Reports on Sacco Products Provided to Members</small>
                        </a>
                       </div>
            </div>
            </div>
    </body>
</html>
