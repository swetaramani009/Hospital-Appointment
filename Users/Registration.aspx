<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Users_Registration" %>

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

            
            <!-- end of main image slider container -->
            <div class="about">
                <div class="abt-layer">
                    <div class="container">
                        <div class="about-main">
                            <div class="about-right">
                                <h3 class="subheading-w3-agile">Registration</h3>
                                <div class="stats">
                                    <div class="stats_inner">
                                        <asp:TextBox ID="uname" placeholder="User Name" CssClass="form-control mb-3" runat="server" required></asp:TextBox>
                                        <asp:TextBox ID="email" placeholder="Email" CssClass="form-control mb-3" runat="server" required></asp:TextBox>
                                        <asp:TextBox ID="mobile" placeholder="Mobile No." CssClass="form-control mb-3" runat="server" required></asp:TextBox>
                                        <asp:TextBox ID="pass" placeholder="Password" CssClass="form-control mb-3" runat="server" TextMode="Password" required></asp:TextBox>
                                        <asp:Button ID="btn_login_b" runat="server" CssClass="btn btn-agile btn-block w-100" Text="REGISTER" OnClick="btn_login_b_Click" />
                                        <h5 style="color:blanchedalmond; margin-top:20px;">Already Have An Account?  </h5><asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-agile btn-block w-100" OnClick="LinkButton1_Click">Log In...</asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%--<center>
        <h1 style="font-size: xx-large; font-weight: bold; color: #0000FF">Sign In</h1>
       <table style="width: 400px; height: 200px; background-color: #0000FF; font-size: large; font-weight: bold; color: #FFFFFF;" >
           <tr>
               <td style="width: 172px" align="center">Username</td>
               <td style="width: 188px">
                   <asp:Label ID="lbl_rid" runat="server" Text="Label"></asp:Label>
                  <%-- <asp:TextBox ID="txt_signup_username" runat="server" Width="225px"></asp:TextBox></td>
           </tr>

             <tr>
               <td style="width: 172px" align="center">Username</td>
               <td style="width: 188px">
                   <asp:TextBox ID="txt_signup_username" runat="server" Width="225px"></asp:TextBox></td>
           </tr>

            <tr>
               <td style="width: 172px" align="center">Email</td>
               <td style="width: 188px">
                   <asp:TextBox ID="txt_signup_email" runat="server" Width="225px"></asp:TextBox></td>
           </tr>

            <tr>
               <td style="width: 172px" align="center">Mobile No</td>
               <td style="width: 188px">
                   <asp:TextBox ID="txt_signup_mobile" runat="server" Width="225px"></asp:TextBox></td>
           </tr>

            <tr>
               <td style="width: 172px" align="center">Password</td>
               <td style="width: 188px">
                   <asp:TextBox ID="txt_signup_pass" TextMode="Password" runat="server" Width="225px"></asp:TextBox></td>
           </tr>


             <tr>
               <td style="width: 172px" align="center"> Re-Password</td>
               <td style="width: 188px">
                   <asp:TextBox ID="txt_signup_cpass" TextMode="Password" runat="server" Width="225px"></asp:TextBox></td>
           </tr>



            <tr>
               <td  style="height: 54px" colspan="2" align="center">
                   <asp:CheckBox ID="CheckBox1" runat="server" />Remember me
                &nbsp&nbsp
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Underline="True" OnClick="LinkButton1_Click">Sign UP</asp:LinkButton></td>
               
           </tr>

           <tr>
               <td  align="center" colspan="2">
                   <asp:Button ID="btn_login_b" runat="server" Text="Registration" Font-Bold="True" OnClick="btn_login_b_Click" />&nbsp&nbsp&nbsp<asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Underline="True" OnClick="LinkButton2_Click">Forgot Password</asp:LinkButton></td>
           </tr>
       </table>


   </center>--%>
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

