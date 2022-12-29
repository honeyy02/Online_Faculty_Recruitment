<%@include file="recruiterheader.jsp" %>
<%@page import="dao.recruiterdao" %>
<%@page import="dto.recruiterdto" %>

    <!-- ======= Contact Section ======= -->
    <section style="margin-top: 100px;" id="contact" class="contact">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Add Vacancy</h2>
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
                <form action="recruiter_add_vacancy_db.jsp">
              <div class="row">
           <p style="font-size:18px;">Post
               <br>
            <select style="font-size:18px;height:30px; width:500px;" required name="post">
             <option value="">Select Post</option>
             <option value="Assistant Professor">Assistant Professor</option>
             <option value="Associate Professor">Associate Professor</option>
             <option value="Principal">Principal</option>
             <option value="Mathematics Teacher">Mathematics Teacher</option>
             <option value="Primary Teacher">Primary Teacher</option>
            
            </select></p>
     
           <p style="font-size:18px;">Subjects
               <br>
            <select required style="font-size:18px;height:30px; width:500px;" name="subject">
             <option value="">Select Subject</option>
             <option value="IT Subjects">IT Subjects</option>
             <option value="CS Subjects">CS Subjects</option>
             <option value="EC">EC</option>
             <option value="Mathematics">Mathematics</option>
             <option value="All Subjects">All Subjects</option>
             <option value="Others">Others</option>
  
            </select></p>
    
            <p style="font-size:18px;">Enter Location<br>
    <input required style="font-size:18px;height:30px; width:500px;" type="text" name="location" placeholder="Enter Location">
         </p>
         
         <p style="font-size:18px;">Criteria<br>
            <select required style="font-size:18px;height:30px; width:500px;" name="criteria">
             <option value="">Select Qualification</option>
             <option value="B.com">B.com</option>
             <option value="BCA">BCA</option>
             <option value="BE">BE</option>
             <option value="MCA">MCA</option>
             <option value="MBA">MBA</option>
            </select></p>
     
    
            <p style="font-size:18px;">Enter Number of Vacancy<br>
    <input required style="font-size:18px;height:30px; width:500px;" type="number" name="vacancy" placeholder="Enter No. of Vacancy">
            </p>
            
            <p style="font-size:18px;">Enter Salary<br>
    <input required style="font-size:18px;height:30px; width:500px;" type="text" name="salary" placeholder="Enter Salary">
            </p>
            
            <p style="font-size:18px;">Enter Advertising Date<br>
                <input required style="font-size:18px;height:30px; width:500px;" type="date" name="advdate"></p>

            <p style="font-size:18px;">Enter Last Date to Apply<br>
                <input required style="font-size:18px;height:30px; width:500px;" type="date" name="lastdate"></p>
    
            <p style="font-size:18px;">Recruiter Email<br>

<input readonly value="<%=email%>" style="font-size:18px;height:30px; width:500px;" required type="email" name="email"  placeholder="Enter Email">
            </p>
<%
    recruiterdao dao = new recruiterdao();
    recruiterdto obj = dao.getTypeName(email);
%>
<p style="font-size:18px;">Recruiter Type<br>
    
<input readonly value="<%= obj.getRecruiter_type() %>" style="font-size:18px;height:30px; width:500px;" required type="text" name="recruiter" placeholder="Enter Recruiter Type">
</p>
<p style="font-size:18px;">Recruiter Name<br>
<input readonly value="<%= obj.getName() %>" style="font-size:18px;height:30px; width:500px;" required type="text" name="recruitername"  placeholder="Enter Recruiter Name">
</p>
            <br>
            <input style="font-size:18px;height:30px; width:500px;" type="submit" value="Add Vacancy">
           
            
           </form>  
            <br>
              </div>
                  </div>
                  
                  
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