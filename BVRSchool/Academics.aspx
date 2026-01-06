<%@ Page Title="About" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Academics.aspx.vb" Inherits="BVRSchool.Academics" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main class="main">

    <!-- Academics Section -->
    <section id="about" class="about section">

      <div class="container" data-aos="fade-up" data-aos-delay="100">

        <div class="row justify-content-center mb-5">
          <div class="col-lg-8 text-center" data-aos="fade-up" data-aos-delay="200">
            <h2 class="section-heading">Academics</h2>
            <p class="lead">At BVR SCHOOL, we believe that strong academics form the foundation for lifelong learning and success. Our academic program is designed
                to challenge students, nurture curiosity, 
                and develop critical thinking skills while fostering creativity and confidence..</p>
          </div>
        </div>

        <div class="row g-4 mb-5">
          <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="100">
            <div class="feature-box">
              <div class="icon-container">
                <i class="bi bi-lightbulb"></i>
              </div>
              <h4>Innovation</h4>
              <p>Innovation in every classroom, inspiration in every student.</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="200">
            <div class="feature-box">
              <div class="icon-container">
                <i class="bi bi-graph-up-arrow"></i>
              </div>
              <h4>Growth</h4>
              <p>From small beginnings to great achievements, we grow together.</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="300">
            <div class="feature-box">
              <div class="icon-container">
                <i class="bi bi-shield-check"></i>
              </div>
              <h4>Integrity</h4>
              <p>Knowledge builds the mind, integrity shapes the soul.</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="400">
            <div class="feature-box">
              <div class="icon-container">
                <i class="bi bi-people-fill"></i>
              </div>
              <h4>Stronger relations</h4>
              <p>Where teachers, students, and families grow together at BVR School.</p>
            </div>
          </div>
        </div>

        <div class="row align-items-center about-showcase">
          <div class="col-lg-6 order-lg-2" data-aos="fade-left" data-aos-delay="300">
            <div class="about-image-grid">
              <img src="assets/img/about/about-15.webp" class="img-grid-main" alt="Our company vision">
              <img src="assets/img/about/about-17.webp" class="img-grid-secondary" alt="Our team">
              <img src="assets/img/about/about-square-5.webp" class="img-grid-tertiary" alt="Our workspace">
              <div class="experience-badge" data-aos="zoom-in" data-aos-delay="500">
                <span class="years">15+</span>
                <span class="text">Years of Excellence</span>
              </div>
            </div>
          </div>
          <div class="col-lg-6 order-lg-1" data-aos="fade-right" data-aos-delay="200">
            <div class="about-content-box">
              <h3>Transforming Businesses Since some years</h3>
              <p class="mb-4">VcloudNexpert offers assistance in defining corporate diversity objectives and programs that support consistent year over year supplier development.
                EIT is an equal opportunity employer.</p>

              <div class="progress-item  progress-bar-striped">
                <div class="d-flex justify-content-between ">
                  <span class="progress-title ">Strategic Planning</span>
                  <span class="progress-percent">94%</span>
                </div>
                <div class="progress">
                  <div class="progress-bar progress-bar-striped" role="progressbar" style="width: 94%" aria-valuenow="94" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
              </div>

              <div class="progress-item">
                <div class="d-flex justify-content-between">
                  <span class="progress-title">Business Development</span>
                  <span class="progress-percent">87%</span>
                </div>
                <div class="progress">
                  <div class="progress-bar progress-bar-striped" role="progressbar" style="width: 87%" aria-valuenow="87" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
              </div>

              <div class="progress-item">
                <div class="d-flex justify-content-between">
                  <span class="progress-title">Market Research</span>
                  <span class="progress-percent">92%</span>
                </div>
                <div class="progress">
                  <div class="progress-bar progress-bar-striped" role="progressbar" style="width: 92%" aria-valuenow="92" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
              </div>

              <a href="about.html" class="btn btn-discover mt-4">Learn More About Us</a>
            </div>
          </div>
        </div>

      </div>

    </section><!-- /Academics Section -->

  </main>

</asp:Content>
