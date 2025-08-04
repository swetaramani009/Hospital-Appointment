<%@ Page Title="" Language="C#" MasterPageFile="~/Users/usermaster.Master" AutoEventWireup="true" CodeFile="MainAppointment.aspx.cs" Inherits="Users_MainAppointment" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>

        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>

        <div class="about">
            <div class="abt-layer">
                <div class="container">
                    <div class="about-main">
                        <div class="about-right">
                            <h3 class="subheading-w3-agile">Make an Appointment</h3>

                            <!-- stats -->
                            <div class="stats">
                                <div class="stats_inner">
                                    <asp:TextBox ID="name" placeholder="Name" class="form-control mb-3" runat="server" required></asp:TextBox>
                                    <asp:TextBox ID="dob" CssClass="form-control date mb-3" placeholder="Date Of Birth" runat="server" required></asp:TextBox>
                                    <ajaxToolkit:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="dob" Format="dd/MM/yyyy" Enabled="True" />

                                    <asp:DropDownList ID="DropDownList_gender" class="form-control mb-3" runat="server">
                                        <asp:ListItem Value="2">Male</asp:ListItem>
                                        <asp:ListItem Value="3">Female</asp:ListItem>
                                        <asp:ListItem Value="4">Other</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="DropDownList_Section" class="form-control mb-3" runat="server">
                                        <asp:ListItem Value="2">Neurology</asp:ListItem>
                                        <asp:ListItem Value="3">Dentistry</asp:ListItem>
                                        <asp:ListItem Value="4">Cardiology</asp:ListItem>
                                        <asp:ListItem Value="5">Pediatrics</asp:ListItem>
                                        <asp:ListItem Value="6">Pulmonolog</asp:ListItem>
                                        <asp:ListItem Value="7"> Ophthalmolog</asp:ListItem>
                                        <asp:ListItem Value="8">Diagnostics</asp:ListItem>
                                    </asp:DropDownList>

                                    <asp:TextBox ID="datepicker" CssClass="form-control date mb-3" placeholder="Select Appointment Date" runat="server" required></asp:TextBox>
                                    <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="datepicker" Format="dd/MM/yyyy" Enabled="True" />

                                    <asp:TextBox ID="txt_Apoint_Mobile" class="form-control mb-3" placeholder="Phone" runat="server" required></asp:TextBox>

                                    <asp:TextBox ID="txt_Apoint_Email" class="form-control mb-3" placeholder="Email" runat="server" required></asp:TextBox>

                                    <asp:Button ID="btn_main_appointment_Submit" runat="server" class="btn btn-agile btn-block w-100" Text="Make An Appointment" OnClick="btn_main_appointment_Submit_Click" />

                                </div>
                            </div>
                            <!-- //stats -->

                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!--//about-->

    </div>
</asp:Content>

