<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
       <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>

table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}


 input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
 

.button {
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}

.button1 {
  background-color: white; 
  color: black; 
  border: 2px solid #4CAF50;
}

.button1:hover {
  background-color: #4CAF50;
  color: white;
}

.button2 {
  background-color: white; 
  color: black; 
  border: 2px solid #008CBA;
}

.button2:hover {
  background-color: #008CBA;
  color: white;
}
</style>
    <meta charset="utf-8">
    <meta charset="ISO-8859-1">
    <title>SALRO UNIVERSITY </title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans&family=Nunito:wght@600;700;800&display=swap" rel="stylesheet"> 

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Flaticon Font -->
    <link href="lib/flaticon/font/flaticon.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <!-- Topbar Start -->
     
            </div>
            <div class="col-lg-6 text-center text-lg-right">
                <div class="d-inline-flex align-items-center">
                    <a class="text-white px-3" href="">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a class="text-white px-3" href="">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a class="text-white px-3" href="">
                        <i class="fab fa-linkedin-in"></i>
                    </a>
                    <a class="text-white px-3" href="">
                        <i class="fab fa-instagram"></i>
                    </a>
                    <a class="text-white pl-3" href="">
                        <i class="fab fa-youtube"></i>
                    </a>
                </div>
            </div>
        </div>
        <div class="row py-3 px-lg-5">
            <div class="col-lg-4">
                <a href="" class="navbar-brand d-none d-lg-block">
                    <h1 class="m-0 display-5 text-capitalize"><span class="text-primary">SALRO  </span>  UNIVERSITY</h1>
                </a>
            </div>
             
                </div>
            </div>
        </div>
    </div>
    <!-- Topbar End -->


    <!-- Navbar Start -->
    <div class="container-fluid p-0">
        <nav class="navbar navbar-expand-lg bg-dark navbar-dark py-3 py-lg-0 px-lg-5">
            <a href="" class="navbar-brand d-block d-lg-none">
                <h1 class="m-0 display-5 text-capitalize font-italic text-white"><span class="text-primary">SALRO  </span> UNIVERSITY</h1>
            </a>
            <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-between px-3" id="navbarCollapse">
                <div class="navbar-nav mr-auto py-0">
                    <a href=" " class="nav-item nav-link">Home</a>
                    <a href=" " class="nav-item nav-link">About</a>
                     
                    <a href=" " class="nav-item nav-link">Contact</a>
                     
                    
                    <a href="contact.html" class="nav-item nav-link active">Student</a>
                </div>
                <a href="" class="btn btn-lg btn-primary px-3 d-none d-lg-block"> LOG OUT</a>
            </div>
        </nav>
    </div>
    <!-- Navbar End -->


    <!-- Contact Start -->
    <div class="container-fluid pt-5">
        <div class="d-flex flex-column text-center mb-5 pt-5">
            <h4 class="text-secondary mb-3">Student</h4>
            <h1 class="display-4 m-0"> Add Student  Groups  
        </div>
        <div class="row justify-content-center">
            <div class="col-12 col-sm-8 mb-5">
                <div class="contact-form">
                    <div id="success"></div>
                    
             
        <c:forEach var="grp" items ="${Group_Details}">
                                    
                                      <c:set var="id" value ="${grp.group_id}"/>
                                    <c:set var="a_y_s" value =" ${grp.academic_year_semester} "/>
                                    <c:set var="s_id" value ="${grp.student_id}"/>
                                    <c:set var="pro" value ="${grp.programme}"/>
                                    <c:set var="gr_nu" value ="${grp.group_number}"/>
                                    <c:set var="su_gru_num" value ="${grp.sub_group_number}"/>
                                    <c:set var="cl_gr_id" value ="${grp.class_group_id}"/>
                                    <c:set var="s_g_id" value =" ${grp.sub_group_id}"/>
                                    
                                     
                                         
                              <table >      
                                    
                                    <tr>
                                    <td>Payment ID  </td>
                                    <td>${grp.group_id} </td>
                                    </tr>
                                    
                                      <tr>
                                    <td>Product Name </td>
                                    <td> ${grp.academic_year_semester} </td>
                                    </tr>
                                    
                                      <tr>
                                    <td>Product Price </td>
                                    <td> ${grp.student_id} </td>
                                    </tr>
                                    
                                      <tr>
                                    <td>Product type   </td>
                                    <td> ${grp.programme} </td>
                                    </tr>
                                    

                                    
                                      <tr>
                                    <td> Number Of Product</td>
                                    <td> ${grp.group_number} </td>
                                    </tr>
                                    
                                      <tr>
                                    <td>Product Location</td>
                                    <td>  ${grp.sub_group_number}</td>
                                    </tr>
                                    
                                      <tr>
                                    <td>Supplyer ID </td>
                                    <td>${grp.class_group_id} </td>
                                    </tr>
                                    
                                     <tr>
                                    <td>Product Discription</td>
                                    <td>  ${grp.sub_group_id} </td>
                                    </tr>
                                    
                                     
      								 </table>                             
                                    </c:forEach>
                                    
                                    
                                     
                                                    
                         <c:url value="Update_student.jsp" var="update">          	
    					  
    					  <c:param name ="ID" value="${id}"/>
    					  <c:param name ="A_Y_S" value="${a_y_s}"/>		
    					  <c:param name ="S_ID" value="${s_id}"/>
    					  <c:param name ="PRO" value="${pro}"/>
    					  <c:param name ="GR_NU" value="${gr_nu}"/>
    					  <c:param name ="SU_GRU_NUM" value="${su_gru_num}"/>
    					  <c:param name ="CL_GR_ID" value="${cl_gr_id}"/>
    					  <c:param name ="S_G_ID" value="${s_g_id}"/>
    					   
    					  
    					   
    					  
    					</c:url>     
    					 <c:url value="Delete_student.jsp" var="delete">          	
    					  
    					  <c:param name ="ID" value="${id}"/>
    					  <c:param name ="A_Y_S" value="${a_y_s}"/>		
    					  <c:param name ="S_ID" value="${s_id}"/>
    					  <c:param name ="PRO" value="${pro}"/>
    					  <c:param name ="GR_NU" value="${gr_nu}"/>
    					  <c:param name ="SU_GRU_NUM" value="${su_gru_num}"/>
    					  <c:param name ="CL_GR_ID" value="${cl_gr_id}"/>
    					  <c:param name ="S_G_ID" value="${s_g_id}"/>
    					   
    					  
    					   
    					  
    					</c:url>            
                                    
               
       	<a href="${update}">
        <input class="button button1" type="button" name="update" value="UPDATE">
		</a>
		     
		<a href ="${delete}">
        <input  class="button button2" type="button" name="update" value="Delete">
		</a>          
                                    
       
        
                </div>
            </div>
            
        </div>
    </div>
    <!-- Contact End -->

 
</body>

</html>