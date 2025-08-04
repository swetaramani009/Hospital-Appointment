﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMaster.master" AutoEventWireup="true" CodeFile="Appointments.aspx.cs" Inherits="Admin_index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
        <div class="page-wrapper">
            <div class="content">
                <div class="row">
                    <div class="col-sm-4 col-3">
                        <h4 class="page-title">Appointments</h4>
                    </div>
                    <div class="col-sm-8 col-9 text-right m-b-20">
                        <a href="add-appointment.aspx" class="btn btn btn-primary btn-rounded float-right"><i class="fas fa-plus"></i>Add Appointment</a>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table id="example" class="table table-striped dt-responsive nowrap" cellspacing="0" width="100%">
                                <thead>
                                    <tr>
                                        <th>Appointment ID</th>
                                        <th>Patient Name</th>
                                        <th>Age</th>
                                        <th>Gender</th>
                                        <th>Department</th>
                                        <th>Appointment Date</th>
                                        <th>Contact No.</th>
                                        <th>Email</th>
                                        <th>Address</th>
                                        <th>Booked By...</th>
                                        <th>Status</th>
                                        <th class="text-right">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Label ID="Label1" runat="server"></asp:Label>
                                    <%--<tr>
                                    <td>APT0001</td>
                                    <td>
                                        <img width="28" height="28" src="assets/img/user.jpg" class="rounded-circle m-r-5">
                                        Denise Stevens</td>
                                    <td>35</td>
                                    <td>Henry Daniels</td>
                                    <td>Cardiology</td>
                                    <td>30 Dec 2018</td>
                                    <td>10:00am - 11:00am</td>
                                    <td><span class="custom-badge status-red">Inactive</span></td>
                                    <td class="text-right">
                                        <div class="dropdown dropdown-action">
                                            <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fas fa-ellipsis-v"></i></a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="edit-appointment.html"><i class="fas fa-pencil-alt m-r-5"></i>Edit</a>
                                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_appointment"><i class="fas fa-trash m-r-5"></i>Delete</a>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>APT0002</td>
                                    <td>
                                        <img width="28" height="28" src="assets/img/user.jpg" class="rounded-circle m-r-5">
                                        Denise Stevens</td>
                                    <td>35</td>
                                    <td>Henry Daniels</td>
                                    <td>Cardiology</td>
                                    <td>30 Dec 2018</td>
                                    <td>10:00am - 11:00am</td>
                                    <td><span class="custom-badge status-green">Active</span></td>
                                    <td class="text-right">
                                        <div class="dropdown dropdown-action">
                                            <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fas fa-ellipsis-v"></i></a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="edit-appointment.html"><i class="fas fa-pencil-alt m-r-5"></i>Edit</a>
                                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_appointment"><i class="fas fa-trash m-r-5"></i>Delete</a>
                                            </div>
                                        </div>
                                    </td>
                                </tr>--%>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>

