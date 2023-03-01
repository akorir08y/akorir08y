<%-- 
    Document   : new_share_transfer
    Created on : 14-Dec-2019, 15:42:07
    Author     : Keitany
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Share Transfer</title>
    </head>
    <body>
        <div class="alert alert-success" role="alert" style="text-align: center;">
           New Share Transfer
        </div>
        <form method="post" style="margin:10px;padding:10px;" action="new_share_transfer.jsp">
            <div class="alert alert-success" role="alert" style="text-align: center;">
            Share Transfer Details
            </div>
            
            <div class="form-row">
                <div class="form-group col-md-6">
                      <label for="inputCity">Member Registration Number</label>
                       <input type="text" class="form-control" name="member_registration_number" id="member_registration_number" placeholder="Member Registration Number">  
                </div> 
                <div class="form-group col-md-6">
                      <label for="inputCity">Member Name</label>
                       <input type="text" class="form-control" name="member_name" id="member_name" placeholder="Member Name">  
                </div> 
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                      <label for="inputCity">Share Transfer Date</label>
                       <input type="date" class="form-control" name="transfer_date" id="transfer_date" placeholder="Member Registration Number">  
                </div> 
                <div class="form-group col-md-6">
                      <label for="inputCity">Total Shares Owned</label>
                       <input type="text" class="form-control" name="shares_owned" id="shares_owned" placeholder="Total Shares Owned">  
                </div> 
            </div>
            <div class="alert alert-success" role="alert" style="text-align: center;">
                Add Shares
            </div>
            <table class="table table-hover" style="margin:10px;padding:10px;">
                   
                   <tr>
                        <th scope="col">#</th>
                        <th scope="col">Member Registration Number</th>
                        <th scope="col">Member Name</th>
                        <th scope="col">Amount Transferred</th>                        
                        <th scope="col">New Balance</th>
                        <th scope="col">Transfer Fee</th>                        
                   </tr>                   
                   <tr> 
                       <th scope="row">1</th>
                       <td><select name="member_registration_number1"  id="member_registration_number1" class="form-control select2" required>
                            <option selected='selected'>--Member Registration Number--</option>
                            <option value="00001">00001</option>
                            <option value="00002">00002</option>
                            <option value="00003">00003</option>
                            <option value="00004">00004</option>
                            <option value="00005">00005</option>
                            <option value="00006">00006</option>
                            <option value="00007">00007</option>
                            <option value="00008">00008</option>
                            <option value="00009">00009</option>
                            <option value="00010">00010</option>
                            <option value="00011">00011</option>
                            <option value="00012">00012</option>
                            <option value="00013">00013</option>
                            <option value="00014">00014</option>
                            <option value="00015">00015</option>
                            <option value="00016">00016</option>
                    </select></td>
                    <td><input type="text" class="form-control" name="member_name1" id="member_name1" placeholder="Full Name"></td>
                      <td><input type="number" class="form-control prc " name="amount1" id="amount1" placeholder="Amount Transferred"></td>
                      <td><input type="number" class="form-control prc " name="balance1" id="balance1" placeholder="New Balance"></td>
                      <td><input type="number" class="form-control prc " name="transfer_fee1" id="transfer_fee1" placeholder="Transfer Fee"></td>  
                   </tr>
                   <tr> 
                       <th scope="row">2</th>
                       <td><select name="member_registration_number2"  id="member_registration_number2" class="form-control select2" required>
                            <option selected='selected'>--Member Registration Number--</option>
                            <option value="00001">00001</option>
                            <option value="00002">00002</option>
                            <option value="00003">00003</option>
                            <option value="00004">00004</option>
                            <option value="00005">00005</option>
                            <option value="00006">00006</option>
                            <option value="00007">00007</option>
                            <option value="00008">00008</option>
                            <option value="00009">00009</option>
                            <option value="00010">00010</option>
                            <option value="00011">00011</option>
                            <option value="00012">00012</option>
                            <option value="00013">00013</option>
                            <option value="00014">00014</option>
                            <option value="00015">00015</option>
                            <option value="00016">00016</option>
                    </select></td>
                    <td><input type="text" class="form-control" name="member_name2" id="member_name2" placeholder="Full Name"></td>
                      <td><input type="number" class="form-control prc " name="amount2" id="amount2" placeholder="Amount Transferred"></td>
                      <td><input type="number" class="form-control prc " name="balance2" id="balance2" placeholder="New Balance"></td>
                      <td><input type="number" class="form-control prc " name="transfer_fee2" id="transfer_fee2" placeholder="Transfer Fee"></td>  
                   </tr>
                   <tr> 
                       <th scope="row">3</th>
                       <td><select name="member_registration_number3"  id="member_registration_number3" class="form-control select2" required>
                            <option selected='selected'>--Member Registration Number--</option>
                            <option value="00001">00001</option>
                            <option value="00002">00002</option>
                            <option value="00003">00003</option>
                            <option value="00004">00004</option>
                            <option value="00005">00005</option>
                            <option value="00006">00006</option>
                            <option value="00007">00007</option>
                            <option value="00008">00008</option>
                            <option value="00009">00009</option>
                            <option value="00010">00010</option>
                            <option value="00011">00011</option>
                            <option value="00012">00012</option>
                            <option value="00013">00013</option>
                            <option value="00014">00014</option>
                            <option value="00015">00015</option>
                            <option value="00016">00016</option>
                    </select></td>
                    <td><input type="text" class="form-control" name="member_name3" id="member_name3" placeholder="Full Name"></td>
                      <td><input type="number" class="form-control prc " name="amount3" id="amount3" placeholder="Amount Transferred"></td>
                      <td><input type="number" class="form-control prc " name="balance3" id="balance3" placeholder="New Balance"></td>
                      <td><input type="number" class="form-control prc " name="transfer_fee3" id="transfer_fee3" placeholder="Transfer Fee"></td>  
                   </tr>
                   <tr>
                       <td colspan="6"><div class="alert alert-success" style="text-align: center;" role="alert" onclick="sharesListA();">
                        Add Additional Shares
                        </div></td>
                   </tr>
            </table>
            <div id="share_lista">
                <table class="table table-hover" style="margin:10px;padding:10px;">
                   <tr> 
                       <th scope="row">4</th>
                       <td><select name="member_registration_number4"  id="member_registration_number4" class="form-control select2" required>
                            <option selected='selected'>--Member Registration Number--</option>
                            <option value="00001">00001</option>
                            <option value="00002">00002</option>
                            <option value="00003">00003</option>
                            <option value="00004">00004</option>
                            <option value="00005">00005</option>
                            <option value="00006">00006</option>
                            <option value="00007">00007</option>
                            <option value="00008">00008</option>
                            <option value="00009">00009</option>
                            <option value="00010">00010</option>
                            <option value="00011">00011</option>
                            <option value="00012">00012</option>
                            <option value="00013">00013</option>
                            <option value="00014">00014</option>
                            <option value="00015">00015</option>
                            <option value="00016">00016</option>
                    </select></td>
                    <td><input type="text" class="form-control" name="member_name4" id="member_name4" placeholder="Full Name"></td>
                      <td><input type="number" class="form-control prc " name="amount4" id="amount4" placeholder="Amount Transferred"></td>
                      <td><input type="number" class="form-control prc " name="balance4" id="balance4" placeholder="New Balance"></td>
                      <td><input type="number" class="form-control prc " name="transfer_fee4" id="transfer_fee4" placeholder="Transfer Fee"></td>  
                   </tr>
                   <tr> 
                       <th scope="row">5</th>
                       <td><select name="member_registration_number5"  id="member_registration_number5" class="form-control select2" required>
                            <option selected='selected'>--Member Registration Number--</option>
                            <option value="00001">00001</option>
                            <option value="00002">00002</option>
                            <option value="00003">00003</option>
                            <option value="00004">00004</option>
                            <option value="00005">00005</option>
                            <option value="00006">00006</option>
                            <option value="00007">00007</option>
                            <option value="00008">00008</option>
                            <option value="00009">00009</option>
                            <option value="00010">00010</option>
                            <option value="00011">00011</option>
                            <option value="00012">00012</option>
                            <option value="00013">00013</option>
                            <option value="00014">00014</option>
                            <option value="00015">00015</option>
                            <option value="00016">00016</option>
                    </select></td>
                    <td><input type="text" class="form-control" name="member_name5" id="member_name5" placeholder="Full Name"></td>
                      <td><input type="number" class="form-control prc " name="amount5" id="amount5" placeholder="Amount Transferred"></td>
                      <td><input type="number" class="form-control prc " name="balance5" id="balance5" placeholder="New Balance"></td>
                      <td><input type="number" class="form-control prc " name="transfer_fee5" id="transfer_fee5" placeholder="Transfer Fee"></td>  
                   </tr>
                   <tr> 
                       <th scope="row">6</th>
                       <td><select name="member_registration_number6"  id="member_registration_number6" class="form-control select2" required>
                            <option selected='selected'>--Member Registration Number--</option>
                            <option value="00001">00001</option>
                            <option value="00002">00002</option>
                            <option value="00003">00003</option>
                            <option value="00004">00004</option>
                            <option value="00005">00005</option>
                            <option value="00006">00006</option>
                            <option value="00007">00007</option>
                            <option value="00008">00008</option>
                            <option value="00009">00009</option>
                            <option value="00010">00010</option>
                            <option value="00011">00011</option>
                            <option value="00012">00012</option>
                            <option value="00013">00013</option>
                            <option value="00014">00014</option>
                            <option value="00015">00015</option>
                            <option value="00016">00016</option>
                    </select></td>
                    <td><input type="text" class="form-control" name="member_name6" id="member_name6" placeholder="Full Name"></td>
                      <td><input type="number" class="form-control prc " name="amount6" id="amount6" placeholder="Amount Transferred"></td>
                      <td><input type="number" class="form-control prc " name="balance6" id="balance6" placeholder="New Balance"></td>
                      <td><input type="number" class="form-control prc " name="transfer_fee6" id="transfer_fee3" placeholder="Transfer Fee"></td>  
                   </tr>
                   
                    <tr>
                       <td colspan="6"><div class="alert alert-success" style="text-align: center;" role="alert" onclick="sharesListB();">
                        Add Additional Shares
                        </div></td>
                   </tr>
            </table>
                <div id="share_listb">
                <table class="table table-hover" style="margin:10px;padding:10px;">            
                   <tr> 
                       <th scope="row">7</th>
                       <td><select name="member_registration_number7"  id="member_registration_number7" class="form-control select2" required>
                            <option selected='selected'>--Member Registration Number--</option>
                            <option value="00001">00001</option>
                            <option value="00002">00002</option>
                            <option value="00003">00003</option>
                            <option value="00004">00004</option>
                            <option value="00005">00005</option>
                            <option value="00006">00006</option>
                            <option value="00007">00007</option>
                            <option value="00008">00008</option>
                            <option value="00009">00009</option>
                            <option value="00010">00010</option>
                            <option value="00011">00011</option>
                            <option value="00012">00012</option>
                            <option value="00013">00013</option>
                            <option value="00014">00014</option>
                            <option value="00015">00015</option>
                            <option value="00016">00016</option>
                    </select></td>
                    <td><input type="text" class="form-control" name="member_name7" id="member_name7" placeholder="Full Name"></td>
                      <td><input type="number" class="form-control prc " name="amount7" id="amount7" placeholder="Amount Transferred"></td>
                      <td><input type="number" class="form-control prc " name="balance7" id="balance7" placeholder="New Balance"></td>
                      <td><input type="number" class="form-control prc " name="transfer_fee7" id="transfer_fee7" placeholder="Transfer Fee"></td>  
                   </tr>
                   <tr> 
                       <th scope="row">8</th>
                       <td><select name="member_registration_number8"  id="member_registration_number8" class="form-control select2" required>
                            <option selected='selected'>--Member Registration Number--</option>
                            <option value="00001">00001</option>
                            <option value="00002">00002</option>
                            <option value="00003">00003</option>
                            <option value="00004">00004</option>
                            <option value="00005">00005</option>
                            <option value="00006">00006</option>
                            <option value="00007">00007</option>
                            <option value="00008">00008</option>
                            <option value="00009">00009</option>
                            <option value="00010">00010</option>
                            <option value="00011">00011</option>
                            <option value="00012">00012</option>
                            <option value="00013">00013</option>
                            <option value="00014">00014</option>
                            <option value="00015">00015</option>
                            <option value="00016">00016</option>
                    </select></td>
                    <td><input type="text" class="form-control" name="member_name8" id="member_name8" placeholder="Full Name"></td>
                      <td><input type="number" class="form-control prc " name="amount8" id="amount8" placeholder="Amount Transferred"></td>
                      <td><input type="number" class="form-control prc " name="balance8" id="balance8" placeholder="New Balance"></td>
                      <td><input type="number" class="form-control prc " name="transfer_fee8" id="transfer_fee8" placeholder="Transfer Fee"></td>  
                   </tr>
                   <tr> 
                       <th scope="row">9</th>
                       <td><select name="member_registration_number9"  id="member_registration_number9" class="form-control select2" required>
                            <option selected='selected'>--Member Registration Number--</option>
                            <option value="00001">00001</option>
                            <option value="00002">00002</option>
                            <option value="00003">00003</option>
                            <option value="00004">00004</option>
                            <option value="00005">00005</option>
                            <option value="00006">00006</option>
                            <option value="00007">00007</option>
                            <option value="00008">00008</option>
                            <option value="00009">00009</option>
                            <option value="00010">00010</option>
                            <option value="00011">00011</option>
                            <option value="00012">00012</option>
                            <option value="00013">00013</option>
                            <option value="00014">00014</option>
                            <option value="00015">00015</option>
                            <option value="00016">00016</option>
                    </select></td>
                    <td><input type="text" class="form-control" name="member_name9" id="member_name9" placeholder="Full Name"></td>
                      <td><input type="number" class="form-control prc " name="amount9" id="amount9" placeholder="Amount Transferred"></td>
                      <td><input type="number" class="form-control prc " name="balance9" id="balance9" placeholder="New Balance"></td>
                      <td><input type="number" class="form-control prc " name="transfer_fee9" id="transfer_fee9" placeholder="Transfer Fee"></td>  
                   </tr>
                   <tr>
                       <td colspan="6"><div class="alert alert-success" style="text-align: center;" role="alert" onclick="sharesListC();">
                        Add Additional Shares
                        </div></td>
                   </tr>
            </table>
            <div id="share_listc">
                <table class="table table-hover" style="margin:10px;padding:10px;">               
                   <tr> 
                       <th scope="row">10</th>
                       <td><select name="member_registration_number10"  id="member_registration_number10" class="form-control select2" required>
                            <option selected='selected'>--Member Registration Number--</option>
                            <option value="00001">00001</option>
                            <option value="00002">00002</option>
                            <option value="00003">00003</option>
                            <option value="00004">00004</option>
                            <option value="00005">00005</option>
                            <option value="00006">00006</option>
                            <option value="00007">00007</option>
                            <option value="00008">00008</option>
                            <option value="00009">00009</option>
                            <option value="00010">00010</option>
                            <option value="00011">00011</option>
                            <option value="00012">00012</option>
                            <option value="00013">00013</option>
                            <option value="00014">00014</option>
                            <option value="00015">00015</option>
                            <option value="00016">00016</option>
                    </select></td>
                    <td><input type="text" class="form-control" name="member_name10" id="member_name10" placeholder="Full Name"></td>
                      <td><input type="number" class="form-control prc " name="amount10" id="amount10" placeholder="Amount Transferred"></td>
                      <td><input type="number" class="form-control prc " name="balance10" id="balance10" placeholder="New Balance"></td>
                      <td><input type="number" class="form-control prc " name="transfer_fee10" id="transfer_fee10" placeholder="Transfer Fee"></td>  
                   </tr>
                   <tr> 
                       <th scope="row">11</th>
                       <td><select name="member_registration_number11"  id="member_registration_number11" class="form-control select2" required>
                            <option selected='selected'>--Member Registration Number--</option>
                            <option value="00001">00001</option>
                            <option value="00002">00002</option>
                            <option value="00003">00003</option>
                            <option value="00004">00004</option>
                            <option value="00005">00005</option>
                            <option value="00006">00006</option>
                            <option value="00007">00007</option>
                            <option value="00008">00008</option>
                            <option value="00009">00009</option>
                            <option value="00010">00010</option>
                            <option value="00011">00011</option>
                            <option value="00012">00012</option>
                            <option value="00013">00013</option>
                            <option value="00014">00014</option>
                            <option value="00015">00015</option>
                            <option value="00016">00016</option>
                    </select></td>
                    <td><input type="text" class="form-control" name="member_name11" id="member_name11" placeholder="Full Name"></td>
                      <td><input type="number" class="form-control prc " name="amount11" id="amount11" placeholder="Amount Transferred"></td>
                      <td><input type="number" class="form-control prc " name="balance11" id="balance11" placeholder="New Balance"></td>
                      <td><input type="number" class="form-control prc " name="transfer_fee11" id="transfer_fee11" placeholder="Transfer Fee"></td>  
                   </tr>
                   <tr> 
                       <th scope="row">12</th>
                       <td><select name="member_registration_number12"  id="member_registration_number12" class="form-control select2" required>
                            <option selected='selected'>--Member Registration Number--</option>
                            <option value="00001">00001</option>
                            <option value="00002">00002</option>
                            <option value="00003">00003</option>
                            <option value="00004">00004</option>
                            <option value="00005">00005</option>
                            <option value="00006">00006</option>
                            <option value="00007">00007</option>
                            <option value="00008">00008</option>
                            <option value="00009">00009</option>
                            <option value="00010">00010</option>
                            <option value="00011">00011</option>
                            <option value="00012">00012</option>
                            <option value="00013">00013</option>
                            <option value="00014">00014</option>
                            <option value="00015">00015</option>
                            <option value="00016">00016</option>
                    </select></td>
                    <td><input type="text" class="form-control" name="member_name12" id="member_name12" placeholder="Full Name"></td>
                      <td><input type="number" class="form-control prc " name="amount12" id="amount12" placeholder="Amount Transferred"></td>
                      <td><input type="number" class="form-control prc " name="balance12" id="balance12" placeholder="New Balance"></td>
                      <td><input type="number" class="form-control prc " name="transfer_fee12" id="transfer_fee12" placeholder="Transfer Fee"></td>  
                   </tr>
                   
            </table>
            </div>
            </div>
            </div>
            <div class="alert alert-danger" style="text-align: center;" role="alert" onclick="sharesListB();">
                Shares Transferred should be less than Shares Owned.
            </div>
            <div class="alert alert-secondary" style="text-align: center;" role="alert" onclick="sharesListB();">
                If Transfer Fee > 0 : Reduces Amount Transferred by Transfer Fee : Else Amount Transferred will be Reduced by 0
            </div>
            <button type="submit" class="btn btn-primary">Save Share Transfer</button>
            <button type="reset" class="btn btn-primary" style="width:200px;margin-left: 20px;">Cancel</button>
        </form>
        
    </body>
</html>
