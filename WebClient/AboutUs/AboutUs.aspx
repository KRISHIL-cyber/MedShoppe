<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="WebClient.AboutUs.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="AboutUs.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    
    
    <div class="background1">
        <div class="container p-5">
            <div class="row">
                <div class="col-sm-5">
                    <div class="card h-100 shadow-sm">
                        <div class="text-center">
                            <div class="img-hover-zoom img-hover-zoom--colorize">
                                <img class="shadow" src="./krishil.jpeg"
                                    alt="Another Image zoom-on-hover effect">
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="clearfix mb-3">
                            </div>
                            <div class="my-2 text-center">
                                <h3>Krishil Patel</h3>
                            </div>
                            <div class="box">
                                <div>
                                    <ul class="list-inline">
                                        <li class="list-inline-item"><a href="https://github.com/KRISHIL-cyber"><i class="fab fa-github fa-2x"></i></a></li>
                                        <li class="list-inline-item"><a href="https://www.linkedin.com/in/krishil-patel/"><i class="fab fa-linkedin fa-2x"></i></a></li>
                                        <li class="list-inline-item"><a href="https://www.instagram.com/krishil005/"><i class="fab fa-instagram fa-2x"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-2"></div>

                <div class="col-sm-5">
                    <div class="card h-100 shadow-sm">
                        <div class="text-center">
                            <div class="img-hover-zoom img-hover-zoom--colorize">
                                <img class="shadow" src="./luv.png"
                                    alt="Another Image zoom-on-hover effect">
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="clearfix mb-3">
                            </div>
                            <div class="my-2 text-center">
                                <h3>Luv Patel</h3>
                            </div>
                            <div class="box">
                                <div>
                                    <ul class="list-inline">
                                        <li class="list-inline-item"><a href="https://github.com/"><i class="fab fa-github fa-2x"></i></a></li>
                                        <li class="list-inline-item"><a href="https://www.linkedin.com/"><i class="fab fa-linkedin fa-2x"></i></a></li>
                                        <li class="list-inline-item"><a href="https://www.instagram.com/"><i class="fab fa-instagram fa-2x"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
