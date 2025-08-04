<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMaster.master" AutoEventWireup="true" CodeFile="add-department.aspx.cs" Inherits="Admin_add_department" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="page-wrapper">
        <div class="content">
            <div class="row">
                <div class="col-md-8 offset-md-2">
                    <h4 class="page-title">Add Department</h4>
                </div>
            </div>
            <div class="row">
                <div class="col-md-8 offset-md-2">
                    <div class="form-group">
                        <label>Department Name</label>
                        <asp:TextBox ID="depart_name" CssClass="form-control" runat="server" required></asp:TextBox>
                        <%--									<input class="form-control" type="text">--%>
                    </div>
                    <%--                        <div class="form-group">
                            <label>Description</label>
                            <asp:TextBox ID="desc" CssClass="form-control" runat="server" TextMode="MultiLine" Rows="4" Columns="30"></asp:TextBox>
                            <%--									<textarea cols="30" rows="4" class="form-control"></textarea>
                        </div>--%>
                    <%--<div class="form-group">
                            <label class="display-block">Department Status</label>
                            <div class="form-check form-check-inline">
                                <asp:RadioButton GroupName="status" class="form-check-input" ID="active" runat="server" Text="Active" />
                                <asp:RadioButton GroupName="status" class="form-check-input" ID="inactive" runat="server" Text="Inactive" />
                            </div>--%>
                    <%--									<div class="form-check form-check-inline">
										<input class="form-check-input" type="radio" name="status" id="product_active" value="option1" checked>
										<label class="form-check-label" for="product_active">
										Active
										</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="radio" name="status" id="product_inactive" value="option2">
										<label class="form-check-label" for="product_inactive">
										Inactive
										</label>
									</div>--%>
                    <%--                        </div>--%>
                    <div class="m-t-20 text-center">
                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary submit-btn" Text="Create Department" OnClick="Button1_Click" />
                        <%--                            <button class="btn btn-primary submit-btn">Create Department</button>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

