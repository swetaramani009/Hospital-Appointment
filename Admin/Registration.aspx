<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMaster.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Admin_Registration" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="main-wrapper account-wrapper" style="margin-top: 50px; margin-left: 100px;">
        <div class="account-page">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <div class="account-center">
                <div class="account-box">
                    <div class="account-logo">
                        <img src="assets/img/logo-dark.png" alt="Medifab">
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="uname" placeholder="User Name" CssClass="form-control" runat="server" required></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="pass" placeholder="Password" CssClass="form-control mb-3" runat="server" TextMode="Password" required></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="name" placeholder="User Name" CssClass="form-control" runat="server" required></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Department</label>
                        <asp:DropDownList ID="DropDownList_Section" class="form-control select mb-3" runat="server">
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="email" placeholder="Email" CssClass="form-control mb-3" runat="server" required></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="mobile" placeholder="Mobile No." CssClass="form-control mb-3" runat="server" required></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <div class="cal-icon">
                            <asp:TextBox ID="dob" class="form-control date mb-3" placeholder="Select Date" runat="server" required></asp:TextBox>
                            <ajaxToolkit:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="dob" Format="dd/MM/yyyy" Enabled="True" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-check form-check-inline">
                            <asp:DropDownList ID="DropDownList_gender" class="form-control select mb-3" runat="server">
                                <asp:ListItem Value="1">Gender</asp:ListItem>
                                <asp:ListItem Value="2">Male</asp:ListItem>
                                <asp:ListItem Value="3">Female</asp:ListItem>
                                <asp:ListItem Value="4">Other</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="address" placeholder="Address" CssClass="form-control mb-3" runat="server" TextMode="MultiLine" required></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </div>
                    <div class="text-center">
                        <asp:Button ID="btn_login_b" runat="server" CssClass="btn btn-primary account-btn mb-3" Text="REGISTER" OnClick="btn_login_b_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

