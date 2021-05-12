<%-- 
    Document   : index
    Created on : Mar 7, 2020, 9:46:47 AM
    Author     : Hardik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!--Import Google Icon Font-->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="materialize/css/materialize.min.css" rel="stylesheet" type="text/css"/>
        <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>JSP Page</title>
    </head>
    <body>
        <nav class="teal">
        <div class="nav-wrapper container">
            <a class="brand-logo">Pharmacy Management System</a>
            <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
            <ul class="right hide-on-med-and-down">
              <li><a href="index.html">Home</a></li>
              <li><a href="#">Services</a></li>
              <li><a href="gallery.html" class="scrollspy">Gallery</a></li>
              <li><a href="about_us.html">About</a></li>
              <li><a href="contact_us.html">Contact Us</a></li>
            </ul>
        </div>
      <!--For Small Screen(Sidenav)-->
      </nav>
      <ul class="sidenav" id="mobile-demo">
        <li><a href="#">Home</a></li>
        <li><a href="#">Services</a></li>
        <li><a href="gallery.html" class="scrollspy">Gallery</a></li>
        <li><a href="about_us.html">About</a></li>
        <li><a href="contact_us.html">Contact Us</a></li>
      </ul>
        <img src="care.jpg" >
    
        
        
        
        <h1 class="center-align">Login As</h1><hr>   
        <!--Card @1-->
      <div class="row">
        <div class="col s12 m6 l3">
          <div class="card hoverable">
            <div class="card-image">
              <img src="admin1.png" class="responsive-img">
                <span class="card-title">Administrator</span>
                  
            </div>
           
            <div class="card-action">
              <a href="admin.jsp" class="blue-text">Administrator Login</a>
            </div>
          </div>
        </div>  
      <!--Card @2-->
        <div class="col s12 m6 l3">
          <div class="card hoverable">
            <div class="card-image">
              <img src="manager.png" class="responsive-img">
                <span class="card-title">Manager</span>
                  
            </div>
            
            <div class="card-action">
              <a href="manager.jsp" class="blue-text">Click here to Login</a>
            </div>
          </div>
        </div> 
        
      <!--Card @3-->
        <div class="col s12 m6 l3">
          <div class="card hoverable">
            <div class="card-image">
              <img src="cashier.jpg" class="responsive-img">
                <span class="card-title">Cashier</span>
                  
            </div>
            
            <div class="card-action">
              <a href="cashier.jsp" class="blue-text">Click here to Login</a>
            </div>
          </div>
        </div>
      <div class="col s12 m6 l3">
          <div class="card hoverable">
            <div class="card-image">
              <img src="pharma.png" class="responsive-img">
                <span class="card-title">Pharmacist</span>                 
            </div>
            <div class="card-action">
              <a href="pharma.jsp" class="blue-text">Click to Login</a>
            </div>
          </div>
        </div>  
      </div>
      <div class="row">
        <div class="col s12 m6 l2"></div>
        <div class="col s12 m6 l4">
            <div class="card hoverable">
                <div class="card-image">
                    <img src="user.png" class="responsive-img">
                    <span class="card-title">Customer</span>
                </div>
                <div class="card-action">
                    <a href="user.jsp" class="blue-text">Click here to Login</a>
                </div>
            </div>
        </div>
        <div class="col s12 m6 l4">
          <div class="card hoverable">
            <div class="card-image">
              <img src="store.jpeg" class="responsive-img">
              <span class="card-title">Online Store</span>   
            </div>
            <div class="card-action">
              <a href="online_store.jsp" class="blue-text">Click here to Visit</a>
            </div>
          </div>
        </div> 
        <div class="col s12 m6 l2"></div>
     </div>
            
    
        
        
        
        <!--Footer-->
    <footer class="page-footer teal">
      <div class="container">
        <div class="row">
          <div class="col l6 s12">
            <h5 class="white-text">Footer Content</h5>
            <p class="grey-text text-lighten-4">You can use rows and columns here to organize your footer content.</p>
          </div>
          <div class="col l4 offset-l2 s12">
            <h5 class="white-text">Common Links</h5>
            <ul>
              <li><a class="grey-text text-lighten-3" href="index.html">Home</a></li>
              <li><a class="grey-text text-lighten-3" href="about_us.html">About Us</a></li>
              <li><a class="grey-text text-lighten-3" href="gallery.html">Galary</a></li>
              <li><a class="grey-text text-lighten-3" href="contact_us.html">Contact Us</a></li>
            </ul>
          </div>
        </div>
      </div>
      <div class="footer-copyright">
        <div class="container">
        © 2020 Copyright 
        </div>
      </div>
    </footer>
        
        
        
        
        <!--JavaScript at end of body for optimized loading-->
        <script src="materialize/js/materialize.js" type="text/javascript"></script>
        <script src="materialize/js/materialize.min.js" type="text/javascript"></script>
        <script>
            $(document).ready(function()
            {
                $('.sidenav').sidenav();
                $('.carousel.carousel-slider').carousel({
                indicators:true
                });
            });
    </script>
    </body>
</html>
