<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.Master" AutoEventWireup="true" CodeBehind="Seller.aspx.cs" Inherits="WebClient.Product.Seller" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <p>
        Category:
        <asp:DropDownList ID="Categories" runat="server">
            <asp:ListItem>Antibiotics</asp:ListItem>
            <asp:ListItem>Antifungals</asp:ListItem>
            <asp:ListItem>Antidepressants</asp:ListItem>
            <asp:ListItem>Antibacterials</asp:ListItem>
            <asp:ListItem>Antipyretics</asp:ListItem>
            <asp:ListItem>Antivirals</asp:ListItem>
        </asp:DropDownList>
    </p>

    <p>
        Brand Name:
        <asp:TextBox ID="Brandnm" runat="server"></asp:TextBox>
    </p>
    <p>
        Medicine Name:
        <asp:TextBox ID="Medicinenm" runat="server"></asp:TextBox>
    </p>
    <p>
        Type:
        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Type"/>
&nbsp;Tablet <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Type" />
        Liquid</p>
    <p>
        Description:
        <asp:TextBox ID="Desc" runat="server" TextMode="MultiLine"></asp:TextBox>
    </p>
    <p>
        Expiry date:
        <asp:TextBox ID="Expdate" runat="server" TextMode="DateTime"></asp:TextBox>
    </p>
    <p>
        Stock:
        <asp:TextBox ID="quantity" runat="server" TextMode="Number"></asp:TextBox>
&nbsp;</p>
    <p>
        Price:
        <asp:TextBox ID="Price" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" BackColor="#00CC00" OnClick="Button1_Click" Text="Add" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" BackColor="Red" OnClick="Button2_Click" Text="Clear" />
    </p>
    <p>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
        
        <asp:GridView ID="GridView1" runat="server" OnRowDeleting="GridView1_RowDeleting" DataKeyNames="id">
            <Columns>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True">
                <ControlStyle BackColor="Red" />
                </asp:CommandField>
            </Columns>
        </asp:GridView>
        
    </p>
    <p>
        &nbsp;</p>


    
</asp:Content>

