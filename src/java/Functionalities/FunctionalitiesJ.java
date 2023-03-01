package Functionalities;

        
import java.security.MessageDigest;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.sql.Statement;
import java.util.Calendar;
import javax.swing.DefaultListModel;
/*import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.swing.*;*/


/**
 *
 * @author Keitany
 */
public class FunctionalitiesJ {
    public static final String CSdriver = new String("org.postgresql.Driver");
    public static String dbURLCS = "jdbc:postgresql://localhost:5432/Davido";
    public static String dbURLCS1 = "jdbc:postgresql://localhost:5432/Mbaush";
    public static Connection connCS;
    public static String mysqlUname = "postgres";
    public static String mysqlPwd = "jesot@211";
    
    
     public static void initializeConnection() {

        String s = "";
        try {

            if (connCS == null || connCS.isClosed()) {
                Class.forName(CSdriver).newInstance();
                connCS = DriverManager.getConnection(dbURLCS,mysqlUname,mysqlPwd);
            }

        } catch (Exception e) {
            System.out.println("FAIL -- unexpected exception: " + e.toString());
            e.printStackTrace();
        }

    }
     
     public static void initializeConnection1() {

        String s = "";
        try {

            if (connCS == null || connCS.isClosed()) {
                Class.forName(CSdriver).newInstance();
                connCS = DriverManager.getConnection(dbURLCS1,mysqlUname,mysqlPwd);
            }

        } catch (Exception e) {
            System.out.println("FAIL -- unexpected exception: " + e.toString());
            e.printStackTrace();
        }

    }

    public static void closeConnection() {
        String s = "";
        try {
            if (!connCS.isClosed()) {
                //connCS.close();
            }
        } catch (Exception e) {
            System.out.println("FAIL -- unexpected exception: " + e.toString());
            e.printStackTrace();
        }
    }
    
     public static String EncryptPassword(String data) {
        StringBuffer sb = new StringBuffer();

        try {

            MessageDigest messageDigest = MessageDigest.getInstance("SHA-512");
            messageDigest.update(data.getBytes("UTF-8"));
            byte[] digestBytes = messageDigest.digest();


            String hex = null;

            for (int i = 0; i < digestBytes.length; i++) {
                //Convert it to positive integer and then to Hex String

                hex = Integer.toHexString(0xFF & digestBytes[i]);
                if (hex.length() < 2) {
                    sb.append("0");
                    
                }
                sb.append(hex);
            }
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }

        return new String(sb);
    }
     
    public static String addMember(String member_first_name,String member_middle_name,String member_surname,String member_mobile
            ,String member_address,String member_residence,String member_town,String member_branch,String member_identification
            ,String member_workplace,String date_of_birth,String kin_first_name,String kin_middle_name,String kin_surname,String kin_relationship
            ,String kin_address,String kin_mobile,String introducer_reg_no,String introducer_full_name,String introducer_mobile
            ,String serving_agent,String date_of_entry){
        
        String result="";
        
         try {
          
            String query = "insert into members (member_first_name,member_middle_name,member_surname,"
                    + "member_mobile,member_address,member_residence,member_town,member_branch,"
                    + "member_identification,member_workplace,date_of_birth,kin_first_name,kin_middle_name,"
                    + "kin_surname,kin_relationship,kin_address,kin_mobile,introducer_reg_no,"
                    + "introducer_full_name,introducer_mobile,serving_agent,date_of_entry) values (?,?,?,?,?,?,?,?,"
                    + "?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            
            PreparedStatement ps = null;
            ps = connCS.prepareStatement(query);

            ps.setString(1, member_first_name);
            ps.setString(2, member_middle_name);
            ps.setString(3, member_surname); 
            ps.setString(4, member_mobile);
            ps.setString(5, member_address);
            ps.setString(6, member_residence); 
            ps.setString(7, member_town);
            ps.setString(8, member_branch);
            ps.setString(9, member_identification); 
            ps.setString(10, member_workplace);
            ps.setString(11, date_of_birth);
            ps.setString(12, kin_first_name);
            ps.setString(13, kin_middle_name);
            ps.setString(14, kin_surname); 
            ps.setString(15, kin_relationship);
            ps.setString(16, kin_address);
            ps.setString(17, kin_mobile);
            ps.setString(18, introducer_reg_no);
            ps.setString(19, introducer_full_name);
            ps.setString(20, introducer_mobile);
            ps.setString(21, serving_agent);
            ps.setString(22, date_of_entry);
            

            int numrows = ps.executeUpdate();
            ps.close();
          
            result = "success";
          
        } catch (Exception e) {
            e.printStackTrace();
            result = "failure";
        }
        
        return result;
    }
    
    public static String newMemberPosting(String member_registration_number,String member_account_number,String transaction_reference,String member_full_name
            ,String bank_account_number,String shares_amount,String advance_loan_amount,String savings_amount,String total_amount_paid
            ,String serving_agent,String normal_loan,String transaction_date,String instant_loan,String development_loan,
            String super_development_loan,String share_transfer,String member_registration_fee,String statement_fee,
            String loan_application_fee){
        
        String result="";
        
         try {
          
            String query = "insert into member_posting (member_registration_number,member_account_number,transaction_reference,"
                    + "member_full_name,bank_account_number,shares_amount,advance_loan_amount,savings_amount,"
                    + "total_amount_paid,serving_agent,normal_loan,transaction_date,instant_loan,development_loan,"
                    + "super_development_loan,share_transfer,member_registration_fee,statement_fee,loan_application_fee) "
                    + "values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            
            PreparedStatement ps = null;
            ps = connCS.prepareStatement(query);

            ps.setString(1, member_registration_number);
            ps.setString(2, member_account_number);
            ps.setString(3, transaction_reference); 
            ps.setString(4, member_full_name);
            ps.setString(5, bank_account_number);
            ps.setString(6, shares_amount); 
            ps.setString(7, advance_loan_amount);
            ps.setString(8, savings_amount);
            ps.setString(9, total_amount_paid); 
            ps.setString(10, serving_agent);
            ps.setString(11, normal_loan);
            ps.setString(12, transaction_date);
            ps.setString(13, instant_loan);
            ps.setString(14, development_loan);
            ps.setString(15, super_development_loan);
            ps.setString(16, share_transfer);
            ps.setString(17, member_registration_fee);
            ps.setString(18, statement_fee);
            ps.setString(19, loan_application_fee);
            

            int numrows = ps.executeUpdate();
            ps.close();
          
            result = "success";
          
        } catch (Exception e) {
            e.printStackTrace();
            result = "failure";
        }
        
        return result;
    }
    
     public static String newCustomerPayment(String member_registration_number,String payment_amount,String transaction_number,String cheque_number,String payment_method
            ,String bank_account_number,String customer_payment_description,String serving_agent,String transaction_date){
        
        String result="";
        
         try {
          
            String query = "insert into customer_payment (member_registration_number,payment_amount,transaction_numbe,cheque_number,"
                    + "payment_method,bank_account_number,customer_payment_description,"
                    + "serving_agent,transaction_date) values (?,?,?,?,?,?,?,?,?)";
            
            PreparedStatement ps = null;
            ps = connCS.prepareStatement(query);

            ps.setString(1, member_registration_number);
            ps.setString(2, payment_amount);
            ps.setString(3, transaction_number);
            ps.setString(4, cheque_number); 
            ps.setString(5, payment_method);
            ps.setString(6, bank_account_number);
            ps.setString(7, customer_payment_description); 
            ps.setString(8, serving_agent);
            ps.setString(9, transaction_date);
            

            int numrows = ps.executeUpdate();
            ps.close();
          
            result = "success";
          
        } catch (Exception e) {
            e.printStackTrace();
            result = "failure";
        }
        
        return result;
    }
    
    public static String newLoanApplication(String member_registration_number,Double member_savings,String loan_product,String member_full_name
            ,Double loan_amount,String guarantor_1,Double guarantor_1_savings,Double guarantor_1_amount,
            String guarantor_2,Double guarantor_2_savings,Double guarantor_2_amount,
            String guarantor_3,Double guarantor_3_savings,Double guarantor_3_amount,Double total_guarantorship
            ,String serving_agent,String serving_agent_remarks,String transaction_date){
        
        String result="";
        
         try {
          
            String query = "insert into loan_application (member_registration_number,member_savings,loan_product,"
                    + "member_full_name,loan_amount,guarantor_1,guarantor_1_savings,guarantor_1_amount,"
                    + "guarantor_2,guarantor_2_savings,guarantor_2_amount,guarantor_3,guarantor_3_savings,guarantor_3_amount,"
                    + "total_guarantorship,serving_agent,serving_agent_remarks,transaction_date)"
                    + " values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            
            PreparedStatement ps = null;
            ps = connCS.prepareStatement(query);

            ps.setString(1, member_registration_number);
            ps.setDouble(2, member_savings);
            ps.setString(3, loan_product); 
            ps.setString(4, member_full_name);
            ps.setDouble(5, loan_amount);            
            ps.setString(6, guarantor_1); 
            ps.setDouble(7, guarantor_1_savings);
            ps.setDouble(8, guarantor_1_amount);
            ps.setString(9, guarantor_2); 
            ps.setDouble(10, guarantor_2_savings);
            ps.setDouble(11, guarantor_2_amount);
            ps.setString(12, guarantor_3); 
            ps.setDouble(13, guarantor_3_savings);
            ps.setDouble(14, guarantor_3_amount);
            ps.setDouble(15, total_guarantorship);
            ps.setString(16, serving_agent);
            ps.setString(17, serving_agent_remarks);
            ps.setString(18, transaction_date);
           
            

            int numrows = ps.executeUpdate();
            ps.close();
          
            result = "success";
          
        } catch (Exception e) {
            e.printStackTrace();
            result = "failure";
        }
        
        return result;
    }
    
    public static String newCustomerInvoice(String customer_full_name,String invoice_recipient,String invoice_number,String payment_method
            ,String invoice_1,String invoice_1_description,String invoice_1_amount,
            String invoice_1_vat,String invoice_2,String invoice_2_description,String invoice_2_amount,
            String invoice_2_vat,String invoice_3,String invoice_3_description,String invoice_3_amount,
            String invoice_3_vat,String serving_agent,String transaction_date){
        
        String result="";
        
         try {
          
            String query = "insert into customer_invoice (customer_full_name,invoice_recipient,invoice_number,"
                    + "payment_method,invoice_1,invoice_1_description,invoice_1_amount,invoice_1_vat,"
                    + "invoice_2,invoice_2_description,invoice_2_amount,invoice_2_vat,invoice_3,"
                    + "invoice_3_description,invoice_3_amount,invoice_3_vat,"
                    + "serving_agent,transaction_date) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            
            PreparedStatement ps = null;
            ps = connCS.prepareStatement(query);

            ps.setString(1, customer_full_name);
            ps.setString(2, invoice_recipient);
            ps.setString(3, invoice_number); 
            ps.setString(4, payment_method);
            ps.setString(5, invoice_1);
            ps.setString(6, invoice_1_description); 
            ps.setString(7, invoice_1_amount);
            ps.setString(8, invoice_1_vat);
            ps.setString(9, invoice_2); 
            ps.setString(10, invoice_2_description);
            ps.setString(11, invoice_2_amount);
            ps.setString(12, invoice_2_vat); 
            ps.setString(13, invoice_3); 
            ps.setString(14, invoice_3_description);
            ps.setString(15, invoice_3_amount);
            ps.setString(16, invoice_3_vat);
            ps.setString(17, serving_agent);
            ps.setString(18, transaction_date);
            

            int numrows = ps.executeUpdate();
            ps.close();
          
            result = "success";
          
        } catch (Exception e) {
            e.printStackTrace();
            result = "failure";
        }
        
        return result;
    }
    
    public static String newFundTransfer(String account_transferred_from,String account_transferred_to,Double transfer_amount,
            String description,String serving_agent,String transaction_date,Double account_recieved_from_balance,Double account_sent_to_balance ){
        
        String result="";
        
         try {
          
            String query = "insert into fund_transfer (account_transferred_from,account_transferred_to,transfer_amount,"
                    + "description,serving_agent,transaction_date,account_recieved_from_balance,account_sent_to_balance) values "
                    + "(?,?,?,?,?,?,?,?)";
            
            PreparedStatement ps = null;
            ps = connCS.prepareStatement(query);

            ps.setString(1, account_transferred_from);
            ps.setString(2, account_transferred_to);
            ps.setDouble(3, transfer_amount); 
            ps.setString(4, description);
            ps.setString(5, serving_agent);
            ps.setString(6, transaction_date); 
            ps.setDouble(7, account_recieved_from_balance);
            ps.setDouble(8, account_sent_to_balance);
           
            

            int numrows = ps.executeUpdate();
            ps.close();
          
            result = "success";
          
        } catch (Exception e) {
            e.printStackTrace();
            result = "failure";
        }
        
        return result;
    }
    
     
    public static String addMoreGuarantors(String guarantor_4,Double guarantor_4_savings,Double guarantor_4_amount,
            String guarantor_5,Double guarantor_5_savings,Double guarantor_5_amount,String guarantor_6,Double guarantor_6_savings,Double guarantor_6_amount,
            String guarantor_7,Double guarantor_7_savings,Double guarantor_7_amount,
            String guarantor_8,Double guarantor_8_savings,Double guarantor_8_amount,String guarantor_9,Double guarantor_9_savings,Double guarantor_9_amount,
            String guarantor_10,Double guarantor_10_savings,Double guarantor_10_amount,
            String guarantor_11,Double guarantor_11_savings,Double guarantor_11_amount,String guarantor_12,Double guarantor_12_savings,Double guarantor_12_amount,String member_registration_number){
            String result = "";
            
        try {
          
            String query = "update loan_application set guarantor_4=?,guarantor_4_savings=?,guarantor_4_amount=?,"
                    + "guarantor_5=?,guarantor_5_savings=?,guarantor_5_amount=?,guarantor_6=?,guarantor_6_savings=?,guarantor_6_amount=?,"
                    + "guarantor_7=?,guarantor_7_savings=?,guarantor_7_amount=?,guarantor_8=?,guarantor_8_savings=?,guarantor_8_amount=?,"
                    + "guarantor_9=?,guarantor_9_savings=?,guarantor_9_amount=?,guarantor_10=?,guarantor_10_savings=?,guarantor_10_amount=?,"
                    + "guarantor_11=?,guarantor_11_savings=?,guarantor_11_amount=?,guarantor_12=?,guarantor_12_savings=?,guarantor_12_amount=?"
                    + " where member_registration_number=? ";
            PreparedStatement ps = null;
            ps = connCS.prepareStatement(query);
            
            ps.setString(1, guarantor_4);    
            ps.setDouble(2, guarantor_4_savings); 
            ps.setDouble(3, guarantor_4_amount);
            ps.setString(4, guarantor_5);    
            ps.setDouble(5, guarantor_5_savings); 
            ps.setDouble(6, guarantor_5_amount);
            ps.setString(7, guarantor_6);    
            ps.setDouble(8, guarantor_6_savings); 
            ps.setDouble(9, guarantor_6_amount);
            ps.setString(10, guarantor_7);  
            ps.setDouble(11, guarantor_7_savings);
            ps.setDouble(12, guarantor_7_amount); 
            ps.setString(13, guarantor_8);
            ps.setDouble(14, guarantor_8_savings);    
            ps.setDouble(15, guarantor_8_amount); 
            ps.setString(16, guarantor_9);
            ps.setDouble(17, guarantor_9_savings);    
            ps.setDouble(18, guarantor_9_amount); 
            ps.setString(19, guarantor_10);
            ps.setDouble(20, guarantor_10_savings); 
            ps.setDouble(21, guarantor_10_amount);
            ps.setString(22, guarantor_11);
            ps.setDouble(23, guarantor_11_savings); 
            ps.setDouble(24, guarantor_11_amount);
            ps.setString(25, guarantor_12);
            ps.setDouble(26, guarantor_12_savings); 
            ps.setDouble(27, guarantor_12_amount);
            ps.setString(28, member_registration_number);

            int numrows = ps.executeUpdate();
            ps.close();
          
            result = "success";
          
        } catch (Exception e) {
            e.printStackTrace();
            result = "failure";
        }
        return result;
    }
     
    public static String addMoreInvoices(String invoice_4,String invoice_4_description,String invoice_4_amount,
            String invoice_4_vat,String invoice_5,String invoice_5_description,String invoice_5_amount,
            String invoice_5_vat,String invoice_6,String invoice_6_description,String invoice_6_amount,
            String invoice_6_vat,String invoice_7,String invoice_7_description,String invoice_7_amount,
            String invoice_7_vat,String invoice_8,String invoice_8_description,String invoice_8_amount,
            String invoice_8_vat,String invoice_9,String invoice_9_description,String invoice_9_amount,
            String invoice_9_vat,String invoice_10,String invoice_10_description,String invoice_10_amount,
            String invoice_10_vat,String invoice_11,String invoice_11_description,String invoice_11_amount,
            String invoice_11_vat,String invoice_12,String invoice_12_description,String invoice_12_amount,
            String invoice_12_vat){
            String result = "";
            
        try {
          
            String query = "insert into customer_invoice (invoice_4,invoice_4_description,invoice_4_amount,invoice_4_vat,"
                    + "invoice_5,invoice_5_description,invoice_5_amount,invoice_5_vat,invoice_6,invoice_6_description,"
                    + "invoice_6_amount,invoice_6_vat,invoice_7,invoice_7_description,invoice_7_amount,invoice_7_vat,"
                    + "invoice_8,invoice_8_description,invoice_8_amount,invoice_8_vat,invoice_9,invoice_9_description"
                    + ",invoice_9_amount,invoice_9_vat,invoice_10,invoice_10_description,invoice_10_amount,invoice_10_vat,"
                    + "invoice_11,invoice_11_description,invoice_11_amount,invoice_11_vat,invoice_12,invoice_12_description,"
                    + "invoice_12_amount,invoice_12_vat) "
                    + "values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement ps = null;
            ps = connCS.prepareStatement(query);
            
            ps.setString(1, invoice_4);    
            ps.setString(2, invoice_4_description); 
            ps.setString(3, invoice_4_amount);
            ps.setString(4, invoice_4_vat);    
            ps.setString(5, invoice_5); 
            ps.setString(6, invoice_5_description);
            ps.setString(7, invoice_5_amount);    
            ps.setString(8, invoice_5_vat); 
            ps.setString(9, invoice_6);
            ps.setString(10, invoice_6_description);  
            ps.setString(11, invoice_6_amount);
            ps.setString(12, invoice_6_vat); 
            ps.setString(13, invoice_7);
            ps.setString(14, invoice_7_description);    
            ps.setString(15, invoice_7_amount); 
            ps.setString(16, invoice_7_vat);
            ps.setString(17, invoice_8);    
            ps.setString(18, invoice_8_description); 
            ps.setString(19, invoice_8_amount);
            ps.setString(20, invoice_8_vat); 
            ps.setString(21, invoice_9);
            ps.setString(22, invoice_9_description);
            ps.setString(23, invoice_9_amount); 
            ps.setString(24, invoice_9_vat);
            ps.setString(25, invoice_10);
            ps.setString(26, invoice_10_description); 
            ps.setString(27, invoice_10_amount);
            ps.setString(28, invoice_10_vat);
            ps.setString(29, invoice_11);
            ps.setString(30, invoice_11_description); 
            ps.setString(31, invoice_11_amount);
            ps.setString(32, invoice_11_vat);
            ps.setString(33, invoice_12);
            ps.setString(34, invoice_12_description); 
            ps.setString(35, invoice_12_amount);
            ps.setString(36, invoice_12_vat);

            int numrows = ps.executeUpdate();
            ps.close();
          
            result = "success";
          
        } catch (Exception e) {
            e.printStackTrace();
            result = "failure";
        }
        return result;
    }
     
     public static String updateBankBalance(Double bank_current_amount,String bank_account_number) {
        String result = "";
        try {
          
            String query = "update bank_current_balance set bank_current_amount=? where bank_account_number=?";
            PreparedStatement ps = null;
            ps = connCS.prepareStatement(query);
            
            ps.setDouble(1, bank_current_amount);
            ps.setString(2, bank_account_number);

            int numrows = ps.executeUpdate();
            ps.close();
          
            result = "success";
          
        } catch (Exception e) {
            e.printStackTrace();
            result = "failure";
        }
        return result;
    }
     
     public static String newSupplier(String supplier_name, String supplier_email,String supplier_mobile,
             String supplier_credit_terms,String contact_person,String name,String pin_number,
             String physical_address,String town,String country) {
         String result = "";
        try {
          
            String query = "insert into suppliers () values()  ";
            PreparedStatement ps = null;
            ps = connCS.prepareStatement(query);
            
            ps.setString(1, supplier_name.toUpperCase());
            ps.setString(2, supplier_email);
            ps.setString(3, supplier_mobile);
            ps.setString(4, supplier_credit_terms);
            ps.setString(5, contact_person);
            ps.setString(6, name);
            ps.setString(7, pin_number);
            ps.setString(8, physical_address);
            ps.setString(9, town);
            ps.setString(10, country);
           
           

            int numrows = ps.executeUpdate();
            ps.close();
          
            result = "success";
          
        } catch (Exception e) {
            e.printStackTrace();
            result = "failure";
        }
        return result;
    }
     
     
    public static String newSupplierInvoice(String supplier_full_name,String supplier_terms,String mailing_address,String invoice_number
            ,Double amount,String ledger_account_1,String expense_1_description,String expense_1_amount,
            String expense_1_vat,String ledger_account_2,String expense_2_description,String expense_2_amount,
            String expense_2_vat,String ledger_account_3,String expense_3_description,String expense_3_amount,
            String expense_3_vat,String serving_agent,String transaction_date,String total_amount){
        
        String result="";
        
         try {
          
            String query = "insert into supplier_invoice (supplier_full_name,supplier_terms,mailing_address,amount,"
                    + "invoice_number,ledger_account_1,expense_1_description,expense_1_amount,expense_1_vat,"
                    + "ledger_account_2,expense_2_description,expense_2_amount,expense_2_vat,ledger_account_3,"
                    + "expense_3_description,expense_3_amount,expense_3_vat,"
                    + "serving_agent,transaction_date,total_amount) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            
            PreparedStatement ps = null;
            ps = connCS.prepareStatement(query);

            ps.setString(1, supplier_full_name);
            ps.setString(2, supplier_terms);
            ps.setString(3, mailing_address); 
            ps.setString(4, invoice_number);
            ps.setDouble(5, amount);
            ps.setString(6, ledger_account_1); 
            ps.setString(7, expense_1_description);
            ps.setString(8, expense_1_amount);
            ps.setString(9, expense_1_vat); 
            ps.setString(10, ledger_account_2);
            ps.setString(11, expense_2_description);
            ps.setString(12, expense_2_amount); 
            ps.setString(13, expense_2_vat); 
            ps.setString(14, ledger_account_3);
            ps.setString(15, expense_3_description);
            ps.setString(16, expense_3_amount);
            ps.setString(17, expense_3_vat);
            ps.setString(18, serving_agent);
            ps.setString(19, transaction_date);
            ps.setString(20, total_amount);
            

            int numrows = ps.executeUpdate();
            ps.close();
          
            result = "success";
          
        } catch (Exception e) {
            e.printStackTrace();
            result = "failure";
        }
        
        return result;
    }
    
    
    public static String addSupplierInvoices(String ledger_account_4,String expense_4_description,String expense_4_amount,
            String expense_4_vat,String ledger_account_5,String expense_5_description,String expense_5_amount,
            String expense_5_vat,String ledger_account_6,String expense_6_description,String expense_6_amount,
            String expense_6_vat,String ledger_account_7,String expense_7_description,String expense_7_amount,
            String expense_7_vat,String ledger_account_8,String expense_8_description,String expense_8_amount,
            String expense_8_vat,String ledger_account_9,String expense_9_description,String expense_9_amount,
            String expense_9_vat,String ledger_account_10,String expense_10_description,String expense_10_amount,
            String expense_10_vat,String ledger_account_11,String expense_11_description,String expense_11_amount,
            String expense_11_vat,String ledger_account_12,String expense_12_description,String expense_12_amount,
            String expense_12_vat){
            String result = "";
            
        try {
          
            String query = "insert into supplier_invoice (ledger_account_4,expense_4_description,expense_4_amount,expense_4_vat,"
                    + "ledger_account_5,expense_5_description,expense_5_amount,expense_5_vat,ledger_account_6,expense_6_description,"
                    + "expense_6_amount,expense_6_vat,ledger_account_7,expense_7_description,expense_7_amount,expense_7_vat,"
                    + "ledger_account_8,expense_8_description,expense_8_amount,expense_8_vat,ledger_account_9,expense_9_description"
                    + ",expense_9_amount,expense_9_vat,ledger_account_10,expense_10_description,expense_10_amount,expense_10_vat,"
                    + "ledger_account_11,expense_11_description,expense_11_amount,expense_11_vat,ledger_account_12,expense_12_description,"
                    + "expense_12_amount,expense_12_vat) "
                    + "values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement ps = null;
            ps = connCS.prepareStatement(query);
            
            ps.setString(1, ledger_account_4);    
            ps.setString(2, expense_4_description); 
            ps.setString(3, expense_4_amount);
            ps.setString(4, expense_4_vat);    
            ps.setString(5, ledger_account_5); 
            ps.setString(6, expense_5_description);
            ps.setString(7, expense_5_amount);    
            ps.setString(8, expense_5_vat); 
            ps.setString(9, ledger_account_6);
            ps.setString(10, expense_6_description);  
            ps.setString(11, expense_6_amount);
            ps.setString(12, expense_6_vat); 
            ps.setString(13, ledger_account_7);
            ps.setString(14, expense_7_description);    
            ps.setString(15, expense_7_amount); 
            ps.setString(16, expense_7_vat);
            ps.setString(17, ledger_account_8);    
            ps.setString(18, expense_8_description); 
            ps.setString(19, expense_8_amount);
            ps.setString(20, expense_8_vat); 
            ps.setString(21, ledger_account_9);
            ps.setString(22, expense_9_description);
            ps.setString(23, expense_9_amount); 
            ps.setString(24, expense_9_vat);
            ps.setString(25, ledger_account_10);
            ps.setString(26, expense_10_description); 
            ps.setString(27, expense_10_amount);
            ps.setString(28, expense_10_vat);
            ps.setString(29, ledger_account_11);
            ps.setString(30, expense_11_description); 
            ps.setString(31, expense_11_amount);
            ps.setString(32, expense_11_vat);
            ps.setString(33, ledger_account_12);
            ps.setString(34, expense_12_description); 
            ps.setString(35, expense_12_amount);
            ps.setString(36, expense_12_vat);

            int numrows = ps.executeUpdate();
            ps.close();
          
            result = "success";
          
        } catch (Exception e) {
            e.printStackTrace();
            result = "failure";
        }
        return result;
    }
     
    public static String newSupplierCreditMemo(String supplier_full_name,String reference_number,Double credit_amount
            ,String credit_memo_description,String ledger_account_1,String expense_1_description,Double expense_1_amount,
            String expense_1_vat,String ledger_account_2,String expense_2_description,Double expense_2_amount,
            String expense_2_vat,String ledger_account_3,String expense_3_description,Double expense_3_amount,
            String expense_3_vat,String serving_agent,String transaction_date,Double total_amount){
        
        String result="";
        
         try {
          
            String query = "insert into supplier_credit_memo (supplier_full_name,reference_number,credit_amount"
                    + ",credit_memo_description,ledger_account_1,expense_1_description,expense_1_amount,expense_1_vat,"
                    + "ledger_account_2,expense_2_description,expense_2_amount,expense_2_vat,ledger_account_3,"
                    + "expense_3_description,expense_3_amount,expense_3_vat,"
                    + "serving_agent,transaction_date,total_amount) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            
            PreparedStatement ps = null;
            ps = connCS.prepareStatement(query);

            ps.setString(1, supplier_full_name);
            ps.setString(2, reference_number);
            ps.setDouble(3, credit_amount); 
            ps.setString(4, credit_memo_description);
            ps.setString(5, ledger_account_1); 
            ps.setString(6, expense_1_description);
            ps.setDouble(7, expense_1_amount);
            ps.setString(8, expense_1_vat); 
            ps.setString(9, ledger_account_2);
            ps.setString(10, expense_2_description);
            ps.setDouble(11, expense_2_amount); 
            ps.setString(12, expense_2_vat); 
            ps.setString(13, ledger_account_3);
            ps.setString(14, expense_3_description);
            ps.setDouble(15, expense_3_amount);
            ps.setString(16, expense_3_vat);
            ps.setString(17, serving_agent);
            ps.setString(18, transaction_date);
            ps.setDouble(19, total_amount);
            

            int numrows = ps.executeUpdate();
            ps.close();
          
            result = "success";
          
        } catch (Exception e) {
            e.printStackTrace();
            result = "failure";
        }
        
        return result;
    }
     
    public static String UpdateBankBalance(Double bank_balance,String bank_name, String bank_account) {
        String result = "";
        try {
          
            String query = "update bank_current_balance set bank_balance=? where bank_name=? and bank_account=?";
            PreparedStatement ps = null;
            ps = connCS.prepareStatement(query);
            
            ps.setDouble(1, bank_balance);
            ps.setString(2, bank_name);
            ps.setString(3, bank_account);
           

            int numrows = ps.executeUpdate();
            ps.close();
          
            result = "success";
          
        } catch (Exception e) {
            e.printStackTrace();
            result = "failure";
        }
        return result;
    }
     
    public static String addCreditMemos(String ledger_account_4,String expense_4_description,Double expense_4_amount,
            String expense_4_vat,String ledger_account_5,String expense_5_description,Double expense_5_amount,
            String expense_5_vat,String ledger_account_6,String expense_6_description,Double expense_6_amount,
            String expense_6_vat,String ledger_account_7,String expense_7_description,Double expense_7_amount,
            String expense_7_vat,String ledger_account_8,String expense_8_description,Double expense_8_amount,
            String expense_8_vat,String ledger_account_9,String expense_9_description,Double expense_9_amount,
            String expense_9_vat,String ledger_account_10,String expense_10_description,Double expense_10_amount,
            String expense_10_vat,String ledger_account_11,String expense_11_description,Double expense_11_amount,
            String expense_11_vat,String ledger_account_12,String expense_12_description,Double expense_12_amount,
            String expense_12_vat){
            String result = "";
            
        try {
          
            String query = "insert into supplier_credit_memo (ledger_account_4,expense_4_description,expense_4_amount,expense_4_vat,"
                    + "ledger_account_5,expense_5_description,expense_5_amount,expense_5_vat,ledger_account_6,expense_6_description,"
                    + "expense_6_amount,expense_6_vat,ledger_account_7,expense_7_description,expense_7_amount,expense_7_vat,"
                    + "ledger_account_8,expense_8_description,expense_8_amount,expense_8_vat,ledger_account_9,expense_9_description"
                    + ",expense_9_amount,expense_9_vat,ledger_account_10,expense_10_description,expense_10_amount,expense_10_vat,"
                    + "ledger_account_11,expense_11_description,expense_11_amount,expense_11_vat,ledger_account_12,expense_12_description,"
                    + "expense_12_amount,expense_12_vat) "
                    + "values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement ps = null;
            ps = connCS.prepareStatement(query);
            
            ps.setString(1, ledger_account_4);    
            ps.setString(2, expense_4_description); 
            ps.setDouble(3, expense_4_amount);
            ps.setString(4, expense_4_vat);    
            ps.setString(5, ledger_account_5); 
            ps.setString(6, expense_5_description);
            ps.setDouble(7, expense_5_amount);    
            ps.setString(8, expense_5_vat); 
            ps.setString(9, ledger_account_6);
            ps.setString(10, expense_6_description);  
            ps.setDouble(11, expense_6_amount);
            ps.setString(12, expense_6_vat); 
            ps.setString(13, ledger_account_7);
            ps.setString(14, expense_7_description);    
            ps.setDouble(15, expense_7_amount); 
            ps.setString(16, expense_7_vat);
            ps.setString(17, ledger_account_8);    
            ps.setString(18, expense_8_description); 
            ps.setDouble(19, expense_8_amount);
            ps.setString(20, expense_8_vat); 
            ps.setString(21, ledger_account_9);
            ps.setString(22, expense_9_description);
            ps.setDouble(23, expense_9_amount); 
            ps.setString(24, expense_9_vat);
            ps.setString(25, ledger_account_10);
            ps.setString(26, expense_10_description); 
            ps.setDouble(27, expense_10_amount);
            ps.setString(28, expense_10_vat);
            ps.setString(29, ledger_account_11);
            ps.setString(30, expense_11_description); 
            ps.setDouble(31, expense_11_amount);
            ps.setString(32, expense_11_vat);
            ps.setString(33, ledger_account_12);
            ps.setString(34, expense_12_description); 
            ps.setDouble(35, expense_12_amount);
            ps.setString(36, expense_12_vat);

            int numrows = ps.executeUpdate();
            ps.close();
          
            result = "success";
          
        } catch (Exception e) {
            e.printStackTrace();
            result = "failure";
        }
        return result;
    }
     
public static String newBillPayment(Double bank_amount,String cheque_number,Double total_payment
            ,String transaction_date,Double balance_before_transaction){
        
        String result="";
        
         try {
          
            String query = "insert into bill_payment (bank_amount,cheque_number,total_payment"
                    + ",transaction_date,balance_before_transaction) values (?,?,?,?,?)";
            
            PreparedStatement ps = null;
            ps = connCS.prepareStatement(query);

            ps.setDouble(1, bank_amount);
            ps.setString(2, cheque_number);
            ps.setDouble(3, total_payment); 
            ps.setString(4, transaction_date);
            ps.setDouble(5, balance_before_transaction);
            
            

            int numrows = ps.executeUpdate();
            ps.close();
          
            result = "success";
          
        } catch (Exception e) {
            e.printStackTrace();
            result = "failure";
        }
        
        return result;
    }

    public static String newDirectExpense(String bank_account,String payment_mode,String total_amount,String cheque_number
            ,String description,String account_1,String expense_1_description,Double expense_1_amount,
            String expense_1_vat,String account_2,String expense_2_description,Double expense_2_amount,
            String expense_2_vat,String account_3,String expense_3_description,Double expense_3_amount,
            String expense_3_vat,String serving_agent,String transaction_date,Double total_net_amount,Double total_vat_amount
            ,Double total_gross_amount){
        
        String result="";
        
         try {
          
            String query = "insert into direct_expense (bank_account,payment_mode,total_amount,cheque_number,"
                    + "description,account_1,expense_1_description,expense_1_amount,expense_1_vat,"
                    + "account_2,expense_2_description,expense_2_amount,expense_2_vat,account_3,"
                    + "expense_3_description,expense_3_amount,expense_3_vat,"
                    + "serving_agent,transaction_date,total_net_amount,total_vat_amount,total_gross_amount) values "
                    + "(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            
            PreparedStatement ps = null;
            ps = connCS.prepareStatement(query);

            ps.setString(1, bank_account);
            ps.setString(2, payment_mode);
            ps.setString(3, total_amount); 
            ps.setString(4, cheque_number);
            ps.setString(5, description);
            ps.setString(6, account_1); 
            ps.setString(7, expense_1_description);
            ps.setDouble(8, expense_1_amount);
            ps.setString(9, expense_1_vat); 
            ps.setString(10, account_2);
            ps.setString(11, expense_2_description);
            ps.setDouble(12, expense_2_amount); 
            ps.setString(13, expense_2_vat); 
            ps.setString(14, account_3);
            ps.setString(15, expense_3_description);
            ps.setDouble(16, expense_3_amount);
            ps.setString(17, expense_3_vat);
            ps.setString(18, serving_agent);
            ps.setString(19, transaction_date);
            ps.setDouble(20, total_net_amount);
            ps.setDouble(21, total_vat_amount);
            ps.setDouble(22, total_gross_amount);
            

            int numrows = ps.executeUpdate();
            ps.close();
          
            result = "success";
          
        } catch (Exception e) {
            e.printStackTrace();
            result = "failure";
        }
        
        return result;
    }
    
    
    public static String addExpenses(String account_4,String expense_4_description,Double expense_4_amount,
            String expense_4_vat,String account_5,String expense_5_description,Double expense_5_amount,
            String expense_5_vat,String account_6,String expense_6_description,Double expense_6_amount,
            String expense_6_vat,String account_7,String expense_7_description,Double expense_7_amount,
            String expense_7_vat,String account_8,String expense_8_description,Double expense_8_amount,
            String expense_8_vat,String account_9,String expense_9_description,Double expense_9_amount,
            String expense_9_vat,String account_10,String expense_10_description,Double expense_10_amount,
            String expense_10_vat,String account_11,String expense_11_description,Double expense_11_amount,
            String expense_11_vat,String account_12,String expense_12_description,Double expense_12_amount,
            String expense_12_vat){
            String result = "";
            
        try {
          
            String query = "insert into direct_expenses (account_4,expense_4_description,expense_4_amount,expense_4_vat,"
                    + "account_5,expense_5_description,expense_5_amount,expense_5_vat,account_6,expense_6_description,"
                    + "expense_6_amount,expense_6_vat,account_7,expense_7_description,expense_7_amount,expense_7_vat,"
                    + "account_8,expense_8_description,expense_8_amount,expense_8_vat,account_9,expense_9_description"
                    + ",expense_9_amount,expense_9_vat,account_10,expense_10_description,expense_10_amount,expense_10_vat,"
                    + "account_11,expense_11_description,expense_11_amount,expense_11_vat,account_12,expense_12_description,"
                    + "expense_12_amount,expense_12_vat) "
                    + "values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement ps = null;
            ps = connCS.prepareStatement(query);
            
            ps.setString(1, account_4);    
            ps.setString(2, expense_4_description); 
            ps.setDouble(3, expense_4_amount);
            ps.setString(4, expense_4_vat);    
            ps.setString(5, account_5); 
            ps.setString(6, expense_5_description);
            ps.setDouble(7, expense_5_amount);    
            ps.setString(8, expense_5_vat); 
            ps.setString(9, account_6);
            ps.setString(10, expense_6_description);  
            ps.setDouble(11, expense_6_amount);
            ps.setString(12, expense_6_vat); 
            ps.setString(13, account_7);
            ps.setString(14, expense_7_description);    
            ps.setDouble(15, expense_7_amount); 
            ps.setString(16, expense_7_vat);
            ps.setString(17, account_8);    
            ps.setString(18, expense_8_description); 
            ps.setDouble(19, expense_8_amount);
            ps.setString(20, expense_8_vat); 
            ps.setString(21, account_9);
            ps.setString(22, expense_9_description);
            ps.setDouble(23, expense_9_amount); 
            ps.setString(24, expense_9_vat);
            ps.setString(25, account_10);
            ps.setString(26, expense_10_description); 
            ps.setDouble(27, expense_10_amount);
            ps.setString(28, expense_10_vat);
            ps.setString(29, account_11);
            ps.setString(30, expense_11_description); 
            ps.setDouble(31, expense_11_amount);
            ps.setString(32, expense_11_vat);
            ps.setString(33, account_12);
            ps.setString(34, expense_12_description); 
            ps.setDouble(35, expense_12_amount);
            ps.setString(36, expense_12_vat);

            int numrows = ps.executeUpdate();
            ps.close();
          
            result = "success";
          
        } catch (Exception e) {
            e.printStackTrace();
            result = "failure";
        }
        return result;
    }
    
   public static String newBankReconciliation(String bank_account,Double book_balance,Double bank_charges
            ,String transaction_date,Double interest_income,Double balance_as_per_bank_statement){
        
        String result="";
        
         try {
          
            String query = "insert into bank_reconciliation (bank_account,book_balance,bank_charges"
                    + ",transaction_date,interest_income,balance_as_per_bank_statement) values (?,?,?,?,?,?)";
            
            PreparedStatement ps = null;
            ps = connCS.prepareStatement(query);

            ps.setString(1, bank_account);
            ps.setDouble(2, book_balance);
            ps.setDouble(3, bank_charges); 
            ps.setString(4, transaction_date);
            ps.setDouble(5, interest_income);
            ps.setDouble(6, balance_as_per_bank_statement);
            
            

            int numrows = ps.executeUpdate();
            ps.close();
          
            result = "success";
          
        } catch (Exception e) {
            e.printStackTrace();
            result = "failure";
        }
        
        return result;
    }
   
   public static String newAccount(String account_name,String account_type,String sub_account_of
            ,String description,String bank_account_number,Double opening_balance,String opening_date){
        
        String result="";
        
         try {
          
            String query = "insert into account (account_name,account_type,sub_account_of"
                    + ",description,bank_account_number,opening_balance,opening_date) values (?,?,?,?,?,?,?)";
            
            PreparedStatement ps = null;
            ps = connCS.prepareStatement(query);

            ps.setString(1, account_name);
            ps.setString(2, account_type);
            ps.setString(3, sub_account_of); 
            ps.setString(4, description);
            ps.setString(5, bank_account_number);
            ps.setDouble(6, opening_balance);
            ps.setString(7, opening_date);
            
            

            int numrows = ps.executeUpdate();
            ps.close();
          
            result = "success";
          
        } catch (Exception e) {
            e.printStackTrace();
            result = "failure";
        }
        
        return result;
    }
   

   
   public static String newCustomer(String customer_name,String customer_email,String customer_mobile
            ,String customer_pin_number,String customer_contact_person,String opening_date){
        
        String result="";
        
         try {
          
            String query = "insert into customers (customer_name,customer_email,customer_mobile"
                    + ",customer_pin_number,customer_contact_person,opening_date) values (?,?,?,?,?,?)";
            
            PreparedStatement ps = null;
            ps = connCS.prepareStatement(query);

            ps.setString(1, customer_name);
            ps.setString(2, customer_email);
            ps.setString(3, customer_mobile); 
            ps.setString(4, customer_pin_number);
            ps.setString(5, customer_contact_person);
            ps.setString(6, opening_date);
            
            

            int numrows = ps.executeUpdate();
            ps.close();
          
            result = "success";
          
        } catch (Exception e) {
            e.printStackTrace();
            result = "failure";
        }
        
        return result;
    }

   public static String getCalenderEventsInHTMLFormat(){
         String calender_event_html = "";
         StringBuffer sb = new StringBuffer();
            
            sb.append("<link href='main.css' rel='stylesheet' />");
            sb.append("<link href='daygrid.css' rel='stylesheet' />");
            sb.append("<link href='timegrid.css' rel='stylesheet' />");
            sb.append("<link href='list.css' rel='stylesheet' />");
            sb.append("<script src='main.js'></script>");
            sb.append("<script src='interaction.js'></script>");
            sb.append("<script src='daygrid.js'></script>");
            sb.append("<script src='timegrid.js'></script>");
            sb.append("<script src='list.js'></script>");
            sb.append("<script>\n");
            sb.append("document.addEventListener('DOMContentLoaded', function() {\n");
            sb.append("var calendarEl = document.getElementById('calendar');\n");
            sb.append("var calendar = new FullCalendar.Calendar(calendarEl, {\n");
            sb.append("plugins: [ 'interaction', 'dayGrid', 'timeGrid', 'list' ],\n");
            sb.append("height: 'parent',\n");
            sb.append("dateClick: function(info) {calendar.changeView('timeGridDay',info.dateStr);},\n");
            sb.append("eventClick: function(info1) {	calendar.changeView('timeGridDay',info1.event.start);},\n");
            sb.append("header: {\n");
            sb.append("left: 'prev,next today',\n");
            sb.append("center: 'title',\n");
            sb.append("right: 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'\n");
            sb.append("},\n");
            sb.append("defaultView: 'dayGridMonth',\n");
            sb.append("navLinks: true,\n");
            sb.append("editable: false,\n");
            sb.append("eventLimit: false,\n");
            sb.append("events: [\n");
                    
                    try
                    {
                    FunctionalitiesJ.initializeConnection();
                    String query="select * from event_schedule";
                    Statement stmt=FunctionalitiesJ.connCS.createStatement();
                    ResultSet srs=stmt.executeQuery(query);
                    while(srs.next())
                    {
               
                    sb.append("{\n");
                    sb.append("title:" +"'"+srs.getString("title")+"'"+",\n");  
                    sb.append("start:" +"'"+srs.getString("start_date") + " " + srs.getString("start_time")+"'"+",\n");  
                    sb.append("end:" + "'"+srs.getString("end_date") + " " + srs.getString("end_time")+"'"+"\n");  
                    sb.append("},\n");
                     
                    }
                    srs.close();
                    stmt.close();
                    FunctionalitiesJ.closeConnection();
                    }catch(Exception e){
                        e.printStackTrace();
                    }

            sb.append("]\n");      
            sb.append("});\n");
            sb.append("calendar.render();\n");
            sb.append(" });\n");   
            sb.append("</script>\n");
             
	
         
         System.out.println("calender_event_html : " + sb.toString());
              return sb.toString();
        }
   
        public static String addMessage(String chat_message,String to_user_id,String username) {
        String result = "";
        System.out.println("Adding message...");
        try {
            String from_user_id = "2";
            String status = "1";
            String query = "insert into chatmessage (chat_message,to_user_id,from_user_id,username,status) values (?,?,?,?,?)";
            PreparedStatement ps = null;
            ps = connCS.prepareStatement(query);
            
            ps.setString(1, chat_message);
            ps.setString(2, to_user_id);
            ps.setString(3, from_user_id);
            ps.setString(4, username);
        
           

            int numrows = ps.executeUpdate();
            ps.close();
          
            result = "success";
          
        } catch (Exception e) {
            e.printStackTrace();
            result = "failure";
        }
        System.out.println("result:"+result);
        return result;
    }
        
    public static String readMessage(String to_users){
        String result="";
        System.out.println("Reading message...");
        try
            {
               
                String logged_in_user = "2";
                FunctionalitiesJ.initializeConnection();
                String no_message = "0";
                String new_message = "1";
                String query ="update chatmessage set status =? where from_user_id = '" + to_users + "' "
                            + "and to_user_id = '" + logged_in_user +"' and status='" + new_message + "' ";
                PreparedStatement pstmt = FunctionalitiesJ.connCS.prepareStatement(query);
                pstmt.setString(1, no_message);
                pstmt.executeUpdate();
                FunctionalitiesJ.closeConnection();
                
            }catch(Exception e){
                e.printStackTrace();
            }
        
        System.out.println("result:"+result);
        return result;
    }
        
     public static String addMessages(String chat_message,String to_user_id,String username,String from_user_id,
             String status) {
        String result = "";
        System.out.println("Adding message...");
        try {
            String query = "insert into chatmessage (chat_message,to_user_id,from_user_id,username,status) "
                    + "values (?,?,?,?,?)";
            PreparedStatement ps = null;
            ps = connCS.prepareStatement(query);
            
            ps.setString(1, chat_message);
            ps.setString(2, to_user_id);
            ps.setString(3, from_user_id);
            ps.setString(4, username);
            ps.setString(5, status);
        
           

            int numrows = ps.executeUpdate();
            ps.close();
          
            result = "success";
          
        } catch (Exception e) {
            e.printStackTrace();
            result = "failure";
        }
        System.out.println("result:"+result);
        return result;
    }
     
    public static String saveLocation(String latitude,String longitude) {
        String result = "";
        String user_id = "2";
        try {
            FunctionalitiesJ.initializeConnection();
            String query = "update location set latitude=?,longitude=? where id ='"+ user_id +"' ";
            PreparedStatement ps = null;
            ps = connCS.prepareStatement(query);
            
            ps.setString(1, latitude);    
            ps.setString(2, longitude);  
           

            ps.executeUpdate();
            FunctionalitiesJ.closeConnection();
          
            result = "success";
          
        } catch (Exception e) {
            e.printStackTrace();
            result = "failure";
        }
        System.out.println("result:"+result);
        return result;
    } 
    
    public static String addToken(String token) {
        String result = "";
        String user_id = "2";
        try {
            FunctionalitiesJ.initializeConnection();
            String query = "update login set token=? where user_id ='"+ user_id +"' ";
            PreparedStatement ps = null;
            ps = connCS.prepareStatement(query);
            
            ps.setString(1, token);       
           

            ps.executeUpdate();
            FunctionalitiesJ.closeConnection();
          
            result = "success";
          
        } catch (Exception e) {
            e.printStackTrace();
            result = "failure";
        }
        System.out.println("result:"+result);
        return result;
    } 
            
    public static String loadUsersInHTMLFormat(){
        String load_users_html = "";
        StringBuffer sb = new StringBuffer();
        
        System.out.println("calling out...");
        
        sb.append("<table class='table table-striped'>");
        sb.append("<thead>");
        sb.append("</thead>");
        
                    try
                    {
                    String user_id = "2";
                    FunctionalitiesJ.initializeConnection();
                    String query="select * from login where user_id != '" + user_id + "' ";
                    Statement stmt=FunctionalitiesJ.connCS.createStatement();
                    ResultSet srs=stmt.executeQuery(query);
                    while(srs.next())
                    {
                        sb.append("<tbody>");
                        sb.append(" <tr> ");
                        sb.append("<td>" + srs.getString("username") +"</td>");
                        sb.append("<td></td>");
                        sb.append("<td><a onclick='viewChat(\"" + srs.getString("user_id")+ "\",\"" + srs.getString("username") + "\")' "
                                + "class='btn btn-primary btn-sm' style='float:right;color:white' >Start Chat</a></td>");
                        sb.append(" </tr>");
                        
                    }
               
                        sb.append("</tbody>");
                        sb.append("</table>"); 
                      
               
                        
                   
                    srs.close();
                    stmt.close();
                    FunctionalitiesJ.closeConnection();
                    }catch(Exception e){
                        e.printStackTrace();
                    }
                   
              System.out.println("load_users_html : " + sb.toString());
              return sb.toString();     
 
    
    }
    
    public static String addUser(String user_name, String user_password, String e_mail) {
        String result = "";
        try {
          
            String query = "insert into login (username,password,email) values (?,?,?)";
            PreparedStatement ps = null;
            ps = connCS.prepareStatement(query);

            ps.setString(1, user_name.toLowerCase().trim());
            ps.setString(2, EncryptPassword(user_password));
            ps.setString(3,e_mail.toLowerCase());            

            int numrows = ps.executeUpdate();
            ps.close();
          
            result = "success";
          
        } catch (Exception e) {
            e.printStackTrace();
            result = "failure";
        }
        return result;
    }
     
     public static String addEvent(String event_Date, String event_Time,String event_Title,String event_Description) {
        String result = "";
        try {
          
            String query = "insert into events (event_date,event_time,event_title,event_description) values (?,?,?,?)";
            PreparedStatement ps = null;
            ps = connCS.prepareStatement(query);
            
            ps.setString(1, event_Date);
            ps.setString(2, event_Time);
            ps.setString(3, event_Title.toUpperCase());
            ps.setString(4, event_Description);
           

            int numrows = ps.executeUpdate();
            ps.close();
          
            result = "success";
          
        } catch (Exception e) {
            e.printStackTrace();
            result = "failure";
        }
        return result;
    }
    
    public static String getChatHistoryInHTMLFormat(String to_users){
        String chat_history = "";
        StringBuffer sb = new StringBuffer();
        
        System.out.println("calling out chat_history...");
        
                    try
                    {
                    String logged_in_user = "2";
                    FunctionalitiesJ.initializeConnection();
                    String query1="select * from chatmessage where from_user_id = '"+ logged_in_user +"' "
                            + "and to_user_id = '" +to_users+ "' or from_user_id = '" + to_users + "' "
                            + "and to_user_id = '" + logged_in_user +"' order by time_of_message asc";
                    
                        System.out.println("query1 : " + query1);
                        
                    Statement stmt=FunctionalitiesJ.connCS.createStatement();
                    ResultSet srs=stmt.executeQuery(query1);
                    while(srs.next())
                    {
                    if(srs.getString("from_user_id").equals(logged_in_user)){
              
                        sb.append("<div class=\"jumbotron\" style=\"text-align: right;background-color: lightgreen; margin-left: 20px; "
                                + "margin-right: 20px; margin-bottom: 20px;margin-top: 20px;padding: 15px ;\n" +
                        "border-bottom-left-radius:10px; border-top-left-radius:10px; border-top-right-radius:10px;\n" +
                        "border-bottom-right-radius:0px;border-width:3px;\">");
                        sb.append("<p>"+ srs.getString("chat_message")+ "</p>"); 
                        sb.append("<p>"+ srs.getString("time_of_message") + "</p>");   
                        sb.append("</div>");
                  
                    }else
                    {
               
                        sb.append("<div class=\"jumbotron\" style=\"margin-left: 20px;margin-right: 20px; margin-bottom:20px;margin-top: 20px;"
                                + "background-color:lightgray; padding: 15px ;\n" +
                        "border-bottom-left-radius:0px; border-top-left-radius:10px; border-top-right-radius:10px;\n" +
                        "border-bottom-right-radius:10px;border-width:3px;\">");
                        sb.append("<p>" + srs.getString("chat_message") + "</p>");   
                        sb.append("<p>" + srs.getString("time_of_message") + "</p>");  
                        sb.append("</div>");
                 
                 
                    }
                    }
                    srs.close();
                    stmt.close();
                    FunctionalitiesJ.closeConnection();
                    }catch(Exception e){
                        e.printStackTrace();
                    }
              
         System.out.println("chat_history : " + sb.toString());
         return sb.toString();   
    
    }
    
    public static String loadUsersandNotificationInHTMLFormat(){
        String load_users_and_notification_html = "";
        StringBuffer sb = new StringBuffer();
        
        System.out.println("calling out...");
        
        sb.append("<table class='table table-striped'>");
        sb.append("<thead>");
        sb.append("</thead>");
        
                    try
                    {
                    String user_id = "2";
                    FunctionalitiesJ.initializeConnection();
                    String query="select * from login where user_id != '" + user_id + "' ";
                    Statement stmt=FunctionalitiesJ.connCS.createStatement();
                    ResultSet srs=stmt.executeQuery(query);
                    while(srs.next())
                    {
                        sb.append("<tbody>");
                        sb.append(" <tr> ");
                      
                       try
                       {
                           
                       String to_users = srs.getString("user_id");
                       String new_message = "1";
                       String query1 = "select count(*) from chatmessage where from_user_id = '"+ to_users +"' "
                            + "and to_user_id = '" +user_id+ "' and status = '"+ new_message +"' ";
                       Statement stmt1=FunctionalitiesJ.connCS.createStatement();
                       ResultSet srs1 = stmt1.executeQuery(query1); 
                       while(srs1.next()){
                       int row_count = srs1.getInt(1);
                      
                            
                        if(row_count>0){


                        sb.append("<td>" +srs.getString("username")+ "  " +"<span class=\"badge badge-success\">" + row_count +"</span></td>");

                         }else{

                        sb.append("<td>"+ srs.getString("username") +"</td>");

                          }
                        }
                        srs1.close();
                        stmt1.close();
                        }catch(Exception e){
                            e.printStackTrace();
                        }
                        
                        sb.append("<td></td>");
                        sb.append("<td><a onclick='viewChat(\"" + srs.getString("user_id")+ "\",\"" + srs.getString("username") + "\")' "
                                + "class='btn btn-primary btn-sm' style='float:right;color:white' >Start Chat</a></td>");
                        sb.append(" </tr>");
                        
                    }
               
                        sb.append("</tbody>");
                        sb.append("</table>"); 
                      
               
                        
                   
                    srs.close();
                    stmt.close();
                    FunctionalitiesJ.closeConnection();
                    }catch(Exception e){
                        e.printStackTrace();
                    }
                   
              System.out.println("load_users_and_notification_html : " + sb.toString());
              return sb.toString();     
    }
 
    
    
              
     public static String loadUsersInNotificationFormat(){
         String load_users_format="";
         StringBuffer sb = new StringBuffer();
            
        
         sb.append("<nav class=\"navbar navbar-expand-sm bg-dark navbar-dark\">");
         sb.append("<div class=\"container-fluid\">");
         sb.append("<ul class=\"nav navbar-nav navbar-left\">");    
         sb.append("<li class=\"nav-item\">");	
                   
                    try
                    {
                     String user_id7 = "2";
                     FunctionalitiesJ.initializeConnection();
                     String query8="select * from login where user_id = '" + user_id7 + "' ";
                     Statement stmt8=FunctionalitiesJ.connCS.createStatement();
                     ResultSet srs8=stmt8.executeQuery(query8);
                     while(srs8.next()){
                        
                        
                        try
                        {
                        String unread_message = "1";
                        String query7=" select count(*) from chatmessage where to_user_id = '" +user_id7+ "' and status = '"+ unread_message +"' ";
                        Statement stmt7=FunctionalitiesJ.connCS.createStatement();
                        ResultSet srs7=stmt7.executeQuery(query7);
                        while(srs7.next()){
                        int row_count7 = srs7.getInt(1);      
                        if (row_count7 > 0){
                                            
                   
		    sb.append("<span class=\"glyphicon glyphicon-info-sign\"><a class=\"nav-link\" onclick='viewNotification(\"" + srs8.getString("user_id")+ "\",\"" + srs8.getString("username") + "\")' >Messages"
                            + "<span class=\"badge badge-success\">" + row_count7 +"</span></a></span>");
                    
                        }else{
                    
                    
                    sb.append("<span class=\"glyphicon glyphicon-info-sign\"><a class=\"nav-link\" "
                            + "onclick='viewNotification(\"" + srs8.getString("user_id")+ "\",\"" + srs8.getString("username") + "\")' >Messages</a></span>");
                    
                            }
                        }
                            srs7.close();
                            stmt7.close();
                            }catch(Exception e){
                                   e.printStackTrace();
                           }
                        
                         }
                         srs8.close();
                         stmt8.close();
                         FunctionalitiesJ.closeConnection();
                         }catch(Exception e){
                                e.printStackTrace();
                        }
            sb.append("</li></ul>");
            sb.append("<h3 style =\"color:white;margin-left: auto;margin-right: auto;\" >Chat App</h3>");
            sb.append("</div>");
            sb.append(" </nav>");   
            sb.append("<div class=\"list-group\">");
                                   
                    try
                    {
                    String user_id = "2";
                    FunctionalitiesJ.initializeConnection();
                    String query="select * from login where user_id != '" + user_id + "' ";
                    Statement stmt=FunctionalitiesJ.connCS.createStatement();
                    ResultSet srs=stmt.executeQuery(query);
                    while(srs.next())
                    {                         
               
                                try
                                {

                                String to_users = srs.getString("user_id");
                                String new_message = "1";
                                String query1 = "select count(*) from chatmessage where from_user_id = '"+ to_users +"' "
                                     + "and to_user_id = '" +user_id+ "' and status = '"+ new_message +"' ";
                                Statement stmt1=FunctionalitiesJ.connCS.createStatement();
                                ResultSet srs1 = stmt1.executeQuery(query1); 
                                while(srs1.next()){
                                int row_count = srs1.getInt(1);


                                if(row_count>0){

                                
                                sb.append("<a onclick='viewChat(\"" + srs.getString("user_id")+ "\",\"" + srs.getString("username") + "\")' "
                                        + "style=\"background-color:lightcyan;\" class=\"list-group-item list-group-item-action\">");
                                sb.append("<div class=\"d-flex w-100 justify-content-between\">");
                                sb.append("<h5 class=\"mb-1\">"+ srs.getString("username") +"</h5>");    
                                sb.append("<small><span class=\"badge badge-success\">" +row_count+ "</span></small>");       
                                sb.append("</div>");     
                                    
                                    
                               try
                                {

                                String to_user_id = srs.getString("user_id");
                                String new_incoming_message = "1";
                                String query3 = "select * from chatmessage where from_user_id = '"+ to_user_id +"' "
                                     + "and to_user_id = '" +user_id+ "' and status = '"+ new_incoming_message +"' order by "
                                        + "time_of_message desc limit 1 ";
                                Statement stmt3=FunctionalitiesJ.connCS.createStatement();
                                ResultSet srs3 = stmt3.executeQuery(query3); 
                                while(srs3.next()){
                                     
                                     sb.append("<p class=\"mb-1\"> " +srs3.getString("chat_message")+ "</p>");
                                     sb.append("<small style=\"float:right;\">" + srs3.getString("time_of_message")+ "</small>");
                                    
                                }
                        
                                srs3.close();
                                stmt3.close();
                                }catch(Exception e){
                                    e.printStackTrace();
                                }  
                                      if(row_count==1){
                                     
                                     sb.append("<small>1 Unread Message</small>");
                                    
                                     }else{
                                     sb.append("<small>" +row_count +" Unread Messages</small>");
                                    
                                     }

                                 sb.append("</a>");
                                 }else{
                                    sb.append("<a onclick='viewChat(\"" + srs.getString("user_id")+ "\",\"" + srs.getString("username") + "\")'  class=\"list-group-item list-group-item-action\">");
                                    sb.append("<div class=\"d-flex w-100 justify-content-between\">"); 
                                    sb.append(" <h5 class=\"mb-1\">"+srs.getString("username")+ "</h5>");   
                                    sb.append("</div>");
                                   
                                     
                                    try
                                        {

                                        String to_user = srs.getString("user_id");
                                        String old_message = "0";
                                        String query2 = "select * from chatmessage where from_user_id = '"+ to_user +"' "
                                             + "and to_user_id = '" +user_id+ "' and status = '"+ old_message +"' order "
                                                + "by time_of_message desc limit 1 ";
                                        Statement stmt2=FunctionalitiesJ.connCS.createStatement();
                                        ResultSet srs2 = stmt2.executeQuery(query2); 
                                        while(srs2.next()){ 
                                    
                                        sb.append("<p class=\"mb-1\">"+ srs2.getString("chat_message")+ "</p>");
                                        sb.append("<small style=\"text-align: right;\">" +srs2.getString("time_of_message")+ "</small>");
                                    
                                        }
                        
                                        srs2.close();
                                        stmt2.close();
                                        }catch(Exception e){
                                            e.printStackTrace();
                                        }
                                    
                                  
                               sb.append("</a>");
                               
                                    }
                                 }

                                 srs1.close();
                                 stmt1.close();
                                 }catch(Exception e){
                                     e.printStackTrace();
                                 }
                             
                             
      sb.append("</div>");
                      
                
                    }  
                   
                    srs.close();
                    stmt.close();
                    FunctionalitiesJ.closeConnection();
                    }catch(Exception e){
                        e.printStackTrace();
                    }
                   
                     
                
              System.out.println("load_users_format : " + sb.toString());
              return sb.toString();
     }
     
     public static String LoadNotificationsInHtmlFormat(){
        String load_notifications = "";
        StringBuffer sb = new StringBuffer();
                            
                    try
                    {
                    String user_id = "2";
                    FunctionalitiesJ.initializeConnection();
                    String query="select * from login where user_id != '" + user_id + "' ";
                    Statement stmt=FunctionalitiesJ.connCS.createStatement();
                    ResultSet srs=stmt.executeQuery(query);
                    while(srs.next())
                    {
              
                       try
                       {
                           
                       String to_users = srs.getString("user_id");
                       String new_message = "1";
                       String query1 = "select count (*) from chatmessage where from_user_id = '"+ to_users +"' "
                            + "and to_user_id = '" +user_id+ "' and status = '"+ new_message +"' ";
                       Statement stmt1=FunctionalitiesJ.connCS.createStatement();
                       ResultSet srs1 = stmt1.executeQuery(query1); 
                       while(srs1.next()){                      
                        int row_count = srs1.getInt(1);
                      
                            
                       if(row_count>0){
                       
                      
                        sb.append("<div class=\"card\">");
                        sb.append("<div class=\"card-body\" style=\"margin:20px\">");
                        sb.append("<h5 class=\"card-title\" >" + srs.getString("username") +"</h5>");   
                            
                            try
                            {

                                String to_user_id = srs.getString("user_id");
                                String new_incoming_message = "1";
                                String query3 = "select * from chatmessage where from_user_id = '"+ to_user_id +"' "
                                     + "and to_user_id = '" +user_id+ "' and status = '"+ new_incoming_message +"' "
                                        + "order by time_of_message desc ";
                                Statement stmt3=FunctionalitiesJ.connCS.createStatement();
                                ResultSet srs3 = stmt3.executeQuery(query3); 
                                while(srs3.next()){ 
                            
                            sb.append("<p class=\"card-text\" >"+ srs3.getString("chat_message") +"</p>");
                               
                                }
                        
                                srs3.close();
                                stmt3.close();
                                }catch(Exception e){
                                    e.printStackTrace();
                                }                      
                        
                        
                            
                         
                            sb.append("<a onclick='viewChat(\"" + srs.getString("user_id")+ "\",\"" + srs.getString("username") + "\")' class=\"btn btn-primary\">Read Message</a>");
                            sb.append("</div>");
                            sb.append("</div>");
                        
                        
                        
                        }else{                            
                        
                            sb.append("<div class=\"card\">");
                            sb.append("<div class=\"card-body\">");
                            sb.append("<h5 class=\"card-title\">" +srs.getString("username") +"</h5>");
                            
                            try
                                {

                                String to_user = srs.getString("user_id");
                                String old_message = "0";
                                String query2 = "select * from chatmessage where from_user_id = '"+ to_user +"' "
                                     + "and to_user_id = '" +user_id+ "' and status = '"+ old_message +"' "
                                        + "order by time_of_message";
                                Statement stmt2=FunctionalitiesJ.connCS.createStatement();
                                ResultSet srs2 = stmt2.executeQuery(query2); 
                                while(srs2.next()){ 
                           
                                sb.append("<p class=\"card-text\">"+ srs2.getString("chat_message")+ "</p>");
                              
                                }

                                srs2.close();
                                stmt2.close();
                                }catch(Exception e){
                                    e.printStackTrace();
                                }
                                


                                
                          sb.append("<a onclick='viewChat(\"" + srs.getString("user_id")+ "\",\"" + srs.getString("username") + "\")' class=\"btn btn-primary\">Read Message</a>");
                          sb.append("</div>");
                          sb.append("</div>");
                      
                        
                        
                            }
                        }
                        srs1.close();
                        stmt1.close();
                        }catch(Exception e){
                            e.printStackTrace();
                        }
                        
                   
                   
                    }
                   
                  
                   
                    srs.close();
                    stmt.close();
                    FunctionalitiesJ.closeConnection();
                    }catch(Exception e){
                        e.printStackTrace();
                    }
                   
                     
               
         
        System.out.println("load_notifications : " + sb.toString());
        return sb.toString();
     }
     
     public static String loadNotifications(){
         String load_notifications = "";
         StringBuffer sb = new StringBuffer();
         
                             
                    try
                    {
                    String user_id = "2";
                    FunctionalitiesJ.initializeConnection();
                    String query="select * from login where user_id != '" + user_id + "' ";
                    Statement stmt=FunctionalitiesJ.connCS.createStatement();
                    ResultSet srs=stmt.executeQuery(query);
                    while(srs.next())
                    {
              
                       try
                       {
                           
                       String to_users = String.valueOf(srs.getInt("user_id"));
                       String new_message = "1";
                       String query1 = "select count (*) from chatmessage where from_user_id = '"+ to_users +"' "
                            + "and to_user_id = '" +user_id+ "' and status = '"+ new_message +"' ";
                       Statement stmt1=FunctionalitiesJ.connCS.createStatement();
                       ResultSet srs1 = stmt1.executeQuery(query1); 
                       while(srs1.next()){                      
                        int row_count = srs1.getInt(1);
                      
                            
                       if(row_count>0){
                       
                       
                        sb.append("<div class=\"card\">");
                        sb.append("<div class=\"card-body\" style=\"margin:20px\">");
                             if(row_count==1){
                                sb.append("<p class=\"card-text\">You have 1 new Messages from" + srs.getString("username") +"</p>");   
                              }else{
                                sb.append("<p class=\"card-text\">You have" + row_count + "New Messages from" + srs.getString("username") +"</p>");        
                              }
                
                        sb.append("<a onclick='viewChat(\"" + srs.getString("user_id")+ "\",\"" + srs.getString("username") + "\")' class=\"btn btn-primary\">Read Message</a>");
                        sb.append("</div>");
                        sb.append("</div>");
                  
                        }
                        }
                        srs1.close();
                        stmt1.close();
                        }catch(Exception e){
                            e.printStackTrace();
                        }
                        
                   
                   
                    }
                   
                  
                   
                    srs.close();
                    stmt.close();
                    FunctionalitiesJ.closeConnection();
                    }catch(Exception e){
                        e.printStackTrace();
                    }
                   
                     
               
                sb.append("<div class=\"card\">");
                sb.append("<div class=\"card-body\">");       
                sb.append(" <p class=\"card_text\" style=\"text-align: center;\">No New Notifications</p>");          
                sb.append("</div>");       
                sb.append("</div>");
         
        System.out.println("load_notifications : " + sb.toString());
        return sb.toString();
     }
     
     public static String LoadAndroidNotifications(){
        String Load_notifications = "";
        StringBuffer sb = new StringBuffer();
                          
                    try
                    {
                    String user_id = "2";
                    FunctionalitiesJ.initializeConnection();
                    String query="select * from login where user_id != '" + user_id + "' ";
                    Statement stmt=FunctionalitiesJ.connCS.createStatement();
                    ResultSet srs=stmt.executeQuery(query);
                    while(srs.next())
                    {
              
                       try
                       {
                           
                       String to_users = srs.getString("user_id");
                       String new_message = "1";
                       String query1 = "select count (*) from chatmessage where from_user_id = '"+ to_users +"' "
                            + "and to_user_id = '" +user_id+ "' and status = '"+ new_message +"' ";
                       Statement stmt1=FunctionalitiesJ.connCS.createStatement();
                       ResultSet srs1 = stmt1.executeQuery(query1); 
                       while(srs1.next()){                      
                        int row_count = srs1.getInt(1);
                      
                            
                       if(row_count>0){
                       
                       sb.append("<div class=\"list-group\">");
                       sb.append("<a onclick='viewChat(\"" + srs.getString("user_id")+ "\",\"" + srs.getString("username") + "\")' style=\"background-color:lightcyan;\" class=\"list-group-item list-group-item-action\">");
                       sb.append("<div class=\"d-flex w-100 justify-content-between\">");
                       sb.append("<h5 class=\"mb-1\">"+ srs.getString("username") +"</h5>"); 
                       sb.append(" <small><span class=\"badge badge-success\">"+ row_count +"</span></small>"); 
                       sb.append("</div>");
                       sb.append(""); 
                             if(row_count==1){                                     
                                sb.append("<p class=\"mb-1\">You have 1 New Message</p>");   
                             }else{
                                sb.append("<p class=\"mb-1\">You have "+ row_count +" New Messages</p>");                                     
                             }
                         
                        sb.append("</a>");
                        sb.append("</div>");
                        
                            }
                        
                        }
                        
                        srs1.close();
                        stmt1.close();
                        }catch(Exception e){
                            e.printStackTrace();
                        }
                        
                   
                   
                    }
                   
                  
                   
                    srs.close();
                    stmt.close();
                    }catch(Exception e){
                        e.printStackTrace();
                    }
                    
                    try{
                    String user_id1 = "2";
                    String query5="select * from login where user_id = '" + user_id1 + "' ";
                    Statement stmt5=FunctionalitiesJ.connCS.createStatement();
                    ResultSet srs5=stmt5.executeQuery(query5);
                    while(srs5.next())
                    {
                    
                    

                        try{
                            String old_message="1";
                            String query4 = "select count (*) from chatmessage where to_user_id = '" +user_id1+ "' and status = '"+ old_message +"' ";
                            Statement stmt4=FunctionalitiesJ.connCS.createStatement();
                            ResultSet srs4 = stmt4.executeQuery(query4); 
                            while(srs4.next()){ 
                            int row_count4 = srs4.getInt(1);
                            if(row_count4==0){
                      
                        
                        sb.append("<div class=\"card\">");
                        sb.append("<div class=\"card-body\">");   
                        sb.append("<p class=\"card_text\" style=\"text-align: center;\">No New Notifications</p>");       
                        sb.append("</div>");    
                        sb.append("</div>");
                              }
                            }
                            srs4.close();
                            stmt4.close();
                            }catch(Exception e){
                                e.printStackTrace();
                            }
                    }       
                    srs5.close();
                    stmt5.close();
                    FunctionalitiesJ.closeConnection();
                    }catch(Exception e){
                        e.printStackTrace();
                    }
                   
                     
                
        System.out.println("Load_notifications : " + sb.toString());
        return sb.toString();
     
     }
     
     public static String LoadAndroidNotificationsInHTMLFormat(){
        String Load_Notifications = "";
        StringBuffer sb = new StringBuffer();
                          
                                        
                    try
                    {
                    String user_id = "2";
                    FunctionalitiesJ.initializeConnection();
                    String query="select * from login where user_id = '" + user_id + "' ";
                    Statement stmt=FunctionalitiesJ.connCS.createStatement();
                    ResultSet srs=stmt.executeQuery(query);
                    while(srs.next())
                    {
              
                       try
                       {
                           
                       String to_users = String.valueOf(srs.getInt("user_id"));
                       String new_message = "1";
                       String query1 = "select count (*) from chatmessage where to_user_id = '" +user_id+ "' and status = '"+ new_message +"' ";
                       Statement stmt1=FunctionalitiesJ.connCS.createStatement();
                       ResultSet srs1 = stmt1.executeQuery(query1); 
                       while(srs1.next()){                      
                        int row_count = srs1.getInt(1);
                      
                            
                       if(row_count>0){
                       
                    
                             if(row_count==1){
                                     try
                                    {

                                    String to_users1 = String.valueOf(srs.getInt("user_id"));
                                    String new_message1 = "1";
                                    String query7 = "select count(*) from(select count (*) from chatmessage where to_user_id = '" +user_id+ "' and status = '"+ new_message +"' group by username) as chats";
                                    Statement stmt7=FunctionalitiesJ.connCS.createStatement();
                                    ResultSet srs7 = stmt7.executeQuery(query7); 
                                    while(srs7.next()){                      
                                     int row_count7 = srs7.getInt(1);
                                     if(row_count7==1){
                                 
                                     
                                       sb.append("You have 1 New Message from 1 Chat");
                                       sb.append("\n");
                                     }
                                    }
                        
                        

                                    srs7.close();
                                    stmt7.close();
                                    }catch(Exception e){
                                        e.printStackTrace();
                                    }}else{
                                     try
                                    {

                                    String to_users2 = srs.getString("user_id");
                                    String new_message2 = "1";
                                    String query8 = "select count(*) from(select count (*) from chatmessage where to_user_id = '" +user_id+ "' and status = '"+ new_message +"' group by username)as chats";
                                    Statement stmt8=FunctionalitiesJ.connCS.createStatement();
                                    ResultSet srs8 = stmt8.executeQuery(query8); 
                                    while(srs8.next()){                      
                                     int row_count8 = srs8.getInt(1);
                                                  
                                     if(row_count8==1){

               
                                      sb.append("You have "+row_count+" New Messages from 1 Chat");
                                      sb.append("\n");
                                      }else{
                                      sb.append("You have "+row_count+" New Messages from "+ row_count8 +" Chats");
                                      sb.append("\n");
                                     }
                                     }  
                                    srs8.close();
                                    stmt8.close();
                                    }catch(Exception e){
                                        e.printStackTrace();
                                    }
                                     }
                                     
                            
                            
                           }
                        
                        }
                        
                        srs1.close();
                        stmt1.close();
                        }catch(Exception e){
                            e.printStackTrace();
                        }
                        
                   
                   
                    }
                   
                  
                   
                    srs.close();
                    stmt.close();
                    }catch(Exception e){
                        e.printStackTrace();
                    }
                    
                    try{
                    String user_id1 = "2";
                    String query5="select * from login where user_id = '" + user_id1 + "' ";
                    Statement stmt5=FunctionalitiesJ.connCS.createStatement();
                    ResultSet srs5=stmt5.executeQuery(query5);
                    while(srs5.next())
                    {
                    
                    

                        try{
                            String old_message="1";
                            String query4 = "select count (*) from chatmessage where to_user_id = '" +user_id1+ "' and status = '"+ old_message +"' ";
                            Statement stmt4=FunctionalitiesJ.connCS.createStatement();
                            ResultSet srs4 = stmt4.executeQuery(query4); 
                            while(srs4.next()){ 
                            int row_count4 = srs4.getInt(1);
                            if(row_count4==0){
                      
                        
                                sb.append("No New Notifications");
                                sb.append("\n");
                            }
                            }
                            srs4.close();
                            stmt4.close();
                            }catch(Exception e){
                                e.printStackTrace();
                            }
                    }       
                    srs5.close();
                    stmt5.close();
                    FunctionalitiesJ.closeConnection();
                    }catch(Exception e){
                        e.printStackTrace();
                    }
                   
                     
                
                   
                     
                
        System.out.println("Load_Notifications : " + sb.toString());
        return sb.toString();
     
   }
     
   public static String loadMapInHTMLFormat(){
        String Load_Map = "";
        StringBuffer sb = new StringBuffer();
       
        sb.append("<div id='map'></div>");
        sb.append("<script>\n");
        sb.append("function initMap() {\n");
        sb.append("var map;\n");
        sb.append("var bounds = new google.maps.LatLngBounds();\n");
        sb.append("var mapOptions = {    mapTypeId: 'roadmap'};\n");
        sb.append(" map = new google.maps.Map(document.getElementById(\"map\"), mapOptions);\n");
        sb.append(" map.setTilt(50);\n");
        sb.append("var markers = [\n");
        
              try
                            {
                            FunctionalitiesJ.initializeConnection();
                            String query="select * from location";
                            Statement stmt=FunctionalitiesJ.connCS.createStatement();
                            ResultSet srs=stmt.executeQuery(query);
                            while(srs.next())
                            {
                        
        sb.append("['"+srs.getString("name") +"',"+ srs.getDouble("lat")+", "+ srs.getDouble("lng")+"],\n");        
                           
                            }
                            srs.close();
                            stmt.close();
                            FunctionalitiesJ.closeConnection();
                            }catch(Exception e){
                                e.printStackTrace();
                            }
   
            sb.append("];\n");
            sb.append(" var infoWindowContent = [\n");
            try
                            {
                            FunctionalitiesJ.initializeConnection();
                            String query1="select * from location";
                            Statement stmt1=FunctionalitiesJ.connCS.createStatement();
                            ResultSet srs1=stmt1.executeQuery(query1);
                            while(srs1.next())
                            {
                        
                sb.append("['<div class=\"info_content\" style=\"padding:10px;\">' +\n" +
"                '<h3>"+ srs1.getString("name") +"</h3>' +\n" +
"                '<p>"+ srs1.getString("address") + ".</p>' + '</div>'],\n"); 
                            }
                            srs1.close();
                            stmt1.close();
                            FunctionalitiesJ.closeConnection();
                            }catch(Exception e){
                                e.printStackTrace();
                            }
                       
            sb.append("];");
            sb.append("var infoWindow = new google.maps.InfoWindow(), marker, i;\n");
            sb.append("for( i = 0; i < markers.length; i++ ) {\n" +
"                var position = new google.maps.LatLng(markers[i][1], markers[i][2]);\n" +
"                bounds.extend(position);\n" +
"                marker = new google.maps.Marker({\n" +
"                    position: position,\n" +
"                    map: map,\n" +
"                    title: markers[i][0]\n" +
"                });");
            sb.append("google.maps.event.addListener(marker, 'click', (function(marker, i) {\n" +
"                    return function() {\n" +
"                        infoWindow.setContent(infoWindowContent[i][0]);\n" +
"                        infoWindow.open(map, marker);\n" +
"                    }\n" +
"                })(marker, i));");
            sb.append("  map.fitBounds(bounds);\n" +
"            }");
            sb.append(" var boundsListener = google.maps.event.addListener((map), 'bounds_changed', function(event) {\n" +
"                this.setZoom(14);\n" +
"                google.maps.event.removeListener(boundsListener);\n" +
"            });\n" +
"\n" +
"        }");
            sb.append("google.maps.event.addDomListener(window, 'load', initMap);\n");
            sb.append("</script>\n");      
        
        System.out.println("Load_Map : " + sb.toString());
        return sb.toString();
   }
     
     
   
}

    
    /*public static String GetUsernameInHTMLFormat(){
    String result="";
    StringBuffer sb = new StringBuffer();
                try{
                    
                    FunctionalitiesJ.initializeConnection();
                    Statement stmt=FunctionalitiesJ.connCS.createStatement();
                    String u= request.getParameter("u");
                    session.setAttribute("to_user_id",u);
                    int num = Integer.parseInt(u);
                    String query="select * from login where user_id='"+num+"' ";
                    ResultSet rs=stmt.executeQuery(query);
                    while(rs.next())
                    {
                           
                    sb.append("<h4 style='text-align:center;font-size:4;'>You have a chat with" +
                            rs.getString("username") + "</h4>");
              
           
                 }
                     FunctionalitiesJ.closeConnection();
                     result="success";
                
                }
                catch(Exception e)
                {
                     e.printStackTrace();
                     result="failure";
                } 
                System.out.println("result : " + sb.toString());
                return sb.toString();
    
    }
    
    public static String SendMessageToUserInHTMLFormat(){
       String send_message_html = "";
       StringBuffer sb = new StringBuffer();
                try{
                    
                    FunctionalitiesJ.initializeConnection();
                    Statement stmt=FunctionalitiesJ.connCS.createStatement();
                    String user_id = "2";
                    String username = "jamesk";
                    String u= request.getParameter("u");
                    int num = Integer.parseInt(u);
                    String query="select * from login where user_id='"+num+"' ";
                    ResultSet rs=stmt.executeQuery(query);
                    while(rs.next()){
           
                    sb.append("<form name='F2' method='post' action=''  style='margin:20px'>");
                    sb.append("<div class='form-group'>");
                    sb.append("<input type='hidden' name='to_user_id' id='to_user_id' value='"+ rs.getString("user_id")+"'/>");    
                    sb.append("</div>");
                    sb.append("<div class='form-group'>");
                    sb.append("<input type='hidden' name='username_log' id='username_log' value='" + username + "'/>");   
                    sb.append("</div>");
                    sb.append("<div class='form-group'");
                    sb.append(" <input type='hidden' name='from_user_id' id='from_user_id' value='"+ user_id +"'/>");   
                    sb.append("</div>");
                    sb.append("<div class='form-group' style='margin:20px'>");
                    sb.append("<textarea class='form-control' name='chat_message' id='chat_message' rows='3' "
                            + "placeholder='Insert a new message' required></textarea>"); 
                    sb.append("<button type='submit' class='btn btn-primary' style='width: 100px; margin-left: 20px; margin-top: 5px'>Send</button>");    
                    sb.append("</div> ");     
                            
           
                }
    
                
                FunctionalitiesJ.closeConnection();
                
                }
                catch(Exception e)
                {
                     e.printStackTrace();
                } 
    
    }*/