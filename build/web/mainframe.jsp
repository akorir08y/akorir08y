<%-- 
    Document   : mainframe
    Created on : 26-Aug-2019, 11:08:45
    Author     : Keitany
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v3.8.5">
    <title>Dashboard Template · Bootstrap</title>

     <link rel="stylesheet"  href="css/bootstrap.css">
        <link rel="stylesheet"  href="jquery-ui.css">
        <link rel="stylesheet"  href="css/bootstrap.min.css">
        <link rel="stylesheet"  href="navbar.css">
        <link rel="stylesheet"  href="body.css">
        <link rel="stylesheet"  href="print.css">
        <link rel="stylesheet"  href="sidebar.css">
        <link rel="stylesheet"  href="css/bootstrap-grid.css">
        <link rel="stylesheet"  href="css/bootstrap-grid.min.css">
        <script src ="js/bootstrap.js"></script> 
        <script src ="js/jquery.js"></script> 
        <script src ="js/popper.js"></script> 
	<script src ="js/bootstrap.bundle.js"></script> 
        <script src ="js/jquery.min.js"></script> 
        <script src="navbar.js"></script>
        <script src="component.js"></script>
	<script src ="js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
        <script src="js/jquery.min.js"></script>
        <script type="text/javascript">
        function calculate() {
                    var num1 = document.getElementById('share_amount').value;
                    var num2 = document.getElementById('loan_amount').value;
                    var num3 = document.getElementById('savings_amount').value;
                    var result = Number(num1) + Number(num2) + Number(num3);
                    document.getElementById('total_amount').value = result; 
                    if(num1!==null&&num2!==null&&num3!==null){
                        var result = Number(num1) + Number(num2) + Number(num3);
                        document.getElementById('total_amount').value = result; 
                    }else if(num1!==null&&num2!==null){
                        var result = Number(num1) + Number(num2);
                        document.getElementById('total_amount').value = result; 
                    }else if(num1!==null){
                        var result = Number(num1);
                        document.getElementById('total_amount').value = result;
                    }
                   

        }       
        function calculateLoan() {
                    var num1 = document.getElementById('guarantor_amount_1').value;
                    var num2 = document.getElementById('guarantor_amount_2').value;
                    var num3 = document.getElementById('guarantor_amount_3').value;
                    var num4 = document.getElementById('guarantor_amount_4').value;
                    var num5 = document.getElementById('guarantor_amount_5').value;
                    var num6 = document.getElementById('guarantor_amount_6').value;
                    var num7 = document.getElementById('guarantor_amount_7').value;
                    var num8 = document.getElementById('guarantor_amount_8').value;
                    var num9 = document.getElementById('guarantor_amount_9').value;
                    var num10 = document.getElementById('guarantor_amount_10').value;
                    var num11 = document.getElementById('guarantor_amount_11').value;
                    var num12 = document.getElementById('guarantor_amount_12').value;
                    if(num1!==null&&num2!==null&&num3!==null&&num4!==null&&num5!==null&&num6!==null&&num7!==null&&num8!==null&&num9!==null&&num10!==null&&num11!==null&&num12!==null){
                        var result = Number(num1) + Number(num2) + Number(num3)+Number(num4)+Number(num5)+Number(num6)+Number(num7)+Number(num8)+Number(num9)+Number(num10)+Number(num11)+Number(num12);
                        document.getElementById('total_amount_paid').value = result; 
                    }else if(num1!==null&&num2!==null&&num3!==null&&num4!==null&&num5!==null&&num6!==null&&num7!==null&&num8!==null&&num9!==null&&num10!==null&&num11!==null){
                        var result = Number(num1) + Number(num2) + Number(num3)+Number(num4)+Number(num5)+Number(num6)+Number(num7)+Number(num8)+Number(num9)+Number(num10)+Number(num11);
                        document.getElementById('total_amount_paid').value = result; 
                    }else if(num1!==null&&num2!==null&&num3!==null&&num4!==null&&num5!==null&&num6!==null&&num7!==null&&num8!==null&&num9!==null&&num10!==null){
                        var result = Number(num1) + Number(num2) + Number(num3)+Number(num4)+Number(num5)+Number(num6)+Number(num7)+Number(num8)+Number(num9)+Number(num10);
                        document.getElementById('total_amount_paid').value = result; 
                    }else if(num1!==null&&num2!==null&&num3!==null&&num4!==null&&num5!==null&&num6!==null&&num7!==null&&num8!==null&&num9!==null){
                        var result = Number(num1) + Number(num2) + Number(num3)+Number(num4)+Number(num5)+Number(num6)+Number(num7)+Number(num8)+Number(num9);
                        document.getElementById('total_amount_paid').value = result; 
                    }else if(num1!==null&&num2!==null&&num3!==null&&num4!==null&&num5!==null&&num6!==null&&num7!==null&&num8!==null){
                        var result = Number(num1) + Number(num2) + Number(num3)+Number(num4)+Number(num5)+Number(num6)+Number(num7)+Number(num8);
                        document.getElementById('total_amount_paid').value = result; 
                    }else if(num1!==null&&num2!==null&&num3!==null&&num4!==null&&num5!==null&&num6!==null&&num7!==null){
                        var result = Number(num1) + Number(num2) + Number(num3)+Number(num4)+Number(num5)+Number(num6)+Number(num7);
                        document.getElementById('total_amount_paid').value = result; 
                    }else if(num1!==null&&num2!==null&&num3!==null&&num4!==null&&num5!==null&&num6!==null){
                        var result = Number(num1) + Number(num2) + Number(num3)+Number(num4)+Number(num5)+Number(num6);
                        document.getElementById('total_amount_paid').value = result; 
                    }else if(num1!==null&&num2!==null&&num3!==null&&num4!==null&&num5!==null){
                        var result = Number(num1) + Number(num2) + Number(num3)+Number(num4)+Number(num5);
                        document.getElementById('total_amount_paid').value = result; 
                    }else if(num1!==null&&num2!==null&&num3!==null&&num4!==null){
                        var result = Number(num1) + Number(num2) + Number(num3)+Number(num4);
                        document.getElementById('total_amount_paid').value = result; 
                    }else if(num1!==null&&num2!==null&&num3!==null){
                        var result = Number(num1) + Number(num2) + Number(num3);
                        document.getElementById('total_amount_paid').value = result; 
                    }else if(num1!==null&&num2!==null){
                        var result = Number(num1) + Number(num2);
                        document.getElementById('total_amount_paid').value = result; 
                    }else if(num1!==null){
                        var result = Number(num1);
                        document.getElementById('total_amount_paid').value = result;
                    }
                    
                   

            }
            
            $(".alldifferent").on('keyup paste',function(){
            var $this = $(this);
            keyupDelay(function() {
              var val = $this.val();
              $this.attr('value', val);
              if (val != '') {
                // get all inputs with this value and and index greater than 0 ( the duplicates ) setting all to ''
                var $dupes = $('input[value="' + val + '"]:gt(0)').val(''); 
                // if we had to empty any, alert the user
                if ($dupes.length > 0) alert('Duplicates are not allowed!');
              }
            }, 400);// delay, adjust as needed
          });


          // timer function to be used with keyup
          var keyupDelay = (function() {
            var timer = 0;
            return function(callback, ms) {
              clearTimeout(timer);
              timer = setTimeout(callback, ms);
            };
          })();
          
          function checkDuplicates(){
                    var num1 = document.getElementById('guarantor_number_1').value;
                    var num2 = document.getElementById('guarantor_number_2').value;
                    var num3 = document.getElementById('guarantor_number_3').value;
                    var num4 = document.getElementById('guarantor_number_4').value;
                    var num5 = document.getElementById('guarantor_number_5').value;
                    var num6 = document.getElementById('guarantor_number_6').value;
                    var num7 = document.getElementById('guarantor_number_7').value;
                    var num8 = document.getElementById('guarantor_number_8').value;
                    var num9 = document.getElementById('guarantor_number_9').value;
                    var num10 = document.getElementById('guarantor_number_10').value;
                    var num11 = document.getElementById('guarantor_number_11').value;
                    var num12 = document.getElementById('guarantor_number_12').value;
                    
                    if(num1.length>0){
                        if(num1==num2||num1==num3||num1==num4||num1==num5||num1==num6||num1==num7||num1==num8||num1==num9||num1==num10||num1==num11||num1==num12){
                            window.alert("This guarantor number 1 has already been selected");
                            return false;
                        }
                       
                    }else if(num2.length>0){
                        if(num2==num1||num2==num3||num2==num4||num2==num5||num2==num6||num2==num7||num2==num8||num2==num9||num2==num10||num2==num11||num2==num12){
                            window.alert("This guarantor number 2 has already been selected");
                            return false;
                        }
                       
                    }else if(num3.length>0){
                        if(num3==num1||num3==num2||num3==num4||num3==num5||num3==num6||num3==num7||num3==num8||num3==num9||num3==num10||num3==num11||num3==num12){
                            window.alert("This guarantor number 3 has already been selected");
                            return false;
                        }
                       
                    }else if(num4.length>0){
                        if(num4==num1||num4==num2||num4==num3||num4==num5||num4==num6||num4==num7||num4==num8||num4==num9||num4==num10||num4==num11||num4==num12){
                            window.alert("This guarantor number 4 has already been selected");
                            return false;
                        }else if(num4!=num1&&num4!=num2&&num4!=num3&&num4!=num5&&num4!=num6&&num4!=num7&&num4!=num8&&num4!=num9&&num4!=num10&&num4!=num11&&num4!=num12){
                            return true;
                        }
                       
                    }else if(num5.length>0){
                        if(num5==num1||num5==num2||num5==num3||num5==num4||num5==num6||num5==num7||num5==num8||num5==num9||num5==num10||num5==num11||num5==num12){
                            window.alert("This guarantor number 5 has already been selected");
                            return false;
                        }else  if(num5!=num1&&num5!=num2&&num5!=num3&&num5!=num4&&num5!=num6&&num5!=num7&&num5!=num8&&num5!=num9&&num5!=num10&&num5!=num11&&num5!=num12){
                            window.alert("This guarantor number 5 has already been selected");
                            return true;
                        }
                       
                    }else if(num6.length>0){
                        if(num6==num1||num6==num2||num6==num3||num6==num4||num6==num5||num6==num7||num6==num8||num6==num9||num6==num10||num6==num11||num6==num12){
                            window.alert("This guarantor number 6 has already been selected");
                            return false;
                        }
                       
                    }else if(num7.length>0){
                        if(num7==num1||num7==num2||num7==num3||num7==num4||num7==num5||num7==num6||num7==num8||num7==num9||num7==num10||num7==num11||num7==num12){
                            window.alert("This guarantor number 7 has already been selected");
                            return false;
                        }
                       
                    }else if(num8.length>0){
                        if(num8==num1||num8==num2||num8==num3||num8==num4||num8==num5||num8==num6||num8==num7||num8==num9||num8==num10||num8==num11||num8==num12){
                            window.alert("This guarantor number 8 has already been selected");
                            return false;
                        }
                       
                    }else if(num9.length>0){
                        if(num9==num1||num9==num2||num9==num3||num9==num4||num9==num5||num9==num6||num9==num7||num9==num8||num9==num10||num9==num11||num9==num12){
                            window.alert("This guarantor number 9 has already been selected");
                            return false;
                        }
                       
                    }else if(num10.length>0){
                        if(num10==num1||num10==num2||num10==num3||num10==num4||num10==num5||num10==num6||num10==num7||num10==num8||num10==num9||num10==num11||num10==num12){
                            window.alert("This guarantor number 10 has already been selected");
                            return false;
                        }
                       
                    }else if(num11.length>0){
                        if(num11==num1||num11==num2||num11==num3||num11==num4||num11==num5||num11==num6||num11==num7||num11==num8||num11==num9||num11==num10||num11==num12){
                            window.alert("This guarantor number 11 has already been selected");
                            return false;
                        }
                       
                    }else if(num12.length>0){
                        if(num12==num1||num12==num2||num12==num3||num12==num4||num12==num5||num12==num6||num12==num7||num12==num8||num12==num9||num12==num10||num12==num11){
                            window.alert("This guarantor number 12 has already been selected");
                            return false;
                        }
                       
                    }else{
                        return true;
                    }
              
          }
            
            function checkInput() {
                    var num1 = document.getElementById('guarantor_number_1').value;
                    var num2 = document.getElementById('guarantor_number_2').value;
                    var num3 = document.getElementById('guarantor_number_3').value;
                    var num4 = document.getElementById('guarantor_number_4').value;
                    var num5 = document.getElementById('guarantor_number_5').value;
                    var num6 = document.getElementById('guarantor_number_6').value;
                    var num7 = document.getElementById('guarantor_number_7').value;
                    var num8 = document.getElementById('guarantor_number_8').value;
                    var num9 = document.getElementById('guarantor_number_9').value;
                    var num10 = document.getElementById('guarantor_number_10').value;
                    var num11 = document.getElementById('guarantor_number_11').value;
                    var num12 = document.getElementById('guarantor_number_12').value;
                    
                   
                        if(num1==num2||num1==num3||num1==num4||num1==num5||num1==num6||num1==num7||num1==num8||num1==num9||num1==num10||num1==num11||num1==num12){
                            window.alert("This guarantor number 1 has already been selected");
                            return false;
                        }else if(num2==num1||num2==num3||num2==num4||num2==num5||num2==num6||num2==num7||num2==num8||num2==num9||num2==num10||num2==num11||num2==num12){
                            window.alert("This guarantor number 2 has already been selected");
                            return false;
                        }else if(num3==num4||num3==num5||num3==num6||num3==num7||num3==num8||num3==num9||num3==num10||num3==num11||num3==num12){
                            window.alert("This guarantor number 3 has already been selected");
                            return false;
                        }else if(num4==num5||num4==num6||num4==num7||num4==num8||num4==num9||num4==num10||num4==num11||num4==num12){
                            window.alert("This guarantor number 4 has already been selected");
                            return false;
                        }else if(num5==num6||num5==num7||num5==num8||num5==num9||num5==num10||num5==num11||num5==num12){
                            window.alert("This guarantor number 5 has already been selected");
                            return false;
                        }else if(num6==num7||num6==num8||num6==num9||num6==num10||num6==num11||num6==num12){
                            window.alert("This guarantor number 6 has already been selected");
                            return false;
                        }else if(num7==num8||num7==num9||num7==num10||num7==num11||num7==num12){
                            window.alert("This guarantor number 7 has already been selected");
                            return false;
                        }else if(num8==num9||num8==num10||num8==num11||num8==num12){
                            window.alert("This guarantor number 8 has already been selected");
                            return false;
                        }else if(num9==num10||num9==num11||num9==num12){
                            window.alert("This guarantor number 9 has already been selected");
                            return false;
                        }else if(num10==num11||num10==num12){
                            window.alert("This guarantor number 10 has already been selected");
                            return false;
                        }else if(num11==num12){
                            window.alert("This guarantor number 11 has already been selected");
                            return false;
                        }        
                   

            }
        </script>
        <script type="text/javascript">
    function showCurrentForm(function_name){
    if(function_name === "newTransaction"){
        newTransaction();
    }else if(function_name === "newLoanApplication"){
        newLoanApplication();
    }else if(function_name === "LoanAmount"){
        LoanAmount();
    }else if(function_name === "GuarantorMatch"){
        GuarantorMatch();
    }else if(function_name === "newAccount"){
        newAccount();
    }else if(function_name === "newCustomer"){
        viewCustomerCentre();
    }else if(function_name === "newCustomerInvoice"){
        newCustomerInvoice();
    }else if(function_name === "newCustomerPayment"){
        newCustomerPayment();
    }else if(function_name === "newMember"){
        viewMemberRegister();
    }else if(function_name === "newWithdrawal"){
        newWithdrawal();
    }else if(function_name === "myFunctions"){
        myFunctions();
    }else if(function_name === "newReconciliation"){
        newBankReconciliation();
    }else if(function_name === "newBillPayment"){
        newBillPayment();
    }else if(function_name === "newDirectExpense"){
        newDirectExpense();
    }else if(function_name === "newSupplierInvoice"){
        newSupplierInvoice();
    }else if(function_name === "newBillPayment"){
        newBillPayment();
    }  


}


    </script>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet"  crossorigin="anonymous">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
    <!-- Custom styles for this template -->
    <link href="dashboard.css" rel="stylesheet">
  </head>
  <body onload="$('#sidebar li ul').hide();">
  <nav id="nav_here" class="navbar navbar-expand-lg navbar-dark bg-dark" style="z-index:4;position:sticky;" >
   <button type="button" id="sidebarCollapse" class="btn btn-outline-light">
                    <i class="fa fa-bars"></i>
   </button>
      
  <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">Davido Sacco</a>
  <input style="background-color:darkgray;color:white;" class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search">
  <ul class="navbar-nav px-3">
    <li class="nav-item text-nowrap">
      <a class="nav-link" href="#">Sign out</a>
    </li>
  </ul>
    </nav>

<div class="wrapper" id="wrapper">
    <nav class="w3-sidebar w3-collapse w3-animate-left" id="sidebar" style="z-index:3;background-color: lightcyan;padding:10px;z-index:3;width:250px;">
      <div class="sidebar-sticky">
        <a href="#" class="w3-bar-item w3-button w3-padding-16 w3-hide-large w3-dark-grey w3-hover-black" onclick="w3_close()" title="close menu"><i class="fa fa-remove fa-fw"></i>  Close Menu</a>       
        <ul class="nav flex-column">
          <li class="nav-item" style="padding-top:10px;padding-bottom:10px;border-bottom: 1px solid black;">
              <a class="nav-link " href="#content" style="color:black;" onclick="fetch();">
                <img src="icons/home.svg" height="15" width="15" style="margin-top: -5px;margin-right: 5px;"><img>
              Dashboard
            </a>            
          </li>
          <li class="nav-item" style="padding-top:10px;padding-bottom:10px;border-bottom: 1px solid black;">
            <a class="nav-link" href="#content" onclick="navigateMemberTransactions()" style="color:black;">
              <img src="icons/file.svg" height="15" width="15" style="margin-top: -5px;margin-right: 5px;"><img>
              Member Transactions
            </a>
             <ul class="nav flex-column" style="margin-left: 10px;color:black;"> 
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="newTransaction()">
                        <img src="icons/anchor.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>Member Posting</a></li>
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="viewReciepts()">
                        <img src="icons/aperture.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>Retrieve Member Receipt</a></li>
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="newLoanApplication()">
                        <img src="icons/archive.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>Apply Loan</a></li>
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="viewGuarantorCheck()">
                        <img src="icons/bookmark.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>Guarantor Check</a></li>
                <li class="nav-item"><a style="color:black;" class="nav-link"  href="#content" onclick="disburseLoan()" >
                        <img src="icons/airplay.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>Disburse Loan</a></li>
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="refundSavings()">
                        <img src="icons/briefcase.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>Refund Savings</a></li>
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="newLoanRecovery()">
                        <img src="icons/book-open.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>Recover Loan</a></li>
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="journalTransfer()">
                        <img src="icons/award.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>Journal Transfer</a></li> 
               <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="shareTransfer()">
                        <img src="icons/airplay.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>Share Transfer</a></li> 
              </ul>
          </li>
          <li class="nav-item" style="padding-top:10px;padding-bottom:10px;border-bottom: 1px solid black;">
            <a class="nav-link" href="#content" onclick="nonMemberTransactions()" style="color:black;">
              <img src="icons/shopping-cart.svg" height="15" width="15" style="margin-top: -5px;margin-right: 5px;"><img>
              Non-Member Transactions
            </a>
               <ul class="nav flex-column" style="margin-left: 10px;color:black;"> 
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="viewCustomerCentre()">
                        <img src="icons/github.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>Customer Centre</a></li>
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="viewSupplierCentre()">
                        <img src="icons/gitlab.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>Supplier Centre</a></li>
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="newFundTransfers()">
                        <img src="icons/anchor.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>Banking</a></li>
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="newGeneralLedgerJournals()">
                        <img src="icons/alert-triangle.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>General Ledger</a></li>
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="">
                        <img src="icons/alert-circle.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>Accounting Reports</a></li>
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="viewAccountCharts()">
                        <img src="icons/airplay.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>Chart of Accounts</a></li>
               </ul>
          </li>
          <li class="nav-item" style="padding-top:10px;padding-bottom:10px;border-bottom: 1px solid black;">
            <a onclick="viewMemberRegister()" class="nav-link" href="#content" style="color:black;">
              <img src="icons/users.svg" height="15" width="15" style="margin-top: -5px;margin-right: 5px;"><img>
              Member Register
            </a>
          </li>
          <li class="nav-item" style="padding-top:10px;padding-bottom:10px;border-bottom: 1px solid black;">
            <a class="nav-link" href="#" style="color:black;">
              <img src="icons/bar-chart-2.svg" height="15" width="15" style="margin-top: -5px;margin-right: 5px;"><img>
              <span data-feather="bar-chart-2"></span>
              Member Reports
            </a>
          </li>
          <li class="nav-item" style="padding-top:10px;padding-bottom:10px;border-bottom: 1px solid black;">
            <a class="nav-link" href="#content" onclick="viewSupplierCentre()" style="color:black;">
              <img src="icons/aperture.svg" height="15" width="15" style="margin-top: -5px;margin-right: 5px;"><img>
              Supplier Centre
            </a>
             <ul class="nav flex-column" style="margin-left: 10px;color:black;"> 
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="newSupplier()">
                        <img src="icons/anchor.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>New Supplier</a></li>
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="viewSuppliers()">
                        <img src="icons/file.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>View Suppliers</a></li>
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="newSupplierInvoice()">
                        <img src="icons/archive.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>New Supplier Invoice</a></li>
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="viewSupplierInvoices()">
                        <img src="icons/bookmark.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>View Supplier Invoices</a></li>
                <li class="nav-item"><a style="color:black;" class="nav-link"  href="#content" onclick="newSupplierCreditMemo()" >
                        <img src="icons/airplay.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>New Supplier Credit Memo</a></li>
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="viewSupplierCreditMemos()">
                        <img src="icons/briefcase.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>View Supplier Credit Memos</a></li>
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="newBillPayment()">
                        <img src="icons/book-open.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>New Bill Payment</a></li>
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="viewBillPayments()">
                        <img src="icons/award.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>View Bill Payments</a></li> 
              </ul>
          </li>
          <li class="nav-item" style="padding-top:10px;padding-bottom:10px;border-bottom: 1px solid black;">
            <a class="nav-link" href="#content" onclick="viewCustomerCentres()" style="color:black;">
              <img src="icons/bookmark.svg" height="15" width="15" style="margin-top: -5px;margin-right: 5px;"><img>
              Customer Centre
            </a>
             <ul class="nav flex-column" style="margin-left: 10px;color:black;"> 
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="viewCustomerCentre()">
                        <img src="icons/anchor.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>New Customer</a></li>
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="viewCustomers()">
                        <img src="icons/file.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>View Customers</a></li>
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="newCustomerInvoice()">
                        <img src="icons/archive.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>New Customer Invoice</a></li>
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="viewCustomerInvoices()">
                        <img src="icons/aperture.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>View Customer Invoices</a></li>
                <li class="nav-item"><a style="color:black;" class="nav-link"  href="#content" onclick="newCustomerPayment()" >
                        <img src="icons/airplay.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>New Customer Payment</a></li>
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="viewCustomerPayments()">
                        <img src="icons/briefcase.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>View Customer Payments</a></li>
              </ul>
          </li>
          <li class="nav-item" style="padding-top:10px;padding-bottom:10px;border-bottom: 1px solid black;">
            <a class="nav-link" href="#content" onclick="newFundTransfers()" style="color:black;">
              <img src="icons/anchor.svg" height="15" width="15" style="margin-top: -5px;margin-right: 5px;"><img>
             Banking
            </a>
             <ul class="nav flex-column" style="margin-left: 10px;color:black;"> 
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="newFundTransfers()">
                        <img src="icons/file.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>New Fund Transfer</a></li>
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="viewFundTransfers()">
                        <img src="icons/aperture.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>View Fund Transfers</a></li>
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="newDirectExpense()">
                        <img src="icons/archive.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>New Direct Expense</a></li>
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="viewDirectExpenses()">
                        <img src="icons/bookmark.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>View Direct Expenses</a></li>
                <li class="nav-item"><a style="color:black;" class="nav-link"  href="#content" onclick="newBankReconciliation()" >
                        <img src="icons/airplay.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>New Bank Reconciliation</a></li>
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="viewBankReconciliations()">
                        <img src="icons/briefcase.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>View Bank Reconciliations</a></li>
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="viewBankAccountTransactionsReport()">
                        <img src="icons/film.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>Bank Account Transactions Report</a></li>
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="viewBankAccountReconciliationReport()">
                        <img src="icons/flag.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>Bank Account Reconciliation Reports</a></li>
              </ul>
          </li>
          <li class="nav-item" style="padding-top:10px;padding-bottom:10px;border-bottom: 1px solid black;">
            <a class="nav-link" href="#content" onclick="viewAccountingReports()" style="color:black;">
              <img src="icons/phone.svg" height="15" width="15" style="margin-top: -5px;margin-right: 5px;"><img>
              Accounting Reports
            </a>
               <ul class="nav flex-column" style="margin-left: 10px;color:black;"> 
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="viewTrialBalance()">
                        <img src="icons/play-circle.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>Trial Balance</a></li>
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="viewProfitAndLoss()">
                        <img src="icons/play.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>Profit and Loss</a></li>
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="viewProfitAndLossDetailed()">
                        <img src="icons/plus-circle.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>Profit and Loss(Detailed)</a></li>
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="viewBalanceSheet()">
                        <img src="icons/power.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>Balance Sheet</a></li>
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="viewAccountsReceivableAgingReport()">
                        <img src="icons/radio.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>Accounts Receivable Aging Report</a></li>
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="viewAccountsPayableAgingReport()">
                        <img src="icons/refresh-ccw.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>Accounts Payable Aging Report</a></li>
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="viewClientInvoicesBalancesReport()">
                        <img src="icons/refresh-cw.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>Customer Invoices Balances Report</a></li>
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="viewClientStatementReport()">
                        <img src="icons/repeat.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>Customer Statement Report</a></li>
                             <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="viewClientBalancesReport()">
                        <img src="icons/rewind.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>Customer Balances Report( All Customers )</a></li>
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="viewSupplierInvoicesBalancesReport()">
                        <img src="icons/rotate-cw.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>Supplier Invoices Balances Report</a></li>
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="viewSupplierStatementReport()">
                        <img src="icons/rss.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>Supplier Statement Report</a></li>
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="viewSupplierBalancesReport()">
                        <img src="icons/save.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>Supplier Balances Report( All Suppliers )</a></li>
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="viewGeneralLedgerReport()">
                        <img src="icons/scissors.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>Account Transactions/ General Ledger Report</a></li>
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="viewJournalReport()">
                        <img src="icons/server.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>Journal</a></li>
               </ul>
          </li>
          <li class="nav-item" style="padding-top:10px;padding-bottom:10px;border-bottom: 1px solid black;">
              <a class="nav-link" href="#content" onclick="viewAccountCharts()" style="color:black;">
              <img src="icons/alert-circle.svg" height="15" width="15" style="margin-top: -5px;margin-right: 5px;"><img>
              Chart of Accounts
            </a>
            <ul class="nav flex-column" style="margin-left: 10px;color:black;"> 
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="newAccount()">
                        <img src="icons/file.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>New Chart of Accounts</a></li>
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="viewChartOfAccounts()">
                        <img src="icons/aperture.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>View Chart of Accounts</a></li>
            </ul>
          </li>
          <li class="nav-item" style="padding-top:10px;padding-bottom:60px;border-bottom: 1px solid black;margin-bottom: 40px;">
              <a class="nav-link" href="#content" onclick="newGeneralLedgerJournals()" style="color:black;">
              <img src="icons/alert-triangle.svg" height="15" width="15" style="margin-top: -5px;margin-right: 5px;"><img>
              General Ledger
            </a>
            <ul class="nav flex-column" style="margin-left: 10px;color:black;"> 
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="newGeneralLedgerJournal()">
                        <img src="icons/file.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>New General Ledger Journal</a></li>
                <li class="nav-item"><a style="color:black;" class="nav-link" href="#content" onclick="viewGeneralLedgerJournals()">
                        <img src="icons/aperture.svg" height="15" width="15" 
                             style="margin-top: -5px;margin-right: 5px;"><img>View General Ledger Journals</a></li>
            </ul>
          </li>
        </ul>

      </div>
    </nav>
      
    <div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>
      
    <div class="w3-main" style="margin-left:250px;">
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
      <button type="button" onclick="w3_open();" class="w3-bar-item w3-button w3-hide-large w3-hover-none w3-hover-text-light-grey">
                    <i class="fa fa-bars"></i>
      </button>
      <div class="container" id="content"> 
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
            
          </div>
      </div>

      
    
    </div>
  </div>
<%
String function_name = String.valueOf(request.getParameter("function_name"));
%>

<script type="text/javascript">
showCurrentForm("<%=function_name%>");
</script>
<script>
    $(document).ready(function () {
        $('#sidebare li').hover(
            function () {
                //show submenu
                $('ul', this).show();
            }, function () {
            //hide submenu
            $('ul', this).hide();
        });
    });
    
    $(document).ready(function(){
        $("#sidebar li").click(function(){
          $('ul',this).show();
        });
    });
    
    $(document).ready(function(){
        $("#sidebar li").dblclick(function(){
          $('ul',this).hide();
        });
    });
    
    $(document).ready(function(){
        $("#more_input1").click(function(){
          $('#guaran_div2',this).show();
        });
    });
    
    $(document).ready(function(){
        $("#more_input1").dblclick(function(){
          $('guaran_div2',this).hide();
        });
    });
    $(document).ready(function(){
        $("#sidebar li").mouseup()(function(){
          $('ul',this).hide();
        });
    });
</script>

</html>

