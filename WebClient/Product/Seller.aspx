<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.Master" AutoEventWireup="true" CodeBehind="Seller.aspx.cs" Inherits="WebClient.Product.Seller" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="background.css" rel="stylesheet" />
    <div class="background1">
        <b>Want to add Medicines:</b>
        <asp:Button ID="Button1" runat="server" BackColor="#33CC33" Height="32px" OnClick="Button1_Click" Text="Add Medicine" Width="102px" />
        <br />
        <br />
    
        <asp:GridView ID="GridView1" CssClass="table table-responsive" GridLines="None" runat="server" OnRowDeleting="GridView1_RowDeleting" DataKeyNames="id" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" Visible="false" />
                <asp:BoundField DataField="CategoryName" HeaderText="Category" />
                <asp:BoundField DataField="BrandName" HeaderText="Brand" />
                <asp:BoundField DataField="MedicineName" HeaderText="Medicine" />
                <asp:BoundField DataField="Type" HeaderText="Tablet" />
                <asp:BoundField DataField="Description" HeaderText="Description" />
                <asp:BoundField DataField="ExpDate" HeaderText="Expiry" DataFormatString = "{0:dd/MM/yyyy}"/>
                <asp:BoundField DataField="Stock" HeaderText="Stocks left" />
                <asp:BoundField DataField="Price" HeaderText="Price" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True">
                <ControlStyle BackColor="Red" />
                </asp:CommandField>
                <asp:CommandField ButtonType="Button" ShowEditButton="True">
                <ControlStyle BackColor="Green" />
                </asp:CommandField>

            </Columns>
        </asp:GridView>

        </div>
       

    
</asp:Content>

