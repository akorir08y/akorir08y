function openNav() {
  document.getElementById("sidebar").style.width = "250px";
  document.getElementById("content").style.marginLeft = "250px";
}

function closeNav() {
  document.getElementById("sidebar").style.width = "0";
  document.getElementById("content").style.marginLeft= "0";
}

$(document).ready(function () {

    $('#sidebarCollapse').on('click', function () {
        $('#sidebar').toggleClass('active');
    });

});

function LoanAmount(){
    alert("Loan Amount and Amount guaranteed do not match");
}

function GuarantorMatch(){
    alert("You cannot choose the same guarantor twice");
}

$(document).ready(function () {

    $('#hide_bar').on('click', function () {
        $('#guarantor_lista').toggleClass('active');
    });

});

$(document).ready(function () {

    $('#hide_bar1').on('click', function () {
        $('#guarantor_listb').toggleClass('active');
    });

});

$(document).ready(function () {

    $('#sidebarCollapse').on('click', function () {
        $('#wrapper').toggleClass('active');
    });

});

function showList() {
  var x = document.getElementById("sidebar li ul");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
} 

function invoiceItemsA() {
  var x = document.getElementById("invoice_lista");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
} 

function invoiceItemsB() {
  var x = document.getElementById("invoice_listb");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
} 

function invoiceItemsC() {
  var x = document.getElementById("invoice_listc");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
} 

function ExpenseListA() {
  var x = document.getElementById("expense_lista");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
} 

function ExpenseListB() {
  var x = document.getElementById("expense_listb");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
} 

function ExpenseListC() {
  var x = document.getElementById("expense_listc");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
} 

function journalItemsA() {
  var x = document.getElementById("journal_lista");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
} 

function journalItemsB() {
  var x = document.getElementById("journal_listb");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
} 

function journalItemsC() {
  var x = document.getElementById("journal_listc");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
} 


function CreditListA() {
  var x = document.getElementById("credit_lista");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
} 

function CreditListB() {
  var x = document.getElementById("credit_listb");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
} 

function CreditListC() {
  var x = document.getElementById("credit_listc");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
} 

function hideButton() {
  var x = document.getElementById("");
  if (x.style.display === "block") {
     x.style.display = "none";
  } else {
    x.style.display = "block";
  }
} 

function showButton() {
  var x = document.getElementById("submit_id");
  if (x.style.display === "block") {
     x.style.display = "block";
  } else {
    x.style.display = "none";
  }
} 

function guarantorListA() {
  var x = document.getElementById("guarantor_lista");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
} 

function guarantorListB() {
  var x = document.getElementById("guarantor_listb");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
} 

function guarantorListC() {
  var x = document.getElementById("guarantor_listc");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
} 

function introducerInfo() {
  var x = document.getElementById("introducer_info");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
} 

function calculate() {
                    var num1 = document.getElementById('share_amount').value;
                    var num2 = document.getElementById('loan_amount').value;
                    var num3 = document.getElementById('savings_amount').value;
                    var num4 = document.getElementById('share_amount').value;
                    var num5 = document.getElementById('loan_amount').value;
                    var num6 = document.getElementById('savings_amount').value;
                    var num7 = document.getElementById('share_amount').value;
                    var num8 = document.getElementById('loan_amount').value;
                    var num9 = document.getElementById('savings_amount').value;
                    var num10 = document.getElementById('share_amount').value;
                    var num11 = document.getElementById('loan_amount').value;
                    var num12 = document.getElementById('savings_amount').value;
                    if(num1!==null&&num2!==null&&num3!==null){
                        var result = Number(num1) + Number(num2) + Number(num3);
                        document.getElementById('total_amount_paid').value = result; 
                    }else if(num1!==null&&num2!==null){
                        var result = Number(num1) + Number(num2);
                        document.getElementById('total_amount_paid').value = result; 
                    }else if(num1!==null){
                        var result = Number(num1);
                        document.getElementById('total_amount_paid').value = result;
                    }else if(num1!==null&&num2!==null&&num3!==null&&num4!==null){
                        var result = Number(num1)+ Number(num2) + Number(num3) + Number(num4);
                        document.getElementById('total_amount_paid').value = result;
                    }else if(num1!==null&&num2!==null&&num3!==null&&num4!==null&&num5!==null){
                        var result = Number(num1)+ Number(num2) + Number(num3) + Number(num4)+ Number(5);
                        document.getElementById('total_amount_paid').value = result;
                    }else if(num1!==null&&num2!==null&&num3!==null&&num4!==null&&num5!==null&&num6!==null){
                        var result = Number(num1)+ Number(num2) + Number(num3) + Number(num4)+ Number(num5) + Number(num6);
                        document.getElementById('total_amount_paid').value = result;
                    }else if(num1!==null&&num2!==null&&num3!==null&&num4!==null&&num5!==null&&num6!==null&&num7!==null){
                        var result = Number(num1)+ Number(num2) + Number(num3) + Number(num4)+ Number(num5) + Number(num6) + Number(num7);
                        document.getElementById('total_amount_paid').value = result;
                    }else if(num1!==null&&num2!==null&&num3!==null&&num4!==null&&num5!==null&&num6!==null&&num7!==null&&num8!==null){
                        var result = Number(num1)+ Number(num2) + Number(num3) + Number(num4)+ Number(num5) + Number(num6) + Number(num7)+ Number(num8);
                        document.getElementById('total_amount_paid').value = result;
                    }else if(num1!==null&&num2!==null&&num3!==null&&num4!==null&&num5!==null&&num6!==null&&num7!==null&&num8!==null&&num9!==null){
                        var result = Number(num1)+ Number(num2) + Number(num3) + Number(num4)+ Number(num5) + Number(num6) + Number(num7)+ Number(num8)+ Number(num9);
                        document.getElementById('total_amount_paid').value = result;
                    }else if(num1!==null&&num2!==null&&num3!==null&&num4!==null&&num5!==null&&num6!==null&&num7!==null&&num8!==null&&num9!==null&&num10!==null){
                        var result = Number(num1)+ Number(num2) + Number(num3) + Number(num4)+ Number(num5) + Number(num6) + Number(num7)+ Number(num8)+ Number(num9)+Number(num10);
                        document.getElementById('total_amount_paid').value = result;
                    }else if(num1!==null&&num2!==null&&num3!==null&&num4!==null&&num5!==null&&num6!==null&&num7!==null&&num8!==null&&num9!==null&&num10!==null&&num11!==null){
                        var result = Number(num1)+ Number(num2) + Number(num3) + Number(num4)+ Number(num5) + Number(num6) + Number(num7)+ Number(num8)+ Number(num9)+Number(num10)+Number(num11);
                        document.getElementById('total_amount_paid').value = result;
                    }else if(num1!==null&&num2!==null&&num3!==null&&num4!==null&&num5!==null&&num6!==null&&num7!==null&&num8!==null&&num9!==null&&num10!==null&&num11!==null&&num12!==null){
                        var result = Number(num1)+ Number(num2) + Number(num3) + Number(num4)+ Number(num5) + Number(num6) + Number(num7)+ Number(num8)+ Number(num9)+Number(num10)+ Number(num11)+Number(num12);
                        document.getElementById('total_amount_paid').value = result;
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
                    if(num1!==null&&num2!==null&&num3!==null&&num4!==null&&num5!==null&&num6!==null&&num7!==null&&num8!==null&&num9!==null){
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

$(document).ready(function () {
     $('.form-group').on('input','.prc',function(){
        var totalSum = 0;
     $('.form-group .prc').each(function(){
        var inputVal = $(this).val();
        if($.isNumeric(inputVal)){
            totalSum += parseFloat(inputVal);
        }
        });
     $('#total_amount').val(totalSum);
    });
});

function readURL(input){
var ext = input.files[0]['name'].substring(input.files[0]['name'].lastIndexOf('.') + 1).toLowerCase();
if (input.files && input.files[0] && (ext === "gif" || ext === "png" || ext === "jpeg" || ext === "jpg")){ 
    var reader = new FileReader();
    reader.onload = function (e) {
        $('#img').attr('src', e.target.result);
    };

    reader.readAsDataURL(input.files[0]);
}else{
     $('#img').attr('src', '/assets/no_preview.png');
}
}

function readPhotoURL(input){
var ext = input.files[0]['name'].substring(input.files[0]['name'].lastIndexOf('.') + 1).toLowerCase();
if (input.files && input.files[0] && (ext === "gif" || ext === "png" || ext === "jpeg" || ext === "jpg")){ 
    var reader = new FileReader();
    reader.onload = function (e) {
        $('#img1').attr('src', e.target.result);
    };

    reader.readAsDataURL(input.files[0]);
}else{
     $('#img1').attr('src', '/assets/no_preview.png');
}
}




// Toggle between showing and hiding the sidebar, and add overlay effect
function w3_open() {
    // Get the Sidebar
var mySidebar = document.getElementById("sidebar");

// Get the DIV with overlay effect
var overlayBg = document.getElementById("myOverlay");

  if (mySidebar.style.display === 'block') {
    mySidebar.style.display = 'none';
    overlayBg.style.display = "none";
  } else {
    mySidebar.style.display = 'block';
    overlayBg.style.display = "block";
  }
}

// Close the sidebar with the close button
function w3_close() {
    // Get the Sidebar
var mySidebar = document.getElementById("sidebar");

// Get the DIV with overlay effect
var overlayBg = document.getElementById("myOverlay");

  mySidebar.style.display = "none";
  overlayBg.style.display = "none";
}

function myFunction() {
  var x = document.getElementsByClassName("w3-dropdown-content w3-bar-block w3-card-4");
  if (x.className.indexOf("w3-show") === -1) {  
    x.className += " w3-show";
  } else { 
    x.className = x.className.replace(" w3-show", "");
  }
}


function fetch(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "dashboard.jsp", true);
	    request.send();
 }
 
function newTransaction(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "new_transaction.jsp", true);
	    request.send();
 }
 
 
function navigateMemberTransactions(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "member_transactions.jsp", true);
	    request.send();
 }
 
function newBranch() {
   $.ajax({
     url: 'new_branch.jsp',
     success: function(data) {
          $('#content').html(data);
     }
   });
}


function newCustomer() {
   $.ajax({
     url: 'new_customer.jsp',
     success: function(data) {
          $('#content').html(data);
     }
   });
}
 
 function viewGuarantorCheck(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "view_guarantor_check.jsp", true);
	    request.send();
 }
 
 function newLoanRecovery(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "new_loan_recovery.jsp", true);
	    request.send();
 }
 
 
 function searchInfo(){  
        var request=new XMLHttpRequest();  
        var name=document.search_form.search.value;  
        var url="table.jsp?val="+name;  

     
        request.onreadystatechange=function(){  
        if(request.readyState===4){  
        var val=request.responseText;  
        document.getElementById('mylocation').innerHTML=val;  
        }  
        };//end of function  
        request.open("GET",url,true);  
        request.send();  
}

function searchCustomerInfo(){  
        var request=new XMLHttpRequest();  
        var name=document.search_customer.search.value;  
        var url="customer_table.jsp?val="+name;  

     
        request.onreadystatechange=function(){  
        if(request.readyState===4){  
        var val=request.responseText;  
        document.getElementById('my_location').innerHTML=val;  
        }  
        };//end of function  
        request.open("GET",url,true);  
        request.send();  
}
 
 function nonMemberTransactions(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "non_member_transactions.jsp", true);
	    request.send();
 }
 
 function newLoanApplication(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "new_loan_application.jsp", true);
	    request.send();
 }
 
 
 function newSupplierPayment(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "new_supplier_payment.jsp", true);
	    request.send();
 }
 
 function newSupplierInvoice(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "new_supplier_invoice.jsp", true);
	    request.send();
 }
 
function viewReciepts(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "view_reciepts.jsp", true);
	    request.send();
 }
 
 function retrieveReciepts(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("my_location").innerHTML=response;
	       }
            };
            request.open("GET", "view_reciepts.jsp", true);
	    request.send();
 }

function viewSupplierCentre(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "view_supplier_centre.jsp", true);
	    request.send();
 }
function viewCustomerCentre(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "view_customer_centre.jsp", true);
	    request.send();
 }
 
 function viewCustomerInvoices(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content_provider").innerHTML=response;
	       }
            };
            request.open("GET", "view_customer_invoices.jsp", true);
	    request.send();
 }
 
 function viewCustomerPayments(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content_provider").innerHTML=response;
	       }
            };
            request.open("GET", "view_customer_payments.jsp", true);
	    request.send();
 }
 
 
function disburseLoan(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "new_disburse_loan.jsp", true);
	    request.send();
 }
 
 function refundSavings(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "new_refund_savings.jsp", true);
	    request.send();
 }
 
 
  function journalTransfer(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "new_journal_transfer.jsp", true);
	    request.send();
 }
 
function viewCustomerCentre(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content_provider").innerHTML=response;
	       }
            };
            request.open("GET", "new_customer.jsp", true);
	    request.send();
 }
 
function viewCustomerCentres(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "new_customer.jsp", true);
	    request.send();
 }

function newCustomerInvoice(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content_provider").innerHTML=response;
	       }
            };
            request.open("GET", "new_customer_invoice.jsp", true);
	    request.send();
 }
 
 function newCustomerPayment(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "new_customer_payment.jsp", true);
	    request.send();
 }
 
 function viewMemberRegister(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "member_register.jsp", true);
	    request.send();
 }
 
 function viewMembers(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "view_members.jsp", true);
	    request.send();
 }
 
 function newSupplier(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content_provider").innerHTML=response;
	       }
            };
            request.open("GET", "new_supplier.jsp", true);
	    request.send();
 }
 
 function viewSuppliers(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content_provider").innerHTML=response;
	       }
            };
            request.open("GET", "view_supplier_centre.jsp", true);
	    request.send();
 }
 
 function viewSupplierCentre(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "view_supplier_centre.jsp", true);
	    request.send();
 }
 
 function newSupplierInvoice(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content_provider").innerHTML=response;
	       }
            };
            request.open("GET", "new_supplier_invoice.jsp", true);
	    request.send();
 }
 
 function viewSupplierInvoices(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content_provider").innerHTML=response;
	       }
            };
            request.open("GET", "view_supplier_invoices.jsp", true);
	    request.send();
 }
 
 function newBillPayment(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content_provider").innerHTML=response;
	       }
            };
            request.open("GET", "new_bill_payment.jsp", true);
	    request.send();
 }
 
 function viewBillPayments(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content_provider").innerHTML=response;
	       }
            };
            request.open("GET", "view_bill_payments.jsp", true);
	    request.send();
 }
 
 function newSupplierCreditMemo(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content_provider").innerHTML=response;
	       }
            };
            request.open("GET", "new_supplier_credit_memo.jsp", true);
	    request.send();
 }
 function viewSupplierCreditMemos(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content_provider").innerHTML=response;
	       }
            };
            request.open("GET", "view_supplier_credit_memos.jsp", true);
	    request.send();
 }
 
function viewFundTransfers(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content_provider").innerHTML=response;
	       }
            };
            request.open("GET", "view_fund_transfers.jsp", true);
	    request.send();
 }
 
function newFundTransfer(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content_provider").innerHTML=response;
	       }
            };
            request.open("GET", "new_fund_transfer.jsp", true);
	    request.send();
 }
 
function newFundTransfers(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "new_fund_transfer.jsp", true);
	    request.send();
 }
 
function newGeneralLedgerJournal(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content_provider").innerHTML=response;
	       }
            };
            request.open("GET", "new_general_journal.jsp", true);
	    request.send();
 }
 
 function viewGeneralLedgerJournals(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content_provider").innerHTML=response;
	       }
            };
            request.open("GET", "view_general_journals.jsp", true);
	    request.send();
 }
 
 function newGeneralLedgerJournals(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "new_general_journal.jsp", true);
	    request.send();
 }
 
 function viewChartOfAccounts(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content_provider").innerHTML=response;
	       }
            };
            request.open("GET", "view_chart_of_accounts.jsp", true);
	    request.send();
 }
 
 function viewAccountCharts(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "view_chart_of_accounts.jsp", true);
	    request.send();
 }
 
 function newAccount(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content_provider").innerHTML=response;
	       }
            };
            request.open("GET", "new_account.jsp", true);
	    request.send();
 }
 
 function totalTransactions(){
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
 
 function shareTransfer(){
	    var request = new XMLHttpRequest();
	    request.onreadystatechange = function(){
	       if(this.readyState === 4 && this.status === 200){
	          var response = this.responseText;
		  document.getElementById("content").innerHTML=response;
	       }
            };
            request.open("GET", "new_share_transfer.jsp", true);
	    request.send();
 }
 function lists(){
    $(document).ready(function () {
           $('#nav li').hover(
           function () {
               //show submenu
               $('ul', this).slideDown("fast");
           }, function () {
               //hide submenu
               $('ul', this).slideUp("fast");
           });
       });
 }