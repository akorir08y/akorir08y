<%-- 
    Document   : member_register
    Created on : 11-Oct-2019, 14:54:03
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
        <h3 style="text-align: center;margin-top:10px;">Member Register</h3>
        <div id="content_provider">
            <div class="alert alert-success" role="alert" style="text-align: center;">Add New Member</div>

            <ul class="nav nav-tabs">
            <li class="nav-item">
              <a onclick="viewMemberRegister()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">Add New Member</a>
            </li>
            <li class="nav-item">
              <a onclick="viewMembers()" style="background-color: lightcyan;" class="nav-link active" href="#content_provider">View Members</a>
            </li>
            <li class="nav-item">
              <a onclick="fetch()" style="background-color: lightcyan;" class="nav-link active" href="#content">Close</a>
            </li>
            </ul>
            
            <form method="post" style="margin:10px;padding:10px;" action="new_customer_invoice.jsp">
                <div class="alert alert-success" role="alert" style="text-align: center;">
                Member Information
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputCity">First Name</label>
                       <input type="text" class="form-control" name="member_first_name" id="member_first_name" placeholder="First Name">
                        </div>
                    <div class="form-group col-md-6">
                       <label for="inputCity">Middle Name</label>
                       <input type="text" class="form-control" name="member_middle_name" id="member_middle_name" placeholder="Middle Name">

                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputCity">Surname</label>
                       <input type="text" class="form-control" name="member_surname" id="member_surname" placeholder="Surname">
                        </div>
                    <div class="form-group col-md-6">
                       <label for="inputCity">ID/Passport</label>
                       <input type="text" class="form-control" name="member_id" id="member_id" placeholder="ID/Passport">

                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputCity">Date of Birth</label>
                        <input type="text" class="form-control" name="member_date_of_birth" id="member_date_of_birth" placeholder="Date of birth">
                    </div>
                    <div class="form-group col-md-6">
                       <label for="inputCity">Date of Entry</label>
                       <input type="text" class="form-control" name="member_date_of_entry" id="member_date_of_entry" placeholder="Date of Entry">

                    </div>
                </div>
                <div class="alert alert-success" role="alert" style="text-align: center;">
                Member Contact Information
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputCity">Branch</label>
                       <input type="text" class="form-control" name="member_branch" id="member_branch" placeholder="Branch ">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputCity">Member Mobile Number</label>
                       <input type="text" class="form-control" name="member_mobile_number" id="member_mobile_number" placeholder="Member Mobile Number">
                    </div>
                </div>
               <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputCity">Postal Address</label>
                       <input type="text" class="form-control" name="member_address" id="member_address" placeholder="Postal Address">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputCity">Residence</label>
                       <input type="text" class="form-control" name="member_residence" id="member_residence" placeholder="Residence">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputCity">WorkPlace</label>
                       <input type="text" class="form-control" name="member_workplace" id="member_workplace" placeholder="WorkPlace">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputCity">Town</label>
                       <input type="text" class="form-control" name="member_town" id="member_town" placeholder="Town">
                    </div>
                </div>                
                <div class="alert alert-success" role="alert" style="text-align: center;">
                    Next of Kin Information
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputCity">First Name</label>
                       <input type="text" class="form-control" name="kin_first_name" id="kin_first_name" placeholder="First Name">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputCity">Surname</label>
                       <input type="text" class="form-control" name="kin_surname" id="kin_surname" placeholder="Surname">
                    </div>
                </div>  
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputCity">Middle Name</label>
                       <input type="text" class="form-control" name="kin_middle_name" id="kin_middle_name" placeholder="Middle Name" >
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputCity">Relationship</label>
                       <input type="text" class="form-control" name="kin_relationship" id="kin_relationship" placeholder="Relationship ">
                    </div>
                </div> 
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputCity">Mobile Number</label>
                       <input type="text" class="form-control" name="kin_mobile_number" id="kin_mobile_number" placeholder="Mobile Number">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputCity">Postal Address</label>
                       <input type="text" class="form-control" name="kin_address" id="kin_address" placeholder="Postal Address ">
                    </div>
                </div> 
                
                 <div class="alert alert-success" role="alert" style="text-align: center;">
                    Introducer Member Information
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputCity">Introducer Member Registration Number</label>
                        <input type="text" class="form-control" name="introducer_registration_number" id="introducer_registration_number" placeholder="Introducer Reg No">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputCity">Serving Agent</label>
                        <input type="text" class="form-control" name="serving_agent" id="serving_agent" placeholder="Serving Agent">
                    </div>
                </div>
                <div class="alert alert-success" role="alert" style="text-align: center;" onclick="introducerInfo()">
                    Introducer Member Additional Information
                </div>
                <div id="introducer_info">
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputCity">Introducer Member Name</label>
                           <input type="text" class="form-control" name="introducer_name" id="introducer_name" placeholder="Introducer Name">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputCity">Introducer Member Mobile Number</label>
                           <input type="text" class="form-control" name="introducer_mobile" id="introducer_mobile" placeholder="Introducer Mobile Number">
                        </div>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Save New Member</button>
               <%
            try{
                String member_first_name = request.getParameter("member_first_name").toUpperCase();
                String member_middle_name = request.getParameter("member_middle_name");
                String member_surname = request.getParameter("member_surname");
                String member_mobile = request.getParameter("member_mobile_number");
                String member_address = request.getParameter("member_address");
                String member_residence = request.getParameter("member_residence");
                String member_town = request.getParameter("member_town");
                String member_branch = request.getParameter("member_branch").toUpperCase();
                String member_identification = request.getParameter("member_id");
                String member_workplace = request.getParameter("member_workplace");
                String kin_first_name = request.getParameter("kin_first_name");
                String kin_middle_name = request.getParameter("kin_middle_name");
                String kin_surname = request.getParameter("kin_surname");
                String kin_relationship = request.getParameter("kin_relationship");
                String kin_address = request.getParameter("kin_address");
                String kin_mobile = request.getParameter("kin_mobile");
                String date_of_birth = request.getParameter("member_date_of_birth");
                String introducer_reg_no = request.getParameter("introducer_registration_number");
                String introducer_full_name = request.getParameter("introducer_name");
                String introducer_mobile = request.getParameter("introducer_mobile");
                String serving_agent = request.getParameter("serving_agent");
                String date_of_entry = request.getParameter("member_date_of_entry");
                

                SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
                Date startDate = df.parse(date_of_entry);

                java.sql.Date transaction_date = new java.sql.Date(startDate.getTime());
                FunctionalitiesJ.initializeConnection();            
                String result = FunctionalitiesJ.addMember(member_first_name, member_middle_name, member_surname,
                        member_mobile, member_address, member_residence, member_town, member_branch, 
                        member_identification, member_workplace, date_of_birth, kin_first_name, kin_middle_name,
                        kin_surname, kin_relationship, kin_address, kin_mobile, introducer_reg_no, introducer_full_name, 
                        introducer_mobile, serving_agent, String.valueOf(transaction_date));
                FunctionalitiesJ.closeConnection();
                if(result.equals("success")){
                    response.sendRedirect("mainframe.jsp?function_name=newMember");
                }else if(result.equals("failure")){

                }
             }catch(Exception e){
                e.printStackTrace();
            }
            
            
            %> 
            </form>
 
        </div>
    </body>
</html>
