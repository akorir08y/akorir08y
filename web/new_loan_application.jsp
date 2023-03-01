<%-- 
    Document   : new_loan_application
    Created on : 10-Sep-2019, 09:32:04
    Author     : Keitany
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="Functionalities.FunctionalitiesJ"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%
    String redirect_url = "";
            try{
                FunctionalitiesJ.initializeConnection();
                String member_registration_number = request.getParameter("member_registration_number");
                String member_savings = request.getParameter("member_savings");
                String loan_product = request.getParameter("loan_product");
                String member_full_name = request.getParameter("member_fullname").toUpperCase();
                String loan_amount = request.getParameter("loan_amount");
                String guarantor_1 = request.getParameter("guarantor_number_1");
                String guarantor_1_savings = request.getParameter("guarantor_savings_1");
                String guarantor_1_amount = request.getParameter("guarantor_amount_1");
                String guarantor_2 = request.getParameter("guarantor_number_2");
                String guarantor_2_savings = request.getParameter("guarantor_savings_2");
                String guarantor_2_amount = request.getParameter("guarantor_amount_2");
                String guarantor_3 = request.getParameter("guarantor_number_3");
                String guarantor_3_savings = request.getParameter("guarantor_savings_3");
                String guarantor_3_amount = request.getParameter("guarantor_amount_3");
                String total_guarantorship = request.getParameter("total_amount_paid");
                String serving_agent = request.getParameter("loan_officer").toUpperCase();
                String serving_agent_remarks = request.getParameter("loan_officer_remarks");
                String trans_date = request.getParameter("transaction_date");
                String guarantor_4 = request.getParameter("guarantor_number_4");
                String guarantor_4_savings = request.getParameter("guarantor_savings_4");
                String guarantor_4_amount = request.getParameter("guarantor_amount_4");
                String guarantor_5 = request.getParameter("guarantor_number_5");
                String guarantor_5_savings = request.getParameter("guarantor_savings_5");
                String guarantor_5_amount = request.getParameter("guarantor_amount_5");
                String guarantor_6 = request.getParameter("guarantor_number_6");
                String guarantor_6_savings = request.getParameter("guarantor_savings_6");
                String guarantor_6_amount = request.getParameter("guarantor_amount_6");
                String guarantor_7 = request.getParameter("guarantor_number_7");
                String guarantor_7_savings = request.getParameter("guarantor_savings_7");
                String guarantor_7_amount = request.getParameter("guarantor_amount_7");
                String guarantor_8 = request.getParameter("guarantor_number_8");
                String guarantor_8_savings = request.getParameter("guarantor_savings_8");
                String guarantor_8_amount = request.getParameter("guarantor_amount_8");
                String guarantor_9 = request.getParameter("guarantor_number_9");
                String guarantor_9_savings = request.getParameter("guarantor_savings_9");
                String guarantor_9_amount = request.getParameter("guarantor_amount_9");
                String guarantor_10 = request.getParameter("guarantor_number_10");
                String guarantor_10_savings = request.getParameter("guarantor_savings_10");
                String guarantor_10_amount = request.getParameter("guarantor_amount_10");
                String guarantor_11 = request.getParameter("guarantor_number_11");
                String guarantor_11_savings = request.getParameter("guarantor_savings_11");
                String guarantor_11_amount = request.getParameter("guarantor_amount_11");
                String guarantor_12 = request.getParameter("guarantor_number_12");
                String guarantor_12_savings = request.getParameter("guarantor_savings_12");
                String guarantor_12_amount = request.getParameter("guarantor_amount_12");
                
                SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
                Date startDate = df.parse(trans_date);

                java.sql.Date transaction_date = new java.sql.Date(startDate.getTime());
                System.out.println("member_registration_number:"+member_registration_number);
                System.out.println("member_savings:"+member_savings);
                System.out.println("loan_product:"+loan_product);
                System.out.println("member_full_name:"+member_full_name);
                System.out.println("loan_amount:"+loan_amount);
                System.out.println("guarantor_1:"+guarantor_1);
                System.out.println("guarantor_1_savings:"+guarantor_1_savings);
                System.out.println("guarantor_1_amount:"+guarantor_1_amount);
                System.out.println("guarantor_2:"+guarantor_2);
                System.out.println("guarantor_2_savings:"+guarantor_2_savings);
                System.out.println("guarantor_2_amount:"+guarantor_2_amount);
                System.out.println("guarantor_3:"+guarantor_3);
                System.out.println("guarantor_3_savings:"+guarantor_3_savings);
                System.out.println("guarantor_3_amount:"+guarantor_3_amount);
                System.out.println("guarantor_4:"+guarantor_4);
                System.out.println("guarantor_4_savings:"+guarantor_4_savings);
                System.out.println("guarantor_4_amount:"+guarantor_4_amount);
                System.out.println("guarantor_5:"+guarantor_5);
                System.out.println("guarantor_5_savings:"+guarantor_5_savings);
                System.out.println("guarantor_5_amount:"+guarantor_5_amount);
                System.out.println("guarantor_6:"+guarantor_6);
                System.out.println("guarantor_6_savings:"+guarantor_6_savings);
                System.out.println("guarantor_6_amount:"+guarantor_6_amount);
                System.out.println("guarantor_7:"+guarantor_7);
                System.out.println("guarantor_7_savings:"+guarantor_7_savings);
                System.out.println("guarantor_7_amount:"+guarantor_7_amount);
                System.out.println("guarantor_8:"+guarantor_8);
                System.out.println("guarantor_8_savings:"+guarantor_8_savings);
                System.out.println("guarantor_8_amount:"+guarantor_8_amount);
                System.out.println("guarantor_9:"+guarantor_9);
                System.out.println("guarantor_9_savings:"+guarantor_9_savings);
                System.out.println("guarantor_9_amount:"+guarantor_9_amount);
                System.out.println("guarantor_10:"+guarantor_10);
                System.out.println("guarantor_10_savings:"+guarantor_10_savings);
                System.out.println("guarantor_10_amount:"+guarantor_10_amount);
                System.out.println("guarantor_11:"+guarantor_11);
                System.out.println("guarantor_11_savings:"+guarantor_11_savings);
                System.out.println("guarantor_11_amount:"+guarantor_11_amount);
                System.out.println("guarantor_12:"+guarantor_12);
                System.out.println("guarantor_12_savings:"+guarantor_12_savings);
                System.out.println("guarantor_12_amount:"+guarantor_12_amount);
                System.out.println("total_guarantorship:"+total_guarantorship);
                System.out.println("serving_agent:"+serving_agent);
                System.out.println("serving_agent_remarks:"+serving_agent_remarks);
                System.out.println(transaction_date);
                
                
                

                
              if(Double.parseDouble(loan_amount)==Double.parseDouble(total_guarantorship)&&Double.parseDouble(loan_amount)>0&&Double.parseDouble(total_guarantorship)>0){
                        String result = FunctionalitiesJ.newLoanApplication(member_registration_number, Double.parseDouble(member_savings), loan_product, member_full_name, 
                                Double.parseDouble(loan_amount), guarantor_1, Double.parseDouble(guarantor_1_savings), Double.parseDouble(guarantor_1_amount), guarantor_2, 
                                Double.parseDouble(guarantor_2_savings),Double.parseDouble(guarantor_2_amount), guarantor_3, Double.parseDouble(guarantor_3_savings), 
                                Double.parseDouble(guarantor_3_amount), Double.parseDouble(total_guarantorship), 
                                serving_agent, serving_agent_remarks, String.valueOf(transaction_date));
                        String result1= FunctionalitiesJ.addMoreGuarantors(guarantor_4, Double.parseDouble(guarantor_4_savings), 
                                Double.parseDouble(guarantor_4_amount), guarantor_5, Double.parseDouble(guarantor_5_savings), 
                                Double.parseDouble(guarantor_5_amount), guarantor_6,Double.parseDouble(guarantor_6_savings), 
                                Double.parseDouble(guarantor_6_amount), guarantor_7, Double.parseDouble(guarantor_7_savings), 
                                Double.parseDouble(guarantor_7_amount), guarantor_8, Double.parseDouble(guarantor_8_savings), 
                                Double.parseDouble(guarantor_8_amount), guarantor_9, Double.parseDouble(guarantor_9_savings), 
                                Double.parseDouble(guarantor_9_amount), guarantor_10, Double.parseDouble(guarantor_10_savings),
                                Double.parseDouble(guarantor_10_amount), guarantor_11, Double.parseDouble(guarantor_11_savings),
                                Double.parseDouble(guarantor_11_amount),guarantor_12, Double.parseDouble(guarantor_12_savings),
                                Double.parseDouble(guarantor_12_amount),member_registration_number);
                        if(result.equals("success")&&result1.equals("success")||result.equals("success")){
                            redirect_url = "mainframe.jsp?function_name=newLoanApplication";
                        }else if(result.equals("failure")){

                        }
                    
                }else if(Double.parseDouble(loan_amount)!=Double.parseDouble(total_guarantorship)&&
                        Double.parseDouble(loan_amount)>0&&Double.parseDouble(total_guarantorship)>0){
                    redirect_url="mainframe.jsp?function_name=LoanAmount";
                }
                FunctionalitiesJ.closeConnection();
            }catch(Exception e){
                e.printStackTrace();
            }
    if(!redirect_url.equals("")){
        response.sendRedirect(redirect_url);
    } 
%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
  
        <div class="alert alert-success" role="alert" style="text-align: center;">New Loan Application Transaction</div>
        <ul class="nav nav-tabs" style="margin:10px;">
            <li class="nav-item">
              <a onclick="navigateMemberTransactions()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">Close</a>
            </li>
            <li class="nav-item">
              <a onclick="newLoanApplication()" style="background-color: lightcyan;" class="nav-link active" href="#content">Cancel</a>
            </li>
        </ul>
         <script type="text/javascript">
             function fnValidate(current, value){
                var hasDuplicates = false

                for(var i =0; i<5 ; i++) {
                 if(i !== current && document.getElementById("guarantor_number_"+i).value == value) {
                  hasDuplicates = true
                  break
                 }
                }

                document.getElementById('guarantor_number' + current).style.backgroundColor = hasDuplicates ? '#F00' : '#FFF'
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
            </script>
        <form method="post" style="margin:10px;padding:10px;" action="new_loan_application.jsp" onsubmit="return checkDuplicates();">
            <div class="alert alert-success" role="alert" style="text-align: center;">
            Member Information
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputCity">Member Registration Number</label>
                    <select name="member_registration_number"  id="member_registration_number" class="form-control select2" required>
                            <option selected='selected'>--Member Registration Number--</option>
                            <option value="00001">00001</option>
                            <option value="00002">00002</option>
                            <option value="00003">00003</option>
                            <option value="00004">00004</option>
                    </select>
                    </div>
                <div class="form-group col-md-6">
                   <label for="inputCity">Member Savings</label>
                   <input type="number" class="form-control" name="member_savings" id="member_savings" placeholder="Member Savings" required>

              </div>
          </div>
            
            <div class="form-row">
                <div class="form-group col-md-6">
               <label for="inputCity">Loan Product</label>
                <select name="loan_product" id="loan_product" class="form-control select2" required>
                    <option selected="selected">--Select Loan Product--</option>
                    <option value="Business Loan">Business Loan</option>
                    <option value="Overseas Worker Loan">Overseas Worker Loan</option>
                    <option value="Pensioner Loan">Pensioner Loan</option>
                    <option value="Personal Loan">Personal Loan</option>
                    <option value="Student Loan">Student Loan</option>
                </select>
                </div>
                <div class="form-group col-md-6">
                <label for="inputCity">Member Full Name</label>
                <input type="text" class="form-control" name="member_fullname" id="member_fullname" placeholder="Full Name">

              </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                <label for="inputCity">Loan Amount</label>
                <input type="text" class="form-control" name="loan_amount" id="loan_amount" placeholder="150000" required>
                </div>
                <div class="form-group col-md-6">
                <label for="inputCity">Transaction Date</label>
                <input type="date" class="form-control" name="transaction_date" id="transaction_date" placeholder="150000" required>
                </div>
            </div>
            <div class="alert alert-success" role="alert" style="text-align: center;">
            Guarantors and Amount Guaranteed
            </div>
            <div class="form-row">
                <div class="form-group col-md-3">
                  <label for="inputCity">Guarantor Number 1 </label>
                  <select name="guarantor_number_1"  id="guarantor_number_1"  class="form-control" required>
                      <option value=""></option>
                      <option value="130390430934">130390430934</option>
                      <option value="130399304334">130390439034</option>
                      <option value="130393984444">130393984444</option>
                      <option value="130392030454">130392030454</option>
                      <option value="130392490044">130392490044</option>
                      <option value="130390930244">130390930244</option>
                  </select>

                </div>
                <div class="form-group col-md-3">
                  <label for="inputCity">Total Savings</label>
                  <input type="number" class="form-control prc " name="guarantor_savings_1" id="guarantor_savings_1" placeholder="40000" required>

                </div>
                <div class="form-group col-md-3">
                  <label for="inputCity">Available Amount to Guarantee </label>
                  <input type="number" class="form-control prc " name="guaranteed_amount_1" id="guaranteed_amount_1" placeholder="40000">

                </div>
                <div class="form-group col-md-3">
                  <label for="inputCity">Amount to Guarantee </label>
                  <input type="number" class="form-control prc " name="guarantor_amount_1" id="guarantor_amount_1" placeholder="Amount" required>

                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-3">
                  <label for="inputCity">Guarantor Number 2 </label>
                  <select name="guarantor_number_2" id="guarantor_number_2"  class="form-control alldifferent" required>
                      <option value=""></option>
                      <option value="130390430934">130390430934</option>
                      <option value="130399304334">130390439034</option>
                      <option value="130393984444">130393984444</option>
                      <option value="130392030454">130392030454</option>
                      <option value="130392490044">130392490044</option>
                      <option value="130390930244">130390930244</option>
                  </select>

                </div>
                <div class="form-group col-md-3">
                  <label for="inputCity">Total Savings</label>
                  <input type="number" class="form-control prc " name="guarantor_savings_2" id="guarantor_savings_2" placeholder="40000" required>

                </div>
                <div class="form-group col-md-3">
                  <label for="inputCity">Available Amount to Guarantee </label>
                  <input type="number" class="form-control prc " name="guaranteed_amount_2" id="guaranteed_amount_2" placeholder="40000">

                </div>
                <div class="form-group col-md-3">
                  <label for="inputCity">Amount to Guarantee </label>
                  <input type="number" class="form-control prc " name="guarantor_amount_2" id="guarantor_amount_2" placeholder="Amount" required>

                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-3">
                  <label for="inputCity">Guarantor Number 3 </label>
                  <select name="guarantor_number_3" id="guarantor_number_3" class="form-control alldifferent" required>
                      <option value=""></option>
                      <option value="130390430934">130390430934</option>
                      <option value="130399304334">130390439034</option>
                      <option value="130393984444">130393984444</option>
                      <option value="130392030454">130392030454</option>
                      <option value="130392490044">130392490044</option>
                      <option value="130390930244">130390930244</option>
                  </select>

                </div>
                <div class="form-group col-md-3">
                  <label for="inputCity">Total Savings</label>
                  <input type="number" class="form-control prc " name="guarantor_savings_3" id="guarantor_savings_3" placeholder="40000" required>

                </div>
                <div class="form-group col-md-3">
                  <label for="inputCity">Available Amount to Guarantee </label>
                  <input type="number" class="form-control prc " name="guaranteed_amount_3" id="guaranteed_amount_3" placeholder="40000">

                </div>
                <div class="form-group col-md-3">
                  <label for="inputCity">Amount to Guarantee </label>
                  <input type="number" class="form-control prc " name="guarantor_amount_3" id="guarantor_amount_3" placeholder="Amount" required>

                </div>
            </div>
            <div class="alert alert-success" onclick="guarantorListA()" role="alert" style="text-align: center;">
             Add Additional Guarantors
            </div>
            
            <div id="guarantor_lista">
            <div class="form-row">
                <div class="form-group col-md-3">
                  <label for="inputCity">Guarantor Number 4 </label>
                  <input type="text" class="form-control" name="guarantor_number_4"  id="guarantor_number_4" placeholder="Guarantor Number">
                </div>
                <div class="form-group col-md-3">
                  <label for="inputCity">Total Savings</label>
                  <input type="number" class="form-control prc " name="guarantor_savings_4" id="guarantor_savings_4" placeholder="40000">

                </div>
                <div class="form-group col-md-3">
                  <label for="inputCity">Available Amount to Guarantee </label>
                  <input type="number" class="form-control prc " name="guaranteed_amount_4" id="guaranteed_amount_4" placeholder="40000">

                </div>
                <div class="form-group col-md-3">
                  <label for="inputCity">Amount to Guarantee </label>
                  <input type="number" class="form-control prc " name="guarantor_amount_4" id="guarantor_amount_4" placeholder="Amount">

                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-3">
                  <label for="inputCity">Guarantor Number 5 </label>
                  <input type="text" class="form-control" name="guarantor_number_5" id="guarantor_number_5" placeholder="Guarantor Number">
                </div>
                <div class="form-group col-md-3">
                  <label for="inputCity">Total Savings</label>
                  <input type="number" class="form-control prc " name="guarantor_savings_5" id="guarantor_savings_5" placeholder="40000">

                </div>
                <div class="form-group col-md-3">
                  <label for="inputCity">Available Amount to Guarantee </label>
                  <input type="number" class="form-control prc " name="guaranteed_amount_5" id="guaranteed_amount_5" placeholder="40000">

                </div>
                <div class="form-group col-md-3">
                  <label for="inputCity">Amount to Guarantee </label>
                  <input type="number" class="form-control prc " name="guarantor_amount_5" id="guarantor_amount_5" placeholder="Amount">

                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-3">
                  <label for="inputCity">Guarantor Number 6 </label>
                  <input type="text" class="form-control" name="guarantor_number_6" id="guarantor_number_6" placeholder="Guarantor Number">
                </div>
                <div class="form-group col-md-3">
                  <label for="inputCity">Total Savings</label>
                  <input type="number" class="form-control prc " name="guarantor_savings_6" id="guarantor_savings_6" placeholder="40000">

                </div>
                <div class="form-group col-md-3">
                  <label for="inputCity">Available Amount to Guarantee </label>
                  <input type="number" class="form-control prc " name="guaranteed_amount_6" id="guaranteed_amount_6" placeholder="40000">

                </div>
                <div class="form-group col-md-3">
                  <label for="inputCity">Amount to Guarantee </label>
                  <input type="number" class="form-control prc " name="guarantor_amount_6" id="guarantor_amount_6" placeholder="Amount">

                </div>
            </div>
       <div class="alert alert-success" onclick="guarantorListB()" role="alert" style="text-align: center;">
             Add Additional Guarantors 
        </div>
     </div>
        
        <div id="guarantor_listb">
            <div class="form-row">
                <div class="form-group col-md-3">
                  <label for="inputCity">Guarantor Number 7 </label>
                  <input type="text" class="form-control" name="guarantor_number_7" id="guarantor_number_7">
                </div>
                <div class="form-group col-md-3">
                  <label for="inputCity">Total Savings</label>
                  <input type="number" class="form-control prc " name="guarantor_savings_7" id="guarantor_savings_7" placeholder="40000">

                </div>
                <div class="form-group col-md-3">
                  <label for="inputCity">Available Amount to Guarantee </label>
                  <input type="number" class="form-control prc " name="guaranteed_amount_7" id="guaranteed_amount_7" placeholder="40000">

                </div>
                <div class="form-group col-md-3">
                  <label for="inputCity">Amount to Guarantee </label>
                  <input type="number" class="form-control prc " name="guarantor_amount_7" id="guarantor_amount_7" placeholder="Amount">

                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-3">
                  <label for="inputCity">Guarantor Number 8 </label>
                  <input type="text" class="form-control" name="guarantor_number_8"  id="guarantor_number_8">
                </div>
                <div class="form-group col-md-3">
                  <label for="inputCity">Total Savings</label>
                  <input type="number" class="form-control prc " name="guarantor_savings_8" id="guarantor_savings_8" placeholder="40000">

                </div>
                <div class="form-group col-md-3">
                  <label for="inputCity">Available Amount to Guarantee </label>
                  <input type="number" class="form-control prc " name="guaranteed_amount_8" id="guaranteed_amount_8" placeholder="40000">

                </div>
                <div class="form-group col-md-3">
                  <label for="inputCity">Amount to Guarantee </label>
                  <input type="number" class="form-control prc " name="guarantor_amount_8" id="guarantor_amount_8" placeholder="Amount">

                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-3">
                  <label for="inputCity">Guarantor Number 9 </label>
                  <input type="text" class="form-control" name="guarantor_number_9"  id="guarantor_number_9">
                </div>
                <div class="form-group col-md-3">
                  <label for="inputCity">Total Savings</label>
                  <input type="number" class="form-control prc " name="guarantor_savings_9" id="guarantor_savings_9" placeholder="40000">

                </div>
                <div class="form-group col-md-3">
                  <label for="inputCity">Available Amount to Guarantee </label>
                  <input type="number" class="form-control prc " name="guaranteed_amount_9" id="guaranteed_amount_9" placeholder="40000">

                </div>
                <div class="form-group col-md-3">
                  <label for="inputCity">Amount to Guarantee </label>
                  <input type="number" class="form-control prc " name="guarantor_amount_9" id="guarantor_amount_9" placeholder="Amount">

                </div>
            </div>
        <div class="alert alert-success" onclick="guarantorListC()" role="alert" style="text-align: center;">
             Add Additional Guarantors 
        </div>
      </div>
        
        <div id="guarantor_listc">
            <div class="form-row">
                <div class="form-group col-md-3">
                  <label for="inputCity">Guarantor Number 10 </label>
                  <input type="text" class="form-control" name="guarantor_number_10"  id="guarantor_number_10">
                </div>
                <div class="form-group col-md-3">
                  <label for="inputCity">Total Savings</label>
                  <input type="number" class="form-control prc " name="guarantor_savings_10" id="guarantor_savings_10" placeholder="40000">

                </div>
                <div class="form-group col-md-3">
                  <label for="inputCity">Available Amount to Guarantee </label>
                  <input type="number" class="form-control prc " name="guaranteed_amount_10" id="guaranteed_amount_10" placeholder="40000">

                </div>
                <div class="form-group col-md-3">
                  <label for="inputCity">Amount to Guarantee </label>
                  <input type="number" class="form-control prc " name="guarantor_amount_10" id="guarantor_amount_10" placeholder="Amount">

                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-3">
                  <label for="inputCity">Guarantor Number 11 </label>
                  <input type="text" class="form-control" name="guarantor_number_11"  id="guarantor_number_11">
                </div>
                <div class="form-group col-md-3">
                  <label for="inputCity">Total Savings</label>
                  <input type="number" class="form-control prc " name="guarantor_savings_11" id="guarantor_savings_11" placeholder="40000">

                </div>
                <div class="form-group col-md-3">
                  <label for="inputCity">Available Amount to Guarantee </label>
                  <input type="number" class="form-control prc " name="guaranteed_amount_11" id="guaranteed_amount_11" placeholder="40000">

                </div>
                <div class="form-group col-md-3">
                  <label for="inputCity">Amount to Guarantee </label>
                  <input type="number" class="form-control prc " name="guarantor_amount_11" id="guarantor_amount_11" placeholder="Amount">

                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-3">
                  <label for="inputCity">Guarantor Number 12 </label>
                  <input type="text" class="form-control" name="guarantor_number_12"  id="guarantor_number_12">
                </div>
                <div class="form-group col-md-3">
                  <label for="inputCity">Total Savings</label>
                  <input type="number" class="form-control prc " name="guarantor_savings_12" id="guarantor_savings_12" placeholder="40000">

                </div>
                <div class="form-group col-md-3">
                  <label for="inputCity">Available Amount to Guarantee </label>
                  <input type="number" class="form-control prc " name="guaranteed_amount_12" id="guaranteed_amount_12" placeholder="40000">

                </div>
                <div class="form-group col-md-3">
                  <label for="inputCity">Amount to Guarantee </label>
                  <input type="number" class="form-control prc " name="guarantor_amount_12" id="guarantor_amount_12" placeholder="Amount">

                </div>
            </div>
        </div>
            
        
        <div class="form-row">            
             <div class="form-group col-md-6">
            <label for="inputCity">Serving Agent</label>
            <input type="text" class="form-control" name="loan_officer" id="loan_officer" placeholder="James Kuria">
             </div>
            
             <div class="form-group col-md-6">
                <label for="inputCity">Total Guarantorship</label>
                <input type="number" class="form-control" name="total_amount_paid" 
                       onfocus="calculateLoan();" onmouseover="calculateLoan();" id="total_amount_paid" value="">
            </div>
        </div>
        <div class="form-group">
            <label for="inputCity">Serving Agent Remarks</label>
            <textarea class="form-control" name="loan_officer_remarks" id="loan_officer_remarks" rows="3" placeholder="Remarks"></textarea>
        </div>
        <button type="submit" id="submit_id" class="btn btn-primary">Save Loan Application</button>
        <a href="#content" onclick="navigateMemberTransactions()" class="btn btn-primary" style="display: block;margin-top: -38px;width:200px;float:right;">Close</a>

        </form>
    </body>
</html>
