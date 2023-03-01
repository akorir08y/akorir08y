function itemsListA() {
  var x = document.getElementById("item_lista");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
} 

function itemsListB() {
  var x = document.getElementById("item_listb");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
} 

function itemsListC() {
  var x = document.getElementById("item_listc");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
} 

function sharesListA(){
  var x = document.getElementById("item_lista");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
}

function sharesListB(){
  var x = document.getElementById("item_lista");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
}
function sharesListC(){
  var x = document.getElementById("item_lista");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
}

 function newDirectExpense(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content_provider").innerHTML=response;
	       }
            };
            request.open("GET", "new_direct_expense.jsp", true);
	    request.send();
 }
 
 function viewDirectExpenses(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content_provider").innerHTML=response;
	       }
            };
            request.open("GET", "view_direct_expenses.jsp", true);
	    request.send();
 }
 
 function newBankReconciliation(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content_provider").innerHTML=response;
	       }
            };
            request.open("GET", "new_bank_reconciliation.jsp", true);
	    request.send();
 }
 
 function viewBankReconciliations(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content_provider").innerHTML=response;
	       }
            };
            request.open("GET", "view_bank_reconciliations.jsp", true);
	    request.send();
 }
 
 function viewBankAccountTransactionsReport(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "view_bank_account_transactions_report.jsp", true);
	    request.send();
 }
 
 function viewBankAccountReconciliation(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "view_bank_account_reconciliation.jsp", true);
	    request.send();
 }
 
 function viewBankAccountReconciliationReport(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "view_bank_account_reconciliation_report.jsp", true);
	    request.send();
 }
 
 function viewTrialBalance(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "view_trial_balance.jsp", true);
	    request.send();
 }
 
 function viewProfitAndLoss(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "view_profit_and_loss.jsp", true);
	    request.send();
 }
 function viewProfitAndLossDetailed(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "view_profit_and_loss_detailed.jsp", true);
	    request.send();
 }
 
 function viewProductProfitAndLoss(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "view_product_profit_and_loss.jsp", true);
	    request.send();
 }
 
 function viewSalesPerItemReport(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "view_sales_per_item_report.jsp", true);
	    request.send();
 }
 
 function viewSalesPerClientReport(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "view_sales_per_client_report.jsp", true);
	    request.send();
 }
 
 function viewBalanceSheet(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "view_balance_sheet.jsp", true);
	    request.send();
 }
 
 function viewAccountsReceivableAgingReport(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "view_accounts_receivable_aging_report.jsp", true);
	    request.send();
 }
 
 function viewAccountsPayableAgingReport(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "view_accounts_payable_aging_report.jsp", true);
	    request.send();
 }
 
 function viewClientInvoicesBalancesReport(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "view_client_invoices_balances_report.jsp", true);
	    request.send();
 }
 function viewClientStatementReport(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "view_client_statement_report.jsp", true);
	    request.send();
 }
 
 function viewClientBalancesReport(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "view_client_balances_report.jsp", true);
	    request.send();
 }
 
 function viewSupplierInvoicesBalancesReport(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "view_supplier_invoices_balances_report.jsp", true);
	    request.send();
 }
 
 function viewSupplierStatementReport(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "view_supplier_statement_report.jsp", true);
	    request.send();
 }
 
 function viewSupplierBalancesReport(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "view_supplier_balances_report.jsp", true);
	    request.send();
 }
 
 function viewGeneralLedgerReport(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "view_general_ledger_report.jsp", true);
	    request.send();
 }
 
 function viewJournalReport(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "view_journal.jsp", true);
	    request.send();
 }
 
 function viewCustomers(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "view_customers.jsp", true);
	    request.send();
 } function totalTransactions(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "view_transactions.jsp", true);
	    request.send();
 }
 
 function borrowerReport(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "borrower_report.jsp", true);
	    request.send();
 }
 
 function collectionReport(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "collection_report.jsp", true);
	    request.send();
 }
 
 function viewCustomers(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "view_customers.jsp", true);
	    request.send();
 } function totalTransactions(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "view_transactions.jsp", true);
	    request.send();
 }
 
 function borrowerReport(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "borrower_report.jsp", true);
	    request.send();
 }
 
 function collectionReport(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "collection_report.jsp", true);
	    request.send();
 }
 
 function viewCustomers(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "view_customers.jsp", true);
	    request.send();
 } function totalTransactions(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "view_transactions.jsp", true);
	    request.send();
 }
 
 function borrowerReport(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "borrower_report.jsp", true);
	    request.send();
 }
 
 function collectionReport(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "collection_report.jsp", true);
	    request.send();
 }
 
 function viewCustomers(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "view_customers.jsp", true);
	    request.send();
 } function totalTransactions(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "view_transactions.jsp", true);
	    request.send();
 }
 
 function borrowerReport(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "borrower_report.jsp", true);
	    request.send();
 }
 
 function collectionReport(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "collection_report.jsp", true);
	    request.send();
 }
 
 function viewCustomers(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "view_customers.jsp", true);
	    request.send();
 } function totalTransactions(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "view_transactions.jsp", true);
	    request.send();
 }
 
 function borrowerReport(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "borrower_report.jsp", true);
	    request.send();
 }
 
 function collectionReport(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "collection_report.jsp", true);
	    request.send();
 }
 
 function viewCustomers(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "view_customers.jsp", true);
	    request.send();
 }