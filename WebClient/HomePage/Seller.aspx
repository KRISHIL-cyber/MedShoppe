<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage/Site1.Master" AutoEventWireup="true" CodeBehind="Seller.aspx.cs" Inherits="WebClient.HomePage.Seller" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StoreManagementConnectionString %>" SelectCommand="SELECT * FROM [Medicines]"></asp:SqlDataSource>
    <br />
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
    &nbsp;</p>
</asp:Content>
