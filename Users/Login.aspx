<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Users_Login" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <script type="text/javascript">
        function disableBackButton() {
            window.history.forward();
        }
        setTimeout("disableBackButton()", 0);
    </script>
    <title>User Master</title>


    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8" />
    <meta name="keywords" content="Alleviating Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
    <script type="text/javascript">
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- Custom Theme files -->
    <link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all" />
    <link href="css/style.css" type="text/css" rel="stylesheet" media="all" />
    <!-- font-awesome icons -->
    <link href="css/fontawesome-all.min.css" rel="stylesheet" />
    <!-- //Custom Theme files -->
    <link href="css/minimal-slider.css" rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" />
    <!-- online-fonts -->
    <link href="//fonts.googleapis.com/css?family=Lato:400,700" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Montserrat:200,300,400,500,600,700,800,900" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <!-- header -->
            <header>
                <nav class="navbar navbar-expand-lg navbar-light bg-gradient-secondary">
                    <h1>
                        <a class="navbar-brand text-white" href="Home.aspx">+ Lukky Hospital +
                        </a>
                    </h1>
                    <button class="navbar-toggler ml-md-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                </nav>
            </header>

            <div class="about">
                <div class="abt-layer">
                    <div class="container">
                        <div class="about-main">
                            <div class="about-right">
                                <h3 class="subheading-w3-agile">Log in</h3>
                                <div class="stats">
                                    <div class="stats_inner">
                                        <asp:TextBox ID="uname" placeholder="User Name" CssClass="form-control mb-3" runat="server" required></asp:TextBox>
                                        <asp:TextBox ID="pass" placeholder="Password" CssClass="form-control mb-3" runat="server" TextMode="Password" required></asp:TextBox>
                                        <asp:Button ID="btn_login_b" runat="server" CssClass="btn btn-agile btn-block w-100" Text="LOG IN" OnClick="btn_login_b_Click" />
                                        <h5 style="color:blanchedalmond; margin-top:20px;"><asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-agile btn-block w-100" PostBackUrl="~/Users/Forgotpassword.aspx">Forgot Your Password?  </asp:LinkButton></h5>
                                        <h5 style="color:blanchedalmond; margin-top:20px;">Don't Have An Account?  </h5><asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-agile btn-block w-100" OnClick="LinkButton1_Click">Register Now!</asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- //footer -->
            <!-- js -->
            <script src="js/jquery-2.2.3.min.js" type="text/javascript"></script>
            <!-- //js -->
            <script src="js/minimal-slider.js" type="text/javascript"></script>
            <!-- flexSlider (for testimonials) -->
            <!-- Calendar -->
            <link rel="stylesheet" href="css/jquery-ui.css" />
            <script src="js/jquery-ui.js"></script>
            <script type="text/javascript">
                $(function () {
                    $("#datepicker").datepicker();
                });
            </script>
            <!-- //Calendar -->

            <script defer src="js/jquery.flexslider.js" type="text/javascript"></script>
            <script type="text/javascript">
                $(window).load(function () {
                    $('.flexslider').flexslider({
                        animation: "slide",
                        start: function (slider) {
                            $('body').removeClass('loading');
                        }
                    });
                });
            </script>
            <!-- //flexSlider (for testimonials) -->

            <!-- script for password match -->
            <script type="text/javascript">
                window.onload = function () {
                    document.getElementById("password1").onchange = validatePassword;
                    document.getElementById("password2").onchange = validatePassword;
                }

                function validatePassword() {
                    var pass2 = document.getElementById("password2").value;
                    var pass1 = document.getElementById("password1").value;
                    if (pass1 != pass2)
                        document.getElementById("password2").setCustomValidity("Passwords Don't Match");
                    else
                        document.getElementById("password2").setCustomValidity('');
                    //empty string means no validation error
                }
            </script>
            <!-- script for password match -->

            <!-- start-smooth-scrolling -->
            <script src="js/move-top.js" type="text/javascript"></script>
            <script src="js/easing.js" type="text/javascript"></script>
            <script type="text/javascript">
                jQuery(document).ready(function ($) {
                    $(".scroll").click(function (event) {
                        event.preventDefault();

                        $('html,body').animate({
                            scrollTop: $(this.hash).offset().top
                        }, 1000);
                    });
                });
            </script>
            <!-- //end-smooth-scrolling -->

            <!-- smooth-scrolling-of-move-up -->
            <script type="text/javascript">
                $(document).ready(function () {


                    $().UItoTop({
                        easingType: 'easeOutQuart'
                    });

                });
            </script>
            <script src="js/SmoothScroll.min.js" type="text/javascript"></script>

            <script src="js/bootstrap.js" type="text/javascript"></script>



        </div>
    </form>
</body>
</html>
