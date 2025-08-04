<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMaster.master" AutoEventWireup="true" CodeFile="add-patient.aspx.cs" Inherits="Admin_add_patient" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="page-wrapper">
        <div class="content">
            <div class="row">
                <div class="col-md-8 offset-md-2">
                    <h4 class="page-title">Add Patient</h4>
                </div>
            </div>
            <div class="row">
                <div class="col-md-8 offset-md-2">
                    <form runat="server">
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Name <span class="text-danger">*</span></label>
                                    <asp:TextBox ID="name" runat="server" class="form-control" required></asp:TextBox>
                                    <%--<input class="form-control" type="text">--%>
                                </div>
                            </div>
                            <%--<div class="col-sm-6">
                                <div class="form-group">
                                    <label>Avatar</label>
                                    <div class="profile-upload">
                                        <div class="upload-img">
                                            <img alt="" src="assets/img/user.jpg">
                                        </div>
                                        <div class="upload-input">
                                            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
                                            <input type="file" class="form-control">
                                        </div>
                                    </div>
                                </div>
                            </div>--%>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Email <span class="text-danger">*</span></label>
                                    <asp:TextBox ID="txt_Apoint_Email" runat="server" class="form-control" TextMode="Email" required></asp:TextBox>
                                    <%--<input class="form-control" type="email">--%>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Date of Birth</label>
                                    <div class="cal-icon">
                                        <asp:TextBox ID="datepicker" class="form-control date mb-3" placeholder="Select Date" runat="server" required></asp:TextBox>
                                        <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="datepicker" Format="dd/MM/yyyy" Enabled="True" />
                                    </div>
                                    <%--<div class="cal-icon">
												<input type="text" class="form-control datetimepicker">
											</div>--%>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group gender-select">
                                    <label style="display:block;">Gender</label>
                                    <div class="form-check form-check-inline" >
                                        <asp:DropDownList ID="DropDownList_gender" class="form-control select mb-3" runat="server">
                                        <asp:ListItem Value="2">Male</asp:ListItem>
                                        <asp:ListItem Value="3">Female</asp:ListItem>
                                        <asp:ListItem Value="4">Other</asp:ListItem>
                                    </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Phone </label>
                                    <asp:TextBox ID="txt_Apoint_Mobile" runat="server" class="form-control" required></asp:TextBox>
                                    <%--<input class="form-control" type="text">--%>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label>Address</label>
                                            <asp:TextBox ID="address" runat="server" class="form-control" required></asp:TextBox>
                                            <%--<input type="text" class="form-control ">--%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="m-t-20 text-center">
                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary submit-btn" Text="Create Patient" OnClick="Button1_Click"/>
                            <%--<button class="btn btn-primary submit-btn">Create Patient</button>--%>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

