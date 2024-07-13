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
    <link rel="stylesheet" href="css/fontawesome-all.min.css">
    <link rel="stylesheet" href="css/index.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</Head>

<body style="background-color: #758bfd;
 font-family: 'Open Sans', Helvetica, Arial, sans-serif;
    font-size: 18px;
    font-weight: 300;">

    <div class="beechme">
        <div id="tmSideBar" class="col-xl-3 col-lg-4 col-md-12 col-sm-12 sidebar">

            <button id="tmMainNavToggle" class="menu-icon">&#9776;</button>

            <div class="inner" style="font-family: 'Open Sans', Helvetica, Arial, sans-serif;
            font-size: 30px;
            font-weight: 300;
            ">
                <img class="logolo" src="img/logo.png">
                <nav id="tmMainNav" class="tm-main-nav">
                    <ul>
                        <li>
                            <a href="#" id="tmNavLink1" class="scrolly active" data-bg-img="constructive_bg_01.jpg"
                                data-page="#tm-section-1">
                                <i class="fas fa-home tm-nav-fa-icon"></i>
                                <span>Home</span>
                            </a>
                        </li>
                        <li>
                            <a href="mycommunity.jsp" id="tmNavLink2" class="scrolly"
                                data-bg-img="constructive_bg_02.jpg" data-page="#tm-section-2"
                                data-page-type="carousel">
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
                            <a href="contactus.jsp" class="scrolly" data-bg-img="constructive_bg_04.jpg"
                                data-page="#tm-section-4">
                                <i class="fas fa-comments tm-nav-fa-icon"></i>
                                <span>Contact Us</span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        <div class="mission">
            <div class="container">
                <div class="header">
                    <h2>CARE AND CONNECT</h2>
                    <%
                    if (session.getAttribute("username") != null)
                    out.println("WELCOME "+session.getAttribute("username")+
                    		"<form action=\"logout.jsp\">"+
                    		"<button type=\"submit\">LOGOUT</button>"+
                    		"</form>"
                    );

                    else{
                    	String buttons = "<div class=\"login\">"+
                    			"<button onclick=\"location.href='./login.jsp'\">LOGIN</button>"+
                    			"<button onclick=\"location.href='./register.jsp'\">REGISTER</button>"+
                    			"</div>";
                    			out.println(buttons);
                    			
                    			
                    }%>
                </div>
                <div id="myCarousel" class="carousel slide" data-ride="carousel" style="height:400px;width:90%">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="img/image1.jpg" alt="Los Angeles" style="width:100%;">
                        </div>

                        <div class="item">
                            <img src="img/4.jpg" alt="Chicago" style="width:100%;">
                        </div>

                        <div class="item">
                            <img src="img/image3.jpg" alt="New york" style="width:100%;">
                        </div>
                    </div>

                    <!-- Left and right controls -->
                    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
            <h2>
                Our Mission
            </h2>
            <h3>
                Connecting Hearts, Building Communities
            </h3>
            <p><b>
                Our mission is to empower the elderly to lead fulfilling lives by providing a space where they can
                connect
                with like-minded individuals in their neighborhood. We aim to create a vibrant network that spans
                various
                interests, from yoga and religious activities to art and cooking. By bringing people together, we hope
                to
                enhance not only individual well-being but also the overall sense of community and belonging.
            </b>
            </p>
            <h4>
                Why Care and Connect?

            </h4>
            <p><b>
                Local Focus: We believe in the power of local connections. By keeping activities within a 1 km radius,
                we aim to make it easy for you to engage with your neighbors and build lasting friendships.<br>

                Diverse Interests: Whether you're a seasoned practitioner or a beginner, our platform caters to a wide
                range of interests. From the tranquility of yoga to the excitement of cooking classes, there's something
                for everyone.<br>

                User-Friendly: Our website is designed with simplicity in mind. Easily navigate through activities,
                events, and community profiles to make the most out of your experience.<br>
                <br>
                

                Join Us in Building a Community<br>
                Discover the joy of local connections and meaningful interactions. Join Care and Connect today and
                embark on a journey to build vibrant communities right at your doorstep.
            </b></p>

        </div>
    </div>
    </div>
</body>
</html>