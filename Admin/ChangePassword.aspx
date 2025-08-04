<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMaster.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="Admin_ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="page-wrapper">
        <div class="content">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <h4 class="page-title">Change Password</h4>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="form-group">
                                <label>Old password</label>
                                <asp:TextBox ID="old_pass" CssClass="form-control" runat="server" TextMode="Password" required></asp:TextBox>
                                <%--											<input type="password" class="form-control">--%>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label>New password</label>
                                <asp:TextBox ID="new_pass" CssClass="form-control" runat="server" TextMode="Password" required></asp:TextBox>
                                <%--											<input type="password" class="form-control">--%>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 text-center m-t-20">
                            <asp:Button ID="Button1" CssClass="btn btn-primary submit-btn" runat="server" Text="Update Password" />
                            <%--										<button type="button" class="btn btn-primary submit-btn">Update Password</button>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

