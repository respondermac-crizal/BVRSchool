<%@ Page Title="Contact" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.vb" Inherits="BVRSchool.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main class="main">
    <!-- Contact Section -->
    <section id="contact" class="contact section">
      <!-- Section Title -->
      <div class="container section-title" data-aos="fade-up">
        <h2>Contact</h2>
        <p>B.V.R EDUCATION TRUST  our deep domain experience, staffing expertise and efficient processes, we provide placement, 
          temporary staffing and IT solutions to our customers.</p>
      </div><!-- End Section Title -->

      <div class="container" data-aos="fade-up" data-aos-delay="100">
        <div class="contact-main-wrapper">
          <div class="map-wrapper">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3890.123456789!2d76.123456!3d16.123456!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bcb123456789%3A0xabcdef123456!2sBVR+School,+Manvi!5e0!3m2!1sen!2sin!4v1749994079639!5m2!1sen!2sin" 
                width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

          </div>

          <div class="contact-content">
            <div class="contact-cards-container" data-aos="fade-up" data-aos-delay="300">
              <div class="contact-card">
                <div class="icon-box">
                  <i class="bi bi-geo-alt"></i>
                </div>
                <div class="contact-text">
                  <h4>Location</h4>
                  <p>BVR School, Near Bus Depot, Canel Road, Near K.S.R.T.C,
                    Manvi, Karnataka, India - 584123</p>
                </div>
              </div>

              <div class="contact-card">
                <div class="icon-box">
                  <i class="bi bi-envelope"></i>
                </div>
                <div class="contact-text">
                  <h4>Email:</h4>
                  <p>info@bvrschool.in</p>
                  <p>hr@bvrschool.com</p>
                </div>
              </div>

              <div class="contact-card">
                <div class="icon-box">
                  <i class="bi bi-telephone"></i>
                </div>
                <div class="contact-text">
                  <h4>Call:</h4>
                  <p>+91 9916001410</p>
                </div>
              </div>

              <div class="contact-card">
                <div class="icon-box">
                  <i class="bi bi-clock"></i>
                </div>
                <div class="contact-text">
                  <h4>Open Hours</h4>
                  <p>Monday-Friday: 10AM - 7PM</p>
                </div>
              </div>
            </div>

            <div class="contact-form-container" data-aos="fade-up" data-aos-delay="400">
              <h3>Get in Touch</h3>
              <p> is an award winning consulting IT recruitment management and staffing organization.
                 We serve clients from various geographies with our dedicated team of professionals in  India. </p>

              <form action="forms/contact.php" method="post" class="php-email-form">
                <div class="row">
                 

                <div class="form-submit">
                 <!-- <button type="submit">Send Message</button>-->
                  <div class="social-links">
                    <a href="https://x.com/VcloudXpert"><i class="bi bi-twitter"></i></a>
                    <a href="https://www.facebook.com/"><i class="bi bi-facebook"></i></a>
                    <a href="https://www.instagram.com//"><i class="bi bi-instagram"></i></a>
                    <a href="https://www.linkedin.com/company/"><i class="bi bi-linkedin"></i></a>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </section><!-- /Contact Section -->

  </main>
</asp:Content>
