<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">

    <title>Care and connect</title>
   
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">
    <!-- Google web font "Open Sans" -->
    <link rel="stylesheet" href="css/all.min.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/magnific-popup.css" />
    <link rel="stylesheet" type="text/css" href="slick/slick.css" />
    <link rel="stylesheet" type="text/css" href="slick/slick-theme.css" />
    <link rel="stylesheet" href="css/index.css">

    <script src="https://smtpjs.com/v3/smtp.js"></script>
    <script>
        function sendeEmail(){
            Email.send({
                Host: "smtp.gmail.com",
                Username: "sanjanapanda159@gmail.com",
                Password: "S@njanaP@nda16",
                To: 'sanjanaspanda@gmail.com',
                From: "sanjanapanda159@gmail.com",
                Subject: "Sending Email using javascript",
                Body: "Well that was easy!!",

            }).then(function(message){alert("Thank you for your response")})
        }    </script>


    <style>
        body {font-family: Arial, Helvetica, sans-serif;color:black}
        * {box-sizing: border-box;}
        
        input[type=text], select, textarea {
          width: 100%;
          padding: 12px;
          border: 1px solid #ccc;
          border-radius: 4px;
          box-sizing: border-box;
          margin-top: 6px;
          margin-bottom: 16px;
          resize: vertical;
        }
        
        input[type=submit] {
          background-color:white;
          color: rgb(20, 18, 18);
          padding: 12px 20px;
          border: none;
          border-radius: 4px;
          cursor: pointer;
        }
        
        input[type=submit]:hover {
          background-color: #33ccff;
        }
        
        .container {
          border-radius: 5px;
          background-color: #758bfd;
          padding: 20px;
        }
        </style>

</Head>

<body>
    <div class="beechme">
        <div id="tmSideBar" class="col-xl-3 col-lg-4 col-md-12 col-sm-12 sidebar">

            <button id="tmMainNavToggle" class="menu-icon">&#9776;</button>

            <div class="inner">
                <img class="logolo" src="img/logo.png">
                <nav id="tmMainNav" class="tm-main-nav">
                    <ul>
                        <li>
                            <a href="index.jsp" id="tmNavLink1" class="scrolly " data-bg-img="constructive_bg_01.jpg"
                                data-page="#tm-section-1">
                                <i class="fas fa-home tm-nav-fa-icon"></i>
                                <span>Home</span>
                            </a>
                        </li>
                        <li>
                            <a href="mycommunity.jsp" id="tmNavLink2" class="scrolly" data-bg-img="constructive_bg_02.jpg"
                                data-page="#tm-section-2" data-page-type="carousel">
                                <i class="fas fa-users tm-nav-fa-icon"></i>
                                <span>My Community</span>
                            </a>
                        </li>
                        <li>
                            <a href="aboutus.jsp" class="scrolly" data-bg-img="constructive_bg_03.jpg"
                                data-page="#tm-section-3">
                                <i class="fa fa-pencil tm-nav-fa-icon" aria-hidden="true"></i> 
                                <span>About Us</span>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="scrolly active" data-bg-img="constructive_bg_04.jpg"
                                data-page="#tm-section-4">
                                <i class="fas fa-comments tm-nav-fa-icon"></i>
                                <span>Contact Us</span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        <h1> </h1>

    
            <div class="container">
                <center><h3>Contact Form</h3></center>
                <form action="insertcontact.jsp" method="post">
                  <label for="fname">First Name</label>
                  <input type="text" id="fname" name="FirstName" placeholder="Your name..">
              
                  <label for="lname">Last Name</label>
                  <input type="text" id="lname" name="LastName" placeholder="Your last name..">
              
                  <label for="City">City</label>
                  <select id="City" name="city">
                    <option value="Mumbai">Mumbai</option>
                    <option value="Pune">Pune</option>
                    <option value="Nashik">Nashik</option>
                  </select>
              
                  <label for="subject">Subject</label>
                  <textarea id="subject" name="sub" placeholder="Write something.." style="height:200px"></textarea>
              
                  <input type="submit" value ="Submit">
                </form>
              </div>
        </div>
    
</body>
</html>