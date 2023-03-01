<%-- 
    Document   : new_general_journal
    Created on : 09-Dec-2019, 19:05:29
    Author     : Keitany
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New General Journal</title>
    </head>
    <body>
        <div id="content_provider">
        <div class="alert alert-success" role="alert" style="text-align: center;">New General Ledger Journal</div>
        
        <ul class="nav nav-tabs" style="margin: 10px;">
        <li class="nav-item">
          <a onclick="newGeneralLedgerJournal()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">New General Ledger Journal</a>
        </li>
        <li class="nav-item">
          <a onclick="viewGeneralLedgerJournals()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">View General Ledger Journals</a>
        </li>
        <li class="nav-item">
          <a onclick="nonMemberTransactions()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">Close</a>
        </li>
        </ul>
        <form method="post" style="margin:10px;padding:10px;" action="new_general_journal.jsp">
            <div class="alert alert-success" role="alert" style="text-align: center;">
            General Ledger Journal Details
            </div>
            
            <div class="form-row">
                <div class="form-group col-md-6">
                      <label for="inputCity">Transaction Date</label>
                       <input type="date" class="form-control" name="transaction_date" id="transaction_date" placeholder="Member Registration Number">  
                </div> 
                <div class="form-group col-md-6">
                      <label for="inputCity">Journal Number</label>
                       <input type="text" class="form-control" name="journal_number" id="journal_number" placeholder="Journal Number">  
                </div> 
            </div>
            <div class="alert alert-success" role="alert" style="text-align: center;">
                Add Items
            </div>
            <table class="table table-hover" style="margin:10px;padding:10px;">
                   
                   <tr>
                        <th scope="col">#</th>
                        <th scope="col">General Ledger Account</th>
                        <th scope="col">Debit</th>
                        <th scope="col">Credit</th>
                        <th scope="col">Memo/Description</th>
                   </tr>                   
                   <tr> 
                       <th scope="row">1</th>
                       <td><select name="ledger_account1" id="ledger_account1" class="form-control select2" required>
                        <option selected="selected">--Select Account--</option>
                      <option value="130390430934">130390430934-KCB</option>
                      <option value="130399304334">130390439034-EQUITY</option>
                      <option value="130393984444">130393984444-STANDARD CHARTERED</option>
                      <option value="130392030454">130392030454-ABC BANK</option>
                      <option value="130392490044">130392490044-BARCLAYS</option>
                      <option value="130390930244">130390930244-CO-OPERATIVE</option>
                      <option value="130399304334">140390439034-DIAMOND TRUST</option>
                      <option value="130393984444">140393984444-RAFIKI MICRO-FINANCE</option>
                      <option value="130392030454">140392030454-KWFT</option>
                      <option value="130392490044">140392490044-CBA</option>
                      <option value="130390930244">140390930244-CITY BANK</option>
                      <option value="130390930244">140390930944-BANK OF INDIA</option>
                      </select></td>
                       <td><input type="number" class="form-control prc " name="debit1" id="debit1" placeholder=""></td>
                       <td><input type="number" class="form-control prc " name="credit1" id="credit1" placeholder=""></td>
                      <td><textarea class="form-control" name="ledger_description1" id="ledger_description1" rows="3" placeholder="Description"></textarea></td>
                   </tr>
                   <tr> 
                       <th scope="row">2</th>
                       <td><select name="ledger_account2" id="ledger_account2" class="form-control select" required>
                        <option selected="selected">--Select Account--</option>
                      <option value="130390430934">130390430934-KCB</option>
                      <option value="130399304334">130390439034-EQUITY</option>
                      <option value="130393984444">130393984444-STANDARD CHARTERED</option>
                      <option value="130392030454">130392030454-ABC BANK</option>
                      <option value="130392490044">130392490044-BARCLAYS</option>
                      <option value="130390930244">130390930244-CO-OPERATIVE</option>
                      <option value="130399304334">140390439034-DIAMOND TRUST</option>
                      <option value="130393984444">140393984444-RAFIKI MICRO-FINANCE</option>
                      <option value="130392030454">140392030454-KWFT</option>
                      <option value="130392490044">140392490044-CBA</option>
                      <option value="130390930244">140390930244-CITY BANK</option>
                      <option value="130390930244">140390930944-BANK OF INDIA</option>
                      </select></td>
                       <td><input type="number" class="form-control prc " name="debit2" id="debit2" placeholder=""></td>
                       <td><input type="number" class="form-control prc " name="credit2" id="credit2" placeholder=""></td>
                      <td><textarea class="form-control" name="ledger_description2" id="ledger_description2" rows="3" placeholder="Description"></textarea></td>
                   </tr>
                   <tr> 
                       <th scope="row">3</th>
                       <td><select name="ledger_account3" id="ledger_account3" class="form-control select2" required>
                        <option selected="selected">--Select Account--</option>
                      <option value="130390430934">130390430934-KCB</option>
                      <option value="130399304334">130390439034-EQUITY</option>
                      <option value="130393984444">130393984444-STANDARD CHARTERED</option>
                      <option value="130392030454">130392030454-ABC BANK</option>
                      <option value="130392490044">130392490044-BARCLAYS</option>
                      <option value="130390930244">130390930244-CO-OPERATIVE</option>
                      <option value="130399304334">140390439034-DIAMOND TRUST</option>
                      <option value="130393984444">140393984444-RAFIKI MICRO-FINANCE</option>
                      <option value="130392030454">140392030454-KWFT</option>
                      <option value="130392490044">140392490044-CBA</option>
                      <option value="130390930244">140390930244-CITY BANK</option>
                      <option value="130390930244">140390930944-BANK OF INDIA</option>
                      </select></td>
                       <td><input type="number" class="form-control prc " name="debit3" id="debit3" placeholder=""></td>
                       <td><input type="number" class="form-control prc " name="credit3" id="credit3" placeholder=""></td>
                      <td><textarea class="form-control" name="ledger_description3" id="ledger_description3" rows="3" placeholder="Description"></textarea></td>
                   </tr>
                    <tr>
                        <td colspan="5"><div class="alert alert-secondary" role="alert" style="text-align: center;">
                            Comment : Rule Debit = Credit : (Double Entry Rule Applies)
                        </div></td>
                   </tr>
                   <tr>
                       <td colspan="5"><div class="alert alert-success" style="text-align: center;" role="alert" onclick="journalItemsA();">
                        Add Additional Items
                        </div></td>
                   </tr>
                   
            </table>
            <div id="journal_lista">
             <table class="table table-hover" style="margin:10px;padding:10px;">
                   <tr> 
                       <th scope="row">4</th>
                       <td><select name="ledger_account4" id="ledger_account4" class="form-control select2" required>
                        <option selected="selected">--Select Account--</option>
                      <option value="130390430934">130390430934-KCB</option>
                      <option value="130399304334">130390439034-EQUITY</option>
                      <option value="130393984444">130393984444-STANDARD CHARTERED</option>
                      <option value="130392030454">130392030454-ABC BANK</option>
                      <option value="130392490044">130392490044-BARCLAYS</option>
                      <option value="130390930244">130390930244-CO-OPERATIVE</option>
                      <option value="130399304334">140390439034-DIAMOND TRUST</option>
                      <option value="130393984444">140393984444-RAFIKI MICRO-FINANCE</option>
                      <option value="130392030454">140392030454-KWFT</option>
                      <option value="130392490044">140392490044-CBA</option>
                      <option value="130390930244">140390930244-CITY BANK</option>
                      <option value="130390930244">140390930944-BANK OF INDIA</option>
                      </select></td>
                       <td><input type="number" class="form-control prc " name="debit4" id="debit4" placeholder=""></td>
                       <td><input type="number" class="form-control prc " name="credit4" id="credit4" placeholder=""></td>
                      <td><textarea class="form-control" name="ledger_description4" id="ledger_description4" rows="3" placeholder="Description"></textarea></td>
                   </tr>
                   <tr> 
                       <th scope="row">5</th>
                       <td><select name="ledger_account5" id="ledger_account5" class="form-control select" required>
                        <option selected="selected">--Select Account--</option>
                      <option value="130390430934">130390430934-KCB</option>
                      <option value="130399304334">130390439034-EQUITY</option>
                      <option value="130393984444">130393984444-STANDARD CHARTERED</option>
                      <option value="130392030454">130392030454-ABC BANK</option>
                      <option value="130392490044">130392490044-BARCLAYS</option>
                      <option value="130390930244">130390930244-CO-OPERATIVE</option>
                      <option value="130399304334">140390439034-DIAMOND TRUST</option>
                      <option value="130393984444">140393984444-RAFIKI MICRO-FINANCE</option>
                      <option value="130392030454">140392030454-KWFT</option>
                      <option value="130392490044">140392490044-CBA</option>
                      <option value="130390930244">140390930244-CITY BANK</option>
                      <option value="130390930244">140390930944-BANK OF INDIA</option>
                      </select></td>
                       <td><input type="number" class="form-control prc " name="debit5" id="debit5" placeholder=""></td>
                       <td><input type="number" class="form-control prc " name="credit5" id="credit5" placeholder=""></td>
                      <td><textarea class="form-control" name="ledger_description5" id="ledger_description5" rows="3" placeholder="Description"></textarea></td>
                   </tr>
                   <tr> 
                       <th scope="row">6</th>
                       <td><select name="ledger_account6" id="ledger_account6" class="form-control select2" required>
                        <option selected="selected">--Select Account--</option>
                      <option value="130390430934">130390430934-KCB</option>
                      <option value="130399304334">130390439034-EQUITY</option>
                      <option value="130393984444">130393984444-STANDARD CHARTERED</option>
                      <option value="130392030454">130392030454-ABC BANK</option>
                      <option value="130392490044">130392490044-BARCLAYS</option>
                      <option value="130390930244">130390930244-CO-OPERATIVE</option>
                      <option value="130399304334">140390439034-DIAMOND TRUST</option>
                      <option value="130393984444">140393984444-RAFIKI MICRO-FINANCE</option>
                      <option value="130392030454">140392030454-KWFT</option>
                      <option value="130392490044">140392490044-CBA</option>
                      <option value="130390930244">140390930244-CITY BANK</option>
                      <option value="130390930244">140390930944-BANK OF INDIA</option>
                      </select></td>
                       <td><input type="number" class="form-control prc " name="debit6" id="debit6" placeholder=""></td>
                       <td><input type="number" class="form-control prc " name="credit6" id="credit6" placeholder=""></td>
                      <td><textarea class="form-control" name="ledger_description6" id="ledger_description6" rows="3" placeholder="Description"></textarea></td>
                   </tr> 
                   
                    <tr>
                       <td colspan="5"><div class="alert alert-success" style="text-align: center;" role="alert" onclick="journalItemsB();">
                        Add Additional Items
                        </div></td>
                   </tr>
                   
                </table>
             <div id="journal_listb">
             <table class="table table-hover" style="margin:10px;padding:10px;">
                    <tr> 
                       <th scope="row">7</th>
                       <td><select name="ledger_account7" id="ledger_account1" class="form-control select2" required>
                        <option selected="selected">--Select Account--</option>
                      <option value="130390430934">130390430934-KCB</option>
                      <option value="130399304334">130390439034-EQUITY</option>
                      <option value="130393984444">130393984444-STANDARD CHARTERED</option>
                      <option value="130392030454">130392030454-ABC BANK</option>
                      <option value="130392490044">130392490044-BARCLAYS</option>
                      <option value="130390930244">130390930244-CO-OPERATIVE</option>
                      <option value="130399304334">140390439034-DIAMOND TRUST</option>
                      <option value="130393984444">140393984444-RAFIKI MICRO-FINANCE</option>
                      <option value="130392030454">140392030454-KWFT</option>
                      <option value="130392490044">140392490044-CBA</option>
                      <option value="130390930244">140390930244-CITY BANK</option>
                      <option value="130390930244">140390930944-BANK OF INDIA</option>
                      </select></td>
                       <td><input type="number" class="form-control prc " name="debit7" id="debit7" placeholder=""></td>
                       <td><input type="number" class="form-control prc " name="credit7" id="credit7" placeholder=""></td>
                      <td><textarea class="form-control" name="ledger_description7" id="ledger_description7" rows="3" placeholder="Description"></textarea></td>
                   </tr>
                   <tr> 
                       <th scope="row">8</th>
                       <td><select name="ledger_account8" id="ledger_account8" class="form-control select" required>
                        <option selected="selected">--Select Account--</option>
                      <option value="130390430934">130390430934-KCB</option>
                      <option value="130399304334">130390439034-EQUITY</option>
                      <option value="130393984444">130393984444-STANDARD CHARTERED</option>
                      <option value="130392030454">130392030454-ABC BANK</option>
                      <option value="130392490044">130392490044-BARCLAYS</option>
                      <option value="130390930244">130390930244-CO-OPERATIVE</option>
                      <option value="130399304334">140390439034-DIAMOND TRUST</option>
                      <option value="130393984444">140393984444-RAFIKI MICRO-FINANCE</option>
                      <option value="130392030454">140392030454-KWFT</option>
                      <option value="130392490044">140392490044-CBA</option>
                      <option value="130390930244">140390930244-CITY BANK</option>
                      <option value="130390930244">140390930944-BANK OF INDIA</option>
                      </select></td>
                       <td><input type="number" class="form-control prc " name="debit8" id="debit8" placeholder=""></td>
                       <td><input type="number" class="form-control prc " name="credit8" id="credit8" placeholder=""></td>
                      <td><textarea class="form-control" name="ledger_description8" id="ledger_description8" rows="3" placeholder="Description"></textarea></td>
                   </tr>
                   <tr> 
                       <th scope="row">9</th>
                       <td><select name="ledger_account9" id="ledger_account9" class="form-control select2" required>
                        <option selected="selected">--Select Account--</option>
                      <option value="130390430934">130390430934-KCB</option>
                      <option value="130399304334">130390439034-EQUITY</option>
                      <option value="130393984444">130393984444-STANDARD CHARTERED</option>
                      <option value="130392030454">130392030454-ABC BANK</option>
                      <option value="130392490044">130392490044-BARCLAYS</option>
                      <option value="130390930244">130390930244-CO-OPERATIVE</option>
                      <option value="130399304334">140390439034-DIAMOND TRUST</option>
                      <option value="130393984444">140393984444-RAFIKI MICRO-FINANCE</option>
                      <option value="130392030454">140392030454-KWFT</option>
                      <option value="130392490044">140392490044-CBA</option>
                      <option value="130390930244">140390930244-CITY BANK</option>
                      <option value="130390930244">140390930944-BANK OF INDIA</option>
                      </select></td>
                       <td><input type="number" class="form-control prc " name="debit9" id="debit9" placeholder=""></td>
                       <td><input type="number" class="form-control prc " name="credit9" id="credit9" placeholder=""></td>
                      <td><textarea class="form-control" name="ledger_description9" id="ledger_description9" rows="3" placeholder="Description"></textarea></td>
                   </tr>
                        <tr>
                       <td colspan="5"><div class="alert alert-success" style="text-align: center;" role="alert" onclick="journalItemsC();">
                        Add Additional Items
                        </div></td>
                   </tr>
                   
                </table>
             <div id="journal_listc">
             <table class="table table-hover" style="margin:10px;padding:10px;">
                   <tr> 
                       <th scope="row">10</th>
                       <td><select name="ledger_account10" id="ledger_account10" class="form-control select2" required>
                        <option selected="selected">--Select Account--</option>
                      <option value="130390430934">130390430934-KCB</option>
                      <option value="130399304334">130390439034-EQUITY</option>
                      <option value="130393984444">130393984444-STANDARD CHARTERED</option>
                      <option value="130392030454">130392030454-ABC BANK</option>
                      <option value="130392490044">130392490044-BARCLAYS</option>
                      <option value="130390930244">130390930244-CO-OPERATIVE</option>
                      <option value="130399304334">140390439034-DIAMOND TRUST</option>
                      <option value="130393984444">140393984444-RAFIKI MICRO-FINANCE</option>
                      <option value="130392030454">140392030454-KWFT</option>
                      <option value="130392490044">140392490044-CBA</option>
                      <option value="130390930244">140390930244-CITY BANK</option>
                      <option value="130390930244">140390930944-BANK OF INDIA</option>
                      </select></td>
                       <td><input type="number" class="form-control prc " name="debit10" id="debit10" placeholder=""></td>
                       <td><input type="number" class="form-control prc " name="credit10" id="credit10" placeholder=""></td>
                      <td><textarea class="form-control" name="ledger_description10" id="ledger_description10" rows="3" placeholder="Description"></textarea></td>
                   </tr>
                   <tr> 
                       <th scope="row">11</th>
                       <td><select name="ledger_account11" id="ledger_account11" class="form-control select" required>
                        <option selected="selected">--Select Account--</option>
                      <option value="130390430934">130390430934-KCB</option>
                      <option value="130399304334">130390439034-EQUITY</option>
                      <option value="130393984444">130393984444-STANDARD CHARTERED</option>
                      <option value="130392030454">130392030454-ABC BANK</option>
                      <option value="130392490044">130392490044-BARCLAYS</option>
                      <option value="130390930244">130390930244-CO-OPERATIVE</option>
                      <option value="130399304334">140390439034-DIAMOND TRUST</option>
                      <option value="130393984444">140393984444-RAFIKI MICRO-FINANCE</option>
                      <option value="130392030454">140392030454-KWFT</option>
                      <option value="130392490044">140392490044-CBA</option>
                      <option value="130390930244">140390930244-CITY BANK</option>
                      <option value="130390930244">140390930944-BANK OF INDIA</option>
                      </select></td>
                       <td><input type="number" class="form-control prc " name="debit11" id="debit11" placeholder=""></td>
                       <td><input type="number" class="form-control prc " name="credit11" id="credit11" placeholder=""></td>
                      <td><textarea class="form-control" name="ledger_description11" id="ledger_description11" rows="3" placeholder="Description"></textarea></td>
                   </tr>
                   <tr> 
                       <th scope="row">12</th>
                       <td><select name="ledger_account12" id="ledger_account12" class="form-control select2" required>
                        <option selected="selected">--Select Account--</option>
                      <option value="130390430934">130390430934-KCB</option>
                      <option value="130399304334">130390439034-EQUITY</option>
                      <option value="130393984444">130393984444-STANDARD CHARTERED</option>
                      <option value="130392030454">130392030454-ABC BANK</option>
                      <option value="130392490044">130392490044-BARCLAYS</option>
                      <option value="130390930244">130390930244-CO-OPERATIVE</option>
                      <option value="130399304334">140390439034-DIAMOND TRUST</option>
                      <option value="130393984444">140393984444-RAFIKI MICRO-FINANCE</option>
                      <option value="130392030454">140392030454-KWFT</option>
                      <option value="130392490044">140392490044-CBA</option>
                      <option value="130390930244">140390930244-CITY BANK</option>
                      <option value="130390930244">140390930944-BANK OF INDIA</option>
                      </select></td>
                       <td><input type="number" class="form-control prc " name="debit12" id="debit12" placeholder=""></td>
                       <td><input type="number" class="form-control prc " name="credit12" id="credit12" placeholder=""></td>
                      <td><textarea class="form-control" name="ledger_description12" id="ledger_description12" rows="3" placeholder="Description"></textarea></td>
                   </tr>
                        
                   
                </table>
                 </div>
                 </div>
                </div>
            <div class="form-group">
                    <label for="inputCity">Total Amount</label>
                    <input type="number" class="form-control" name="total_amount" id="total_amount" placeholder="0">  
             </div>
            <button class="btn btn-primary" type="submit">Save General Ledger Journal</button>
            <button class="btn btn-primary" type="reset" style="margin-left: 20px;width:200px;">Cancel</button>
        </form>
        </div>
    </body>
</html>
