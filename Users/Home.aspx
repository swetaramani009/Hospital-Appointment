<%@ Page Title="" Language="C#" MasterPageFile="~/Users/usermaster.Master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Users_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>

        <section class="departments">
            <div class="departments-1 py-lg-5">
                <div class="container py-5">
                    <div class="text-center wthree-title pb-sm-5 pb-3">
                        <h3 class="w3l-sub text-white">Departments</h3>
                        <h4 class="sub-title py-3 text-white">Free checkup </h4>
                    </div>
                    <div class="row py-lg-5">
                        <div class="col-lg-6  px-lg-5 map contact-right">
                            <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>
                                <div class="row py-3 wthree-cicon">
                                    <span class="fas fa-plus-square mr-3"></span>
                                    <h4 class="text-capitalize text-white"><%# Eval("department") %></h4>
                                </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                        </div>
                        <%--<div class="col-sm-4 w3-ab">
                            <div class="w3-ab-grid text-center">
                                <div class="w3-aicon p-4">
                                    <i class="fa fa-stethoscope" aria-hidden="true"></i>
                                    <h4 class="my-3 text-capitalize text-white">Neurology</h4>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 w3-ab">
                            <div class="w3-ab-grid text-center">
                                <div class="w3-aicon p-4">
                                    <i class="fa fa-wheelchair" aria-hidden="true"></i>
                                    <h4 class="my-3 text-capitalize text-white">Traumatology</h4>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 w3-ab">
                            <div class="w3-ab-grid text-center">
                                <div class="w3-aicon p-4">
                                    <i class="fa fa-plus-square" aria-hidden="true"></i>
                                    <h4 class="my-3 text-capitalize text-white">dentistry</h4>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 mt-4 w3-ab">
                            <div class="w3-ab-grid text-center">
                                <div class="w3-aicon  p-4">
                                    <i class="fa fa-heartbeat" aria-hidden="true"></i>
                                    <h4 class="my-3 text-capitalize text-white">Cardiology</h4>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 mt-4 w3-ab">
                            <div class="w3-ab-grid text-center">
                                <div class="w3-aicon p-4">
                                    <i class="fa fa-medkit" aria-hidden="true"></i>
                                    <h4 class="my-3 text-capitalize text-white">pulmonary</h4>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 mt-4 w3-ab">
                            <div class="w3-ab-grid text-center">
                                <div class="w3-aicon p-4">
                                    <i class="fa fa-ambulance" aria-hidden="true"></i>
                                    <h4 class="my-3 text-capitalize text-white">pediatrics</h4>
                                </div>
                            </div>
                        </div>--%>
                    </div>
                </div>
            </div>
        </section>

    </div>
</asp:Content>

