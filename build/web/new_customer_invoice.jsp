<%-- 
    Document   : new_customer_invoice
    Created on : 11-Sep-2019, 11:32:51
    Author     : Keitany
--%>

<%@page import="Functionalities.FunctionalitiesJ"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div id="content_provider">
        <div class="alert alert-success" role="alert" style="text-align: center;margin-top: 10px;">New Customer Invoice Transaction</div>
        <ul class="nav nav-tabs" style="margin: 10px;">
        <li class="nav-item">
          <a onclick="viewCustomerCentre()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">New Customer</a>
        </li>
        <li class="nav-item">
          <a onclick="viewCustomers()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">View Customers</a>
        </li>
        <li class="nav-item">
          <a onclick="newCustomerInvoice()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">New Customer Invoices</a>
        </li>
        <li class="nav-item">
          <a onclick="viewCustomerInvoices()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">View Customer Invoices</a>
        </li>
        <li class="nav-item">
          <a onclick="newCustomerPayment()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">New Customer Payments</a>
        </li>
        <li class="nav-item">
          <a onclick="viewCustomerPayments()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">View Customer Payments</a>
        </li>
        <li class="nav-item">
          <a onclick="nonMemberTransactions()" style="background-color: lightcyan;" class="nav-link active" href="#content">Close</a>
        </li>
        </ul>
         
         <form method="post" style="margin:10px;padding:10px;" action="new_customer_invoice.jsp">
            <div class="alert alert-success" role="alert" style="text-align: center;">
            Customer Information
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputCity">Customer Full Name</label>
                    <select name="customer_name"  id="customer_name" class="form-control select2" required>
                            <option selected='selected'>--Customer Full Name--</option>
                            <option value="Julius Mwathe">Julius Mwathe</option>
                            <option value="Erastus Nyile">Erastus Nyile</option>
                            <option value="Bellah Chepkulei">Bellah Chepkulei</option>
                            <option value="Tom Nzioki">Tom Nzioki</option>
                    </select>
                    </div>
                <div class="form-group col-md-6">
                   <label for="inputCity">Invoice Number</label>
                   <input type="Number" class="form-control" name="invoice_number" id="invoice_number" placeholder="Invoice Number">

                </div>
          </div>
             <div class="form-row">
                <div class="form-group col-md-6">
                        <label for="inputCity">Invoice To</label>
                        <input type="text" class="form-control" name="invoice_to" id="invoice_to" placeholder="Transaction Number">
                </div>
                 <div class="form-group col-md-6">
                        <label for="inputCity">Payment Method</label>
                        <input type="text" class="form-control" name="payment_method" id="payment_method" placeholder="Payment Method">
                </div>
             </div>
            <div class="alert alert-success" role="alert" style="text-align: center;">
                Add Invoice Items
            </div>
            <table class="table table-hover" style="margin:10px;padding:10px;">
                   
                   <tr>
                        <th scope="col">#</th>
                        <th scope="col">Invoice Item</th>
                        <th scope="col">Description</th>
                        <th scope="col">Amount</th>
                        <th scope="col">Value Added Tax</th>
                   </tr>                   
                   <tr> 
                       <th scope="row">1</th>
                       <td><select name="invoice_item_1" id="invoice_item_1" class="form-control select2" required>
                        <option selected="selected">--Select Invoice Item--</option>
                        <option value="Accommodation">Accommodation</option>
                        <option value="Advertising and Promotion">Advertising and Promotion</option>
                        <option value="Bank/Finance Charges">Bank/Finance Charges</option>
                        <option value="Computer Hardware">Computer Hardware</option>
                        <option value="Computer Software">Computer Software</option>
                        <option value="Insurance">Insurance</option>
                        <option value="Office Equipment">Office Equipment</option>
                        <option value="Office Rent">Office Rent</option>
                        <option value="Printing">Printing</option>
                        <option value="SMS Units">SMS Units</option>
                        <option value="Travel">Travel</option>
                        <option value="Miscellaneous">Miscellaneous</option>
                      </select></td>
                       <td><textarea class="form-control" name="invoice_item_description1" id="invoice_item_description1" rows="3" placeholder="Description"></textarea></td>
                       <td><input type="number" class="form-control prc " name="invoice_item_amount1" id="invoice_item_amount1" placeholder="40000"></td>
                       <td><select name="invoice_vat_1" id="invoice_vat_1" class="form-control select2" required>
                      <option selected="selected">--Select VAT--</option>
                        <option value="0%">0%</option>
                        <option value="16%">16%</option>
                      </select></td>
                   </tr>
                    <tr>
                       <th scope="row">2</th>                       
                       <td><select name="invoice_item_2" id="invoice_item_2" class="form-control select2" required>
                        <option selected="selected">--Select Invoice Item--</option>
                        <option value="Accommodation">Accommodation</option>
                        <option value="Advertising and Promotion">Advertising and Promotion</option>
                        <option value="Bank/Finance Charges">Bank/Finance Charges</option>
                        <option value="Computer Hardware">Computer Hardware</option>
                        <option value="Computer Software">Computer Software</option>
                        <option value="Insurance">Insurance</option>
                        <option value="Office Equipment">Office Equipment</option>
                        <option value="Office Rent">Office Rent</option>
                        <option value="Printing">Printing</option>
                        <option value="SMS Units">SMS Units</option>
                        <option value="Travel">Travel</option>
                        <option value="Miscellaneous">Miscellaneous</option>
                      </select></td>
                       <td><textarea class="form-control" name="invoice_item_description2" id="invoice_item_description2" rows="3" placeholder="Description"></textarea></td>
                       <td><input type="number" class="form-control prc " name="invoice_item_amount2" id="invoice_item_amount2" placeholder="40000"></td>
                       <td><select name="invoice_vat_2" id="invoice_vat_2" class="form-control select2" required>
                        <option selected="selected">--Select VAT--</option>
                        <option value="0%">0%</option>
                        <option value="16%">16%</option>
                      </select></td>
                   </tr> 
                    <tr>
                       <th scope="row">3</th>                      
                       <td><select name="invoice_item_3" id="invoice_item_3" class="form-control select2" required>
                        <option selected="selected">--Select Invoice Item--</option>
                        <option value="Accommodation">Accommodation</option>
                        <option value="Advertising and Promotion">Advertising and Promotion</option>
                        <option value="Bank/Finance Charges">Bank/Finance Charges</option>
                        <option value="Computer Hardware">Computer Hardware</option>
                        <option value="Computer Software">Computer Software</option>
                        <option value="Insurance">Insurance</option>
                        <option value="Office Equipment">Office Equipment</option>
                        <option value="Office Rent">Office Rent</option>
                        <option value="Printing">Printing</option>
                        <option value="SMS Units">SMS Units</option>
                        <option value="Travel">Travel</option>
                        <option value="Miscellaneous">Miscellaneous</option>
                      </select></td>
                       <td><textarea class="form-control" name="invoice_item_description3" id="invoice_item_description3" rows="3" placeholder="Description"></textarea></td>
                       <td><input type="number" class="form-control prc " name="invoice_item_amount3" id="invoice_item_amount3" placeholder="40000"></td>
                       <td><select name="invoice_vat_3" id="invoice_vat_3" class="form-control select2" required>
                        <option selected="selected">--Select VAT--</option>
                        <option value="0%">0%</option>
                        <option value="16%">16%</option>
                      </select></td>
                   </tr> 
                   <tr>
                       <td colspan="5"><div class="alert alert-success" style="text-align: center;" role="alert" onclick="invoiceItemsA();">
                        Add Additional Items
                        </div></td>
                   </tr>
            </table>
             <div id="invoice_lista">
             <table class="table table-hover" style="margin:10px;padding:10px;">
                   <tr>
                        <tr> 
                            <th scope="row">4</th>
                            <td><select name="invoice_item_4" id="invoice_item_4" class="form-control select2" required>
                             <option selected="selected">--Select Invoice Item--</option>
                             <option value="Accommodation">Accommodation</option>
                             <option value="Advertising and Promotion">Advertising and Promotion</option>
                             <option value="Bank/Finance Charges">Bank/Finance Charges</option>
                             <option value="Computer Hardware">Computer Hardware</option>
                             <option value="Computer Software">Computer Software</option>
                             <option value="Insurance">Insurance</option>
                             <option value="Office Equipment">Office Equipment</option>
                             <option value="Office Rent">Office Rent</option>
                             <option value="Printing">Printing</option>
                             <option value="SMS Units">SMS Units</option>
                             <option value="Travel">Travel</option>
                             <option value="Miscellaneous">Miscellaneous</option>
                           </select></td>
                            <td><textarea class="form-control" name="invoice_item_description4" id="invoice_item_description4" rows="3" placeholder="Description"></textarea></td>
                            <td><input type="number" class="form-control prc " name="invoice_item_amount4" id="invoice_item_amount4" placeholder="40000"></td>
                            <td><select name="invoice_vat_4" id="invoice_vat_4" class="form-control select2" required>
                            <option selected="selected">--Select VAT--</option>
                            <option value="0%">0%</option>
                            <option value="16%">16%</option>
                           </select></td>
                        </tr>
                         <tr>
                            <th scope="row">5</th>                       
                            <td><select name="invoice_item_5" id="invoice_item_5" class="form-control select2" required>
                             <option selected="selected">--Select Invoice Item--</option>
                             <option value="Accommodation">Accommodation</option>
                             <option value="Advertising and Promotion">Advertising and Promotion</option>
                             <option value="Bank/Finance Charges">Bank/Finance Charges</option>
                             <option value="Computer Hardware">Computer Hardware</option>
                             <option value="Computer Software">Computer Software</option>
                             <option value="Insurance">Insurance</option>
                             <option value="Office Equipment">Office Equipment</option>
                             <option value="Office Rent">Office Rent</option>
                             <option value="Printing">Printing</option>
                             <option value="SMS Units">SMS Units</option>
                             <option value="Travel">Travel</option>
                             <option value="Miscellaneous">Miscellaneous</option>
                           </select></td>
                            <td><textarea class="form-control" name="invoice_item_description5" id="invoice_item_description5" rows="3" placeholder="Description"></textarea></td>
                            <td><input type="number" class="form-control prc " name="invoice_item_amount5" id="invoice_item_amount5" placeholder="40000"></td>
                            <td><select name="invoice_vat_5" id="invoice_vat_5" class="form-control select2" required>
                            <option selected="selected">--Select VAT--</option>
                            <option value="0%">0%</option>
                            <option value="16%">16%</option>
                           </select></td>
                        </tr> 
                         <tr>
                            <th scope="row">6</th>                      
                            <td><select name="invoice_item_6" id="invoice_item_6" class="form-control select2" required>
                             <option selected="selected">--Select Invoice Item--</option>
                             <option value="Accommodation">Accommodation</option>
                             <option value="Advertising and Promotion">Advertising and Promotion</option>
                             <option value="Bank/Finance Charges">Bank/Finance Charges</option>
                             <option value="Computer Hardware">Computer Hardware</option>
                             <option value="Computer Software">Computer Software</option>
                             <option value="Insurance">Insurance</option>
                             <option value="Office Equipment">Office Equipment</option>
                             <option value="Office Rent">Office Rent</option>
                             <option value="Printing">Printing</option>
                             <option value="SMS Units">SMS Units</option>
                             <option value="Travel">Travel</option>
                             <option value="Miscellaneous">Miscellaneous</option>
                           </select></td>
                            <td><textarea class="form-control" name="invoice_item_description6" id="invoice_item_description6" rows="3" placeholder="Description"></textarea></td>
                            <td><input type="number" class="form-control prc " name="invoice_item_amount6" id="invoice_item_amount6" placeholder="40000"></td>
                            <td><select name="invoice_vat_6" id="invoice_vat_6" class="form-control select2" required>
                             <option selected="selected">--Select VAT--</option>
                             <option value="0%">0%</option>
                             <option value="16%">16%</option>
                           </select></td>
                        </tr> 
                        <tr>
                       <td colspan="5"><div class="alert alert-success" style="text-align: center;" role="alert" onclick="invoiceItemsB();">
                        Add Additional Items
                        </div></td>
                   </tr>
                   
                </table>
             <div id="invoice_listb">
             <table class="table table-hover" style="margin:10px;padding:10px;">
                   <tr>
                        <tr> 
                            <th scope="row">7</th>
                            <td><select name="invoice_item_7" id="invoice_item_7" class="form-control select2" required>
                             <option selected="selected">--Select Invoice Item--</option>
                             <option value="Accommodation">Accommodation</option>
                             <option value="Advertising and Promotion">Advertising and Promotion</option>
                             <option value="Bank/Finance Charges">Bank/Finance Charges</option>
                             <option value="Computer Hardware">Computer Hardware</option>
                             <option value="Computer Software">Computer Software</option>
                             <option value="Insurance">Insurance</option>
                             <option value="Office Equipment">Office Equipment</option>
                             <option value="Office Rent">Office Rent</option>
                             <option value="Printing">Printing</option>
                             <option value="SMS Units">SMS Units</option>
                             <option value="Travel">Travel</option>
                             <option value="Miscellaneous">Miscellaneous</option>
                           </select></td>
                            <td><textarea class="form-control" name="invoice_item_description7" id="invoice_item_description7" rows="3" placeholder="Description"></textarea></td>
                            <td><input type="number" class="form-control prc " name="invoice_item_amount7" id="invoice_item_amount7" placeholder="40000"></td>
                            <td><select name="invoice_vat_7" id="invoice_vat_7" class="form-control select2" required>
                            <option selected="selected">--Select VAT--</option>
                            <option value="0%">0%</option>
                            <option value="16%">16%</option>
                           </select></td>
                        </tr>
                         <tr>
                            <th scope="row">8</th>                       
                            <td><select name="invoice_item_8" id="invoice_item_8" class="form-control select2" required>
                             <option selected="selected">--Select Invoice Item--</option>
                             <option value="Accommodation">Accommodation</option>
                             <option value="Advertising and Promotion">Advertising and Promotion</option>
                             <option value="Bank/Finance Charges">Bank/Finance Charges</option>
                             <option value="Computer Hardware">Computer Hardware</option>
                             <option value="Computer Software">Computer Software</option>
                             <option value="Insurance">Insurance</option>
                             <option value="Office Equipment">Office Equipment</option>
                             <option value="Office Rent">Office Rent</option>
                             <option value="Printing">Printing</option>
                             <option value="SMS Units">SMS Units</option>
                             <option value="Travel">Travel</option>
                             <option value="Miscellaneous">Miscellaneous</option>
                           </select></td>
                            <td><textarea class="form-control" name="invoice_item_description8" id="invoice_item_description8" rows="3" placeholder="Description"></textarea></td>
                            <td><input type="number" class="form-control prc " name="invoice_item_amount8" id="invoice_item_amount8" placeholder="40000"></td>
                            <td><select name="invoice_vat_8" id="invoice_vat_8" class="form-control select2" required>
                            <option selected="selected">--Select VAT--</option>
                            <option value="0%">0%</option>
                            <option value="16%">16%</option>
                           </select></td>
                        </tr> 
                         <tr>
                            <th scope="row">9</th>                      
                            <td><select name="invoice_item_9" id="invoice_item_9" class="form-control select2" required>
                             <option selected="selected">--Select Invoice Item--</option>
                             <option value="Accommodation">Accommodation</option>
                             <option value="Advertising and Promotion">Advertising and Promotion</option>
                             <option value="Bank/Finance Charges">Bank/Finance Charges</option>
                             <option value="Computer Hardware">Computer Hardware</option>
                             <option value="Computer Software">Computer Software</option>
                             <option value="Insurance">Insurance</option>
                             <option value="Office Equipment">Office Equipment</option>
                             <option value="Office Rent">Office Rent</option>
                             <option value="Printing">Printing</option>
                             <option value="SMS Units">SMS Units</option>
                             <option value="Travel">Travel</option>
                             <option value="Miscellaneous">Miscellaneous</option>
                           </select></td>
                            <td><textarea class="form-control" name="invoice_item_description9" id="invoice_item_description9" rows="3" placeholder="Description"></textarea></td>
                            <td><input type="number" class="form-control prc " name="invoice_item_amount9" id="invoice_item_amount9" placeholder="40000"></td>
                            <td><select name="invoice_vat_9" id="invoice_vat_9" class="form-control select2" required>
                            <option selected="selected">--Select VAT--</option>
                            <option value="0%">0%</option>
                            <option value="16%">16%</option>
                           </select></td>
                        </tr> 
                        <tr>
                       <td colspan="5"><div class="alert alert-success" style="text-align: center;" role="alert" onclick="invoiceItemsC();">
                        Add Additional Items
                        </div></td>
                   </tr>
                   
                </table>
             <div id="invoice_listc">
             <table class="table table-hover" style="margin:10px;padding:10px;">
                   <tr>
                        <tr> 
                            <th scope="row">10</th>
                            <td><select name="invoice_item_10" id="invoice_item_10" class="form-control select2" required>
                             <option selected="selected">--Select Invoice Item--</option>
                             <option value="Accommodation">Accommodation</option>
                             <option value="Advertising and Promotion">Advertising and Promotion</option>
                             <option value="Bank/Finance Charges">Bank/Finance Charges</option>
                             <option value="Computer Hardware">Computer Hardware</option>
                             <option value="Computer Software">Computer Software</option>
                             <option value="Insurance">Insurance</option>
                             <option value="Office Equipment">Office Equipment</option>
                             <option value="Office Rent">Office Rent</option>
                             <option value="Printing">Printing</option>
                             <option value="SMS Units">SMS Units</option>
                             <option value="Travel">Travel</option>
                             <option value="Miscellaneous">Miscellaneous</option>
                           </select></td>
                            <td><textarea class="form-control" name="invoice_item_description10" id="invoice_item_description10" rows="3" placeholder="Description"></textarea></td>
                            <td><input type="number" class="form-control prc " name="invoice_item_amount10" id="invoice_item_amount10" placeholder="40000"></td>
                            <td><select name="invoice_vat_10" id="invoice_vat_10" class="form-control select2" required>
                            <option selected="selected">--Select VAT--</option>
                            <option value="0%">0%</option>
                            <option value="16%">16%</option>
                           </select></td>
                        </tr>
                         <tr>
                            <th scope="row">11</th>                       
                            <td><select name="invoice_item_11" id="invoice_item_11" class="form-control select2" required>
                             <option selected="selected">--Select Invoice Item--</option>
                             <option value="Accommodation">Accommodation</option>
                             <option value="Advertising and Promotion">Advertising and Promotion</option>
                             <option value="Bank/Finance Charges">Bank/Finance Charges</option>
                             <option value="Computer Hardware">Computer Hardware</option>
                             <option value="Computer Software">Computer Software</option>
                             <option value="Insurance">Insurance</option>
                             <option value="Office Equipment">Office Equipment</option>
                             <option value="Office Rent">Office Rent</option>
                             <option value="Printing">Printing</option>
                             <option value="SMS Units">SMS Units</option>
                             <option value="Travel">Travel</option>
                             <option value="Miscellaneous">Miscellaneous</option>
                           </select></td>
                            <td><textarea class="form-control" name="invoice_item_description11" id="invoice_item_description11" rows="3" placeholder="Description"></textarea></td>
                            <td><input type="number" class="form-control prc " name="invoice_item_amount11" id="invoice_item_amount11" placeholder="40000"></td>
                            <td><select name="invoice_vat_11" id="invoice_vat_11" class="form-control select2" required>
                             <option selected="selected">--Select VAT--</option>
                             <option value="0%">0%</option>
                             <option value="16%">16%</option>
                           </select></td>
                        </tr> 
                         <tr>
                            <th scope="row">12</th>                      
                            <td><select name="invoice_item_12" id="invoice_item_12" class="form-control select2" required>
                             <option selected="selected">--Select Invoice Item--</option>
                             <option value="Accommodation">Accommodation</option>
                             <option value="Advertising and Promotion">Advertising and Promotion</option>
                             <option value="Bank/Finance Charges">Bank/Finance Charges</option>
                             <option value="Computer Hardware">Computer Hardware</option>
                             <option value="Computer Software">Computer Software</option>
                             <option value="Insurance">Insurance</option>
                             <option value="Office Equipment">Office Equipment</option>
                             <option value="Office Rent">Office Rent</option>
                             <option value="Printing">Printing</option>
                             <option value="SMS Units">SMS Units</option>
                             <option value="Travel">Travel</option>
                             <option value="Miscellaneous">Miscellaneous</option>
                           </select></td>
                            <td><textarea class="form-control" name="invoice_item_description12" id="invoice_item_description12" rows="3" placeholder="Description"></textarea></td>
                            <td><input type="number" class="form-control prc " name="invoice_item_amount12" id="invoice_item_amount12" placeholder="40000"></td>
                            <td><select name="invoice_vat_12" id="invoice_vat_12" class="form-control select2" required>
                             <option selected="selected">--Select VAT--</option>
                             <option value="0%">0%</option>
                             <option value="16%">16%</option>
                           </select></td>
                        </tr> 
                        
                   
                </table>
                 </div>
                 </div>
                 </div>
            <div class="form-group">
                <label for="inputCity">Serving Agent</label>
                <input type="text" class="form-control" name="serving_agent" id="serving_agent" placeholder="Serving Agent">
            </div>
            <button type="submit" class="btn btn-primary">Save Customer Invoice</button>
            <button class="btn btn-primary" type="reset" style="margin-left: 20px;width:200px;">Cancel</button>
            <%
            try{
                String customer_full_name = request.getParameter("customer_name").toUpperCase();
                String invoice_recipient = request.getParameter("invoice_to");
                String invoice_number = request.getParameter("invoice_number");
                String payment_method = request.getParameter("payment_method");
                String invoice_1 = request.getParameter("invoice_item_1");
                String invoice_1_description = request.getParameter("invoice_item_description1");
                String invoice_1_amount = request.getParameter("invoice_item_amount1");
                String invoice_1_vat = request.getParameter("invoice_vat_1");
                String invoice_2 = request.getParameter("invoice_item_2");
                String invoice_2_description = request.getParameter("invoice_item_description2");
                String invoice_2_amount = request.getParameter("invoice_item_amount2");
                String invoice_2_vat = request.getParameter("invoice_vat_2");
                String invoice_3 = request.getParameter("invoice_item_3");
                String invoice_3_description = request.getParameter("invoice_item_description3");
                String invoice_3_amount = request.getParameter("invoice_item_amount3");
                String invoice_3_vat = request.getParameter("invoice_vat_3");
                String invoice_4 = request.getParameter("invoice_item_4");
                String invoice_4_description = request.getParameter("invoice_item_description4");
                String invoice_4_amount = request.getParameter("invoice_item_amount4");
                String invoice_4_vat = request.getParameter("invoice_vat_4");
                String invoice_5 = request.getParameter("invoice_item_5");
                String invoice_5_description = request.getParameter("invoice_item_description5");
                String invoice_5_amount = request.getParameter("invoice_item_amount5");
                String invoice_5_vat = request.getParameter("invoice_vat_5");
                String invoice_6 = request.getParameter("invoice_item_6");
                String invoice_6_description = request.getParameter("invoice_item_description6");
                String invoice_6_amount = request.getParameter("invoice_item_amount6");
                String invoice_6_vat = request.getParameter("invoice_vat_6");
                String invoice_7 = request.getParameter("invoice_item_7");
                String invoice_7_description = request.getParameter("invoice_item_description7");
                String invoice_7_amount = request.getParameter("invoice_item_amount7");
                String invoice_7_vat = request.getParameter("invoice_vat_7");
                String invoice_8 = request.getParameter("invoice_item_8");
                String invoice_8_description = request.getParameter("invoice_item_description8");
                String invoice_8_amount = request.getParameter("invoice_item_amount8");
                String invoice_8_vat = request.getParameter("invoice_vat_8");
                String invoice_9 = request.getParameter("invoice_item_9");
                String invoice_9_description = request.getParameter("invoice_item_description9");
                String invoice_9_amount = request.getParameter("invoice_item_amount9");
                String invoice_9_vat = request.getParameter("invoice_vat_9");
                String invoice_10 = request.getParameter("invoice_item_10");
                String invoice_10_description = request.getParameter("invoice_item_description10");
                String invoice_10_amount = request.getParameter("invoice_item_amount10");
                String invoice_10_vat = request.getParameter("invoice_vat_10");
                String invoice_11 = request.getParameter("invoice_item_11");
                String invoice_11_description = request.getParameter("invoice_item_description11");
                String invoice_11_amount = request.getParameter("invoice_item_amount11");
                String invoice_11_vat = request.getParameter("invoice_vat_11");
                String invoice_12 = request.getParameter("invoice_item_12");
                String invoice_12_description = request.getParameter("invoice_item_description12");
                String invoice_12_amount = request.getParameter("invoice_item_amount12");
                String invoice_12_vat = request.getParameter("invoice_vat_12");
                String opening_date = request.getParameter("transaction_date");
                String serving_agent = request.getParameter("serving_agent");

                SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
                Date startDate = df.parse(opening_date);

                java.sql.Date transaction_date = new java.sql.Date(startDate.getTime());
                FunctionalitiesJ.initializeConnection();            
                String result = FunctionalitiesJ.newCustomerInvoice(customer_full_name, invoice_recipient, invoice_number, 
                        payment_method, invoice_1, invoice_1_description, invoice_1_amount, invoice_1_vat, invoice_2, 
                        invoice_2_description, invoice_2_amount, invoice_2_vat, invoice_3, invoice_3_description, 
                        invoice_3_amount, invoice_3_vat, serving_agent, String.valueOf(transaction_date));
                String result1 = FunctionalitiesJ.addMoreInvoices(invoice_4, invoice_4_description, invoice_4_amount, 
                        invoice_4_vat, invoice_5, invoice_5_description, invoice_5_amount, invoice_5_vat, invoice_6, 
                        invoice_6_description, invoice_6_amount, invoice_6_vat, invoice_7, invoice_7_description, 
                        invoice_7_amount, invoice_7_vat, invoice_8, invoice_8_description, invoice_8_amount, invoice_8_vat,
                        invoice_9, invoice_9_description, invoice_9_amount, invoice_9_vat, invoice_10, 
                        invoice_10_description, invoice_10_amount, invoice_10_vat, invoice_11, invoice_11_description, 
                        invoice_11_amount, invoice_11_vat, invoice_12, invoice_12_description, invoice_12_amount, invoice_12_vat);
                FunctionalitiesJ.closeConnection();
                if(result.equals("success")&&result1.equals("success")){
                    response.sendRedirect("mainframe.jsp?function_name=newCustomerInvoice");
                }else if(result.equals("failure")&&result1.equals("success")){

                }
             }catch(Exception e){
                e.printStackTrace();
            }
            
            
        %>
        </form>
    </div>
    </body>
</html>
