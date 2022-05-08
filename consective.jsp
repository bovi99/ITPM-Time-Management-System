<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
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
  padding: 8px 16px;
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
<style>
body  {
  background-image: url("C:/Users/LENOVO/eclipse-workspace/IT20196288-Subasinghe B.N.W/Solro_university/src/main/webapp/img/itpm1.jpg");

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
                     <a href="contact.html" class="nav-item nav-link active">Session</a>
                    
                     <a href="contact.html" class="nav-item nav-link ">Student</a>
                </div>
                <a href="" class="btn btn-lg btn-primary px-3 d-none d-lg-block"> LOG OUT</a>
            </div>
        </nav>
    </div>
    <!-- Navbar End -->


    <!-- Contact Start -->
    <div class="container-fluid pt-5">
        <div class="d-flex flex-column text-center mb-5 pt-5">
            
            <h1 class="text-primary mb-3">Sessions & Not Available Time Allocations
        </div>
        <div class="row justify-content-center">
            <div class="col-12 col-sm-8 mb-5">
                <div class="contact-form">
                    <div id="success"></div>
                                       
     <center>               
                            
       	<a href="sessions.jsp">
       
        <input class="button button1" type="button" name="update" value="Sessions">
		</a>
		     
		<a href ="consective.jsp ">
        <input class="btn btn-primary btn-lg" type="button" name="update" value="Consective">
		</a>    
		
		        
       	<a href="parallel.jsp">
        <input class="button button1" type="button" name="update" value="Parallel">
		</a>
		     
		<a href ="non overlapping.jsp">
        <input class="button button1" name="update" value="Non Overlaping">
		</a>    
                 <a href ="home.jsp">
        <input class="button button1" type="button" name="update" value="Non-Available Time Allocations">
		</a>     
            </center>  
                    
                    
                      <form action="add" method="post"  >
        
            <label for="name">  ID <span>*</span></label><br/>
            <input type="text" name="aes" id="name" value="" size="22" required><br/><br/>

           

          
            <label for="text">   Lecture 1 <span>*</span></label><br/>
            <input type="text" name="sid" id="email" value="" size="22" required><br/>
<br/>

          
           
            <label for="name"> Lecture 2  <span>*</span></label><br/>
            <input type="text" name="pro" id="name" value="" size="22" required><br/><br/>
<br/>

           
         
          <label for="name"> Subject Code   <span>*</span></label><br/>
            <input type="text" name="gnu" id="name" value="" size="22" required><br/><br/>
<br/>

          
           
            <label for="name"> Subject<span>*</span></label><br/>
            <input type="text" name="sgn" id="name" value="" size="22" required><br/><br/>
<br/>

           
          
            <label for="name">   Group ID <span>*</span></label><br/>
            <input type="text" name="gid" id="name" value="" size="22" required><br/><br/>
<br/>


           <label for="name">   Tag   <span>*</span></label><br/>
            <input type="text" name="sgi" id="name" value="" size="22" required><br/><br/>
<br/>

   
          
         
	<a href="parallel.jsp">
            <input class="button button1" type="submit" name="submit" value="Add Consective">
            </a>
            &nbsp;
            <input class="button button2" type="reset" name="reset" value="RESET FORM">
          </div>
        </form>
                </div>
            </div>
            
        </div>
    </div>
    <!-- Contact End -->

 
</body>

</html>