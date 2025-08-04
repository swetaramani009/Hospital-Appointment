<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMaster.master" AutoEventWireup="true" CodeFile="Clients.aspx.cs" Inherits="Admin_patience" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="page-wrapper">
        <div class="content">
            <div class="row">
                <div class="col-sm-4 col-3">
                    <h4 class="page-title">Clients</h4>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="table-responsive">
                        <table class="table table-border table-striped custom-table datatable m-b-0">
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>User Name</th>
                                    <th>Phone</th>
                                    <th>Email</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                                <%--<tr>
                                    <td>
                                        <img width="28" height="28" src="assets/img/user.jpg" class="rounded-circle m-r-5">
                                        Jennifer Robinson</td>
                                    <td>35</td>
                                    <td>1545 Dorsey Ln NE, Leland, NC, 28451</td>
                                    <td>(207) 808 8863</td>
                                    <td><a href="https://medifab.dreamstechnologies.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="e8828d8686818e8d9a9a878a81869b8786a88d90898598848dc68b8785">[email&#160;protected]</a></td>
                                    <td class="text-right">
                                        <div class="dropdown dropdown-action">
                                            <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fas fa-ellipsis-v"></i></a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="edit-patient.html"><i class="fas fa-pencil-alt m-r-5"></i>Edit</a>
                                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_patient"><i class="fas fa-trash m-r-5"></i>Delete</a>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <img width="28" height="28" src="assets/img/user.jpg" class="rounded-circle m-r-5">
                                        Terry Baker</td>
                                    <td>63</td>
                                    <td>555 Front St #APT 2H, Hempstead, NY, 11550</td>
                                    <td>(376) 150 6975</td>
                                    <td><a href="https://medifab.dreamstechnologies.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="daaebfa8a8a3b8bbb1bfa89abfa2bbb7aab6bff4b9b5b7">[email&#160;protected]</a></td>
                                    <td class="text-right">
                                        <div class="dropdown dropdown-action">
                                            <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fas fa-ellipsis-v"></i></a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="edit-patient.html"><i class="fas fa-pencil-alt m-r-5"></i>Edit</a>
                                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_patient"><i class="fas fa-trash m-r-5"></i>Delete</a>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <img width="28" height="28" src="assets/img/user.jpg" class="rounded-circle m-r-5">
                                        Kyle Bowman</td>
                                    <td>7</td>
                                    <td>5060 Fairways Cir #APT 207, Vero Beach, FL, 32967</td>
                                    <td>(981) 756 6128</td>
                                    <td><a href="https://medifab.dreamstechnologies.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="8be0f2e7eee9e4fce6eae5cbeef3eae6fbe7eea5e8e4e6">[email&#160;protected]</a></td>
                                    <td class="text-right">
                                        <div class="dropdown dropdown-action">
                                            <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fas fa-ellipsis-v"></i></a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="edit-patient.html"><i class="fas fa-pencil-alt m-r-5"></i>Edit</a>
                                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_patient"><i class="fas fa-trash m-r-5"></i>Delete</a>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <img width="28" height="28" src="assets/img/user.jpg" class="rounded-circle m-r-5">
                                        Marie Howard</td>
                                    <td>22</td>
                                    <td>3501 New Haven Ave #152, Columbia, MO, 65201</td>
                                    <td>(634) 09 3833</td>
                                    <td><a href="https://medifab.dreamstechnologies.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="cba6aab9a2aea3a4bcaab9af8baeb3aaa6bba7aee5a8a4a6">[email&#160;protected]</a></td>
                                    <td class="text-right">
                                        <div class="dropdown dropdown-action">
                                            <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fas fa-ellipsis-v"></i></a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="edit-patient.html"><i class="fas fa-pencil-alt m-r-5"></i>Edit</a>
                                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_patient"><i class="fas fa-trash m-r-5"></i>Delete</a>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <img width="28" height="28" src="assets/img/user.jpg" class="rounded-circle m-r-5">
                                        Joshua Guzman</td>
                                    <td>34</td>
                                    <td>4712 Spring Creek Dr, Bonita Springs, FL, 34134</td>
                                    <td>(407) 554 4146</td>
                                    <td><a href="https://medifab.dreamstechnologies.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="a6ccc9d5ced3c7c1d3dccbc7c8e6c3dec7cbd6cac388c5c9cb">[email&#160;protected]</a></td>
                                    <td class="text-right">
                                        <div class="dropdown dropdown-action">
                                            <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fas fa-ellipsis-v"></i></a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="edit-patient.html"><i class="fas fa-pencil-alt m-r-5"></i>Edit</a>
                                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_patient"><i class="fas fa-trash m-r-5"></i>Delete</a>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <img width="28" height="28" src="assets/img/user.jpg" class="rounded-circle m-r-5">
                                        Julia Sims</td>
                                    <td>27</td>
                                    <td>517 Walker Dr, Houma, LA, 70364, United States</td>
                                    <td>(680) 432 2662</td>
                                    <td><a href="https://medifab.dreamstechnologies.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="5f352a33363e2c36322c1f3a273e322f333a713c3032">[email&#160;protected]</a></td>
                                    <td class="text-right">
                                        <div class="dropdown dropdown-action">
                                            <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fas fa-ellipsis-v"></i></a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="edit-patient.html"><i class="fas fa-pencil-alt m-r-5"></i>Edit</a>
                                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_patient"><i class="fas fa-trash m-r-5"></i>Delete</a>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <img width="28" height="28" src="assets/img/user.jpg" class="rounded-circle m-r-5">
                                        Linda Carpenter</td>
                                    <td>24</td>
                                    <td>2226 Victory Garden Ln, Tallahassee, FL, 32301</td>
                                    <td>(218) 661 8316</td>
                                    <td><a href="https://medifab.dreamstechnologies.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="a1cdc8cfc5c0c2c0d3d1c4cfd5c4d3e1c4d9c0ccd1cdc48fc2cecc">[email&#160;protected]</a></td>
                                    <td class="text-right">
                                        <div class="dropdown dropdown-action">
                                            <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fas fa-ellipsis-v"></i></a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="edit-patient.html"><i class="fas fa-pencil-alt m-r-5"></i>Edit</a>
                                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_patient"><i class="fas fa-trash m-r-5"></i>Delete</a>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <img width="28" height="28" src="assets/img/user.jpg" class="rounded-circle m-r-5">
                                        Melissa Burton</td>
                                    <td>35</td>
                                    <td>3321 N 26th St, Milwaukee, WI, 53206</td>
                                    <td>(192) 494 8073</td>
                                    <td><a href="https://medifab.dreamstechnologies.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="d6bbb3babfa5a5b7b4a3a4a2b9b896b3aeb7bba6bab3f8b5b9bb">[email&#160;protected]</a></td>
                                    <td class="text-right">
                                        <div class="dropdown dropdown-action">
                                            <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fas fa-ellipsis-v"></i></a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="edit-patient.html"><i class="fas fa-pencil-alt m-r-5"></i>Edit</a>
                                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_patient"><i class="fas fa-trash m-r-5"></i>Delete</a>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <img width="28" height="28" src="assets/img/user.jpg" class="rounded-circle m-r-5">
                                        Patrick Knight</td>
                                    <td>21</td>
                                    <td>Po Box 3336, Commerce, TX, 75429</td>
                                    <td>(785) 580 4514</td>
                                    <td><a href="https://medifab.dreamstechnologies.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="4b3b2a3f392228202025222c233f0b2e332a263b272e65282426">[email&#160;protected]</a></td>
                                    <td class="text-right">
                                        <div class="dropdown dropdown-action">
                                            <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fas fa-ellipsis-v"></i></a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="edit-patient.html"><i class="fas fa-pencil-alt m-r-5"></i>Edit</a>
                                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_patient"><i class="fas fa-trash m-r-5"></i>Delete</a>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <img width="28" height="28" src="assets/img/user.jpg" class="rounded-circle m-r-5">
                                        Denise Stevens</td>
                                    <td>7</td>
                                    <td>1603 Old York Rd, Abington, PA, 19001</td>
                                    <td>(836) 257 1379</td>
                                    <td><a href="https://medifab.dreamstechnologies.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="1470717a7d677167607162717a6754716c75796478713a777b79">[email&#160;protected]</a></td>
                                    <td class="text-right">
                                        <div class="dropdown dropdown-action">
                                            <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fas fa-ellipsis-v"></i></a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="edit-patient.html"><i class="fas fa-pencil-alt m-r-5"></i>Edit</a>
                                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_patient"><i class="fas fa-trash m-r-5"></i>Delete</a>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <img width="28" height="28" src="assets/img/user.jpg" class="rounded-circle m-r-5">
                                        Judy Clark</td>
                                    <td>22</td>
                                    <td>4093 Woodside Circle, Pensacola, FL, 32514</td>
                                    <td>(359) 969 3594</td>
                                    <td><a href="https://medifab.dreamstechnologies.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="8fe5faebf6a1ece3eefde4cfeaf7eee2ffe3eaa1ece0e2">[email&#160;protected]</a></td>
                                    <td class="text-right">
                                        <div class="dropdown dropdown-action">
                                            <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fas fa-ellipsis-v"></i></a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="edit-patient.html"><i class="fas fa-pencil-alt m-r-5"></i>Edit</a>
                                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_patient"><i class="fas fa-trash m-r-5"></i>Delete</a>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <img width="28" height="28" src="assets/img/user.jpg" class="rounded-circle m-r-5">
                                        Dennis Salazar</td>
                                    <td>34</td>
                                    <td>891 Juniper Drive, Saginaw, MI, 48603</td>
                                    <td>(933) 137 6201</td>
                                    <td><a href="https://medifab.dreamstechnologies.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="7d19181313140e0e1c111c071c0f3d18051c100d1118531e1210">[email&#160;protected]</a></td>
                                    <td class="text-right">
                                        <div class="dropdown dropdown-action">
                                            <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fas fa-ellipsis-v"></i></a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="edit-patient.html"><i class="fas fa-pencil-alt m-r-5"></i>Edit</a>
                                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_patient"><i class="fas fa-trash m-r-5"></i>Delete</a>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <img width="28" height="28" src="assets/img/user.jpg" class="rounded-circle m-r-5">
                                        Charles Ortega</td>
                                    <td>32</td>
                                    <td>3169 Birch Street, El Paso, TX, 79915</td>
                                    <td>(380) 141 1885</td>
                                    <td><a href="https://medifab.dreamstechnologies.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="2a49424b58464f5945585e4f4d4b6a4f524b475a464f04494547">[email&#160;protected]</a></td>
                                    <td class="text-right">
                                        <div class="dropdown dropdown-action">
                                            <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fas fa-ellipsis-v"></i></a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="edit-patient.html"><i class="fas fa-pencil-alt m-r-5"></i>Edit</a>
                                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_patient"><i class="fas fa-trash m-r-5"></i>Delete</a>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <img width="28" height="28" src="assets/img/user.jpg" class="rounded-circle m-r-5">
                                        Sandra Mendez</td>
                                    <td>24</td>
                                    <td>2535 Linden Avenue, Orlando, FL, 32789</td>
                                    <td>(797) 506 1265</td>
                                    <td><a href="https://medifab.dreamstechnologies.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="4231232c2630232f272c26273802273a232f322e276c212d2f">[email&#160;protected]</a></td>
                                    <td class="text-right">
                                        <div class="dropdown dropdown-action">
                                            <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fas fa-ellipsis-v"></i></a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="edit-patient.html"><i class="fas fa-pencil-alt m-r-5"></i>Edit</a>
                                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_patient"><i class="fas fa-trash m-r-5"></i>Delete</a>
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
    <div id="delete_patient" class="modal fade delete-modal" role="dialog">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-body text-center">
                    <img src="assets/img/sent.png" alt="" width="50" height="46">
                    <h3>Are you sure want to delete this Patient?</h3>
                    <div class="m-t-20">
                        <a href="#" class="btn btn-white" data-dismiss="modal">Close</a>
                        <button type="submit" class="btn btn-danger">Delete</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

