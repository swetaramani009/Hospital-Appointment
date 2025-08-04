<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Admin_login" %>

<!DOCTYPE html>
<html>

<!-- Mirrored from medifab.dreamstechnologies.com/admin-template/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 27 Nov 2023 06:43:13 GMT -->
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
    <title>Medifab - Bootstrap Admin Template</title>
    <link href="https://fonts.googleapis.com/css?family=Fira+Sans:400,500,600,700" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
    <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <!--[if lt IE 9]>
		<script src="assets/js/html5shiv.min.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
</head>
<body>
    <div class="main-wrapper account-wrapper">
        <div class="account-page">
            <div class="account-center">
                <div class="account-box">
                    <form class="form-signin" runat="server" id="form1">
                        <div class="account-logo">
                            <img src="assets/img/logo-dark.png" alt="Medifab">
                        </div>
                        <div class="form-group">
                            <label>Username</label>
                            <asp:TextBox ID="uname" runat="server" CssClass="form-control" autofocus="" required></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <asp:TextBox ID="pass" runat="server" CssClass="form-control" TextMode="Password" required></asp:TextBox>
                        </div>
                        <div class="form-group text-right">
                            <a href="forgot-password.aspx">Forgot your password?</a>
                        </div>
                        <div class="form-group text-center">
                            <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-primary account-btn" OnClick="Button1_Click" />
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="assets/js/jquery-3.5.1.min.js"></script>
    <script type="text/javascript" src="assets/js/popper.min.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="assets/js/app.js"></script>
</body>

<!-- Mirrored from medifab.dreamstechnologies.com/admin-template/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 27 Nov 2023 06:43:14 GMT -->
</html>
