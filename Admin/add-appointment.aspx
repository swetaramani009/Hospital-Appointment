<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMaster.master" AutoEventWireup="true" CodeFile="add-appointment.aspx.cs" Inherits="Admin_add_appointment" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="page-wrapper">
        <div class="content">
            <div class="row">
                <div class="col-md-8 offset-md-2">
                    <h4 class="page-title">Add Appointment</h4>
                </div>
            </div>
            <div class="row">
                <div class="col-md-8 offset-md-2">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Date Of Birth</label>
                                <div class="cal-icon">
                                    <asp:TextBox ID="dob" class="form-control date mb-3" placeholder="Select Date" runat="server" required></asp:TextBox>
                                    <ajaxToolkit:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="dob" Format="dd/MM/yyyy" Enabled="True" />
                                </div>
                                <%--<label>Age</label>
                                    <asp:TextBox ID="age" CssClass="form-control" runat="server"></asp:TextBox>--%>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Patient Name</label>
                                <asp:TextBox ID="name" CssClass="form-control" runat="server" required></asp:TextBox>
                                <%--<asp:DropDownList ID="name" CssClass="form-control select mb-3" runat="server"></asp:DropDownList>--%>
                                <%--<select class="select">
                                        <option>Select</option>
                                        <option>Jennifer Robinson</option>
                                        <option>Terry Baker</option>
                                    </select>--%>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Gender</label><br />
                                <div class="form-check form-check-inline">
                                    <asp:DropDownList ID="DropDownList_gender" class="form-control select mb-3" runat="server">
                                        <asp:ListItem Value="2">Male</asp:ListItem>
                                        <asp:ListItem Value="3">Female</asp:ListItem>
                                        <asp:ListItem Value="4">Other</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Department</label>
                                <asp:DropDownList ID="DropDownList_Section" class="form-control select mb-3" runat="server">
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Patient Phone Number</label>
                                <asp:TextBox ID="txt_Apoint_Mobile" CssClass="form-control" runat="server" required></asp:TextBox>
                                <%--<input id="mono" type="text" class="form-control" />--%>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Appointment Date</label>
                                <div class="cal-icon">
                                    <asp:TextBox ID="datepicker" class="form-control date mb-3" placeholder="Select Date" runat="server" required></asp:TextBox>
                                    <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="datepicker" Format="dd/MM/yyyy" Enabled="True" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Patient Email</label>
                                <asp:TextBox ID="txt_Apoint_Email" CssClass="form-control" runat="server" TextMode="Email" required></asp:TextBox>
                                <%--<input id="email" type="email" class="form-control" />--%>
                            </div>
                        </div>
                    </div>
                    <div class="m-t-20 text-center">
                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary submit-btn" Text="Create Appointment" OnClick="Button1_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

