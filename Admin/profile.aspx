<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMaster.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="Admin_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="page-wrapper">
        <div class="content">
            <div class="row">
                <div class="col-sm-7 col-4">
                    <h4 class="page-title">My Profile</h4>
                </div>
                <div class="col-sm-5 col-8 text-right m-b-30">
                    <a href="edit-profile.html" class="btn btn-primary btn-rounded"><i class="fas fa-plus"></i>Edit Profile</a>
                </div>
            </div>
            <div class="card-box profile-header">
                <div class="row">
                    <div class="col-md-12">
                        <div class="profile-view">
                            <div class="profile-img-wrap">
                                <div class="profile-img"><a><asp:Image ID="image1" runat="server" CssClass="avatar"/></a></div></div>
                                    <asp:Label ID="Label1" runat="server"></asp:Label>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

