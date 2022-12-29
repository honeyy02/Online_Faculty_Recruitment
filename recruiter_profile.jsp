<%@page import="dao.recruiterdao" %>
<%@page import ="dto.recruiterdto" %>

  <!-- ======= Header ======= -->
  <!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
<script type = "text/javascript" >  
    function preventBack() { window.history.forward(); }  
    setTimeout("preventBack()", 0);  
    window.onunload = function () { null };  
</script> 
  <title>Arsha Bootstrap Template - Index</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Arsha - v4.3.0
  * Template URL: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header style="background-color: #06357a" id="header" class="fixed-top ">
    <div class="container d-flex align-items-center">

        <h1 class="logo me-auto"><a style="font-size:20px;" href="index.html">Recruiter Panel | 
          <%
              String email = (String)session.getAttribute("email");
          %>
          <%=email%>
          </a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto active" href="adminhome.jsp">Home</a></li>
          <li><a class="nav-link scrollto" href="recruiter_profile.jsp">Profile</a></li>
          <li><a class="nav-link scrollto" href="addvacancy.jsp">Add Vacancy</a></li>
          <li><a class="nav-link scrollto" href="#services">Vacancy</a></li>
         <li><a class="nav-link scrollto" href="applied_candidate.jsp">Applied Candidate</a></li>
          <li><a class="nav-link scrollto" href="#team">De-Activate Account</a></li>
          <li><a class="nav-link scrollto" href="logout.jsp">Logout</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->




    <!-- ======= Contact Section ======= -->
    <section style="margin-top: 30px;" id="contact" class="contact">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Recruiter Profile </h2>
          <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
        </div>

        <div class="row">

          <div class="col-lg-5 d-flex align-items-stretch">
            <div class="info">
              <div class="address">
                <i class="bi bi-geo-alt"></i>
                <h4>Location:</h4>
                <p>Vijaynagar Indore, Madhya Pradesh, India 535022</p>
              </div>

              <div class="email">
                <i class="bi bi-envelope"></i>
                <h4>Email:</h4>
                <p>info@example.com</p>
              </div>

              <div class="phone">
                <i class="bi bi-phone"></i>
                <h4>Call:</h4>
                <p>+1 5589 55488 55s</p>
              </div>

            </div>

          </div>

          <div class="col-lg-7 mt-5 mt-lg-0 d-flex align-items-stretch">
            <form action="update_recruiter.jsp" >
              <div class="row">
                <% 
                   recruiterdao dao = new recruiterdao();
                   recruiterdto obj = dao.getdetails(email);
                %>
   
            <p> Name <br>
                <input class="col-md-12"  value="<%= obj.getName() %>" required type="text" name="name" placeholder="Enter Proper Name">
            </p>
            <p>Recruiter Type <br>
                <select class="col-md-12" style="height:40px;"  required name="recruiter_type">
             <option><%= obj.getRecruiter_type()%></option>
             <option value="school">School</option>
             <option value="college">College</option>
             <option value="institute">Institute</option>
            </select>
            </p>
            
            <p> Email<br>
                <input class="col-md-12" readonly value="<%=email%>" required type="email" name="email" placeholder="Enter Email">
           </p>
           
           <p> Password<br>
            <input class="col-md-12" value="<%= obj.getPassword()%>" required type="text" name="password" placeholder="Enter Password">
           </p>
           
            <p> Contact<br>
            <input class="col-md-12" value="<%= obj.getContact()%>" required type="text" name="contact" placeholder="Enter Contact">
            </p>
  
            <p> Address<br>
            <input class="col-md-12" value="<%= obj.getAddress()%>" required type="text" name="address" placeholder="Enter Address">
            </p>
            
            <p> Status <br>
            <input class="col-md-12" readonly value="<%= obj.getStatus()%>" required type="text" name="address" placeholder="Enter Address">
            </p>
            
            <br>
             <div class="text-center">
                 <button type="submit">Update Profile</button></div>
               
              </div>
            </form>
          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->

  <!-- ======= Footer ======= -->
  <footer id="footer">


    <div class="container footer-bottom clearfix">
      <div class="copyright">
        &copy; Copyright <strong><span>Faculty Recruitment System</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/ -->
        Designed by <a href="https://bootstrapmade.com/">Advance batch</a>
      </div>

    
    
    </div>
  </footer><!-- End Footer -->

  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/waypoints/noframework.waypoints.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>