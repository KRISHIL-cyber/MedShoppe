<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.Master" AutoEventWireup="true" CodeBehind="AddMedicine.aspx.cs" Inherits="WebClient.Product.AddMedicine" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 30px;
        }
        .auto-style2 {
            height: 31px;
        }
        .auto-style3 {
            height: 30px;
            width: 181px;
        }
        .auto-style5 {
            height: 31px;
            width: 181px;
        }
        .auto-style6 {
            width: 181px
        }
        .auto-style7 {
            height: 30px;
            width: 480px;
        }
        .auto-style9 {
            height: 31px;
            width: 480px;
        }
        .auto-style10 {
            width: 480px
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="background1">
        <table class="nav-justified" >
            <tr>
                <td class="auto-style3">Category Name</td>
                <td class="auto-style7">
        <asp:DropDownList ID="Categories" runat="server">
            <asp:ListItem>Antibiotics</asp:ListItem>
            <asp:ListItem>Antifungals</asp:ListItem>
            <asp:ListItem>Antidepressants</asp:ListItem>
            <asp:ListItem>Antibacterials</asp:ListItem>
            <asp:ListItem>Antipyretics</asp:ListItem>
            <asp:ListItem>Antivirals</asp:ListItem>
        </asp:DropDownList>
                    <br />
&nbsp;<br />
                </td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style3">Brand Name</td>
                <td class="auto-style7">
        <asp:TextBox ID="Brandnm" runat="server" Height="28px" Width="173px"></asp:TextBox>
                    <br />
                    <br />
                </td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style3">Medicine Name</td>
                <td class="auto-style7">
        <asp:TextBox ID="Medicinenm" runat="server" Height="28px" Width="171px"></asp:TextBox>
                    <br />
                    <br />
                </td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style6">Type</td>
                <td class="auto-style10">
        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Type"/>
&nbsp;Tablet <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Type" />
        Liquid<br />
                    <br />
                </td>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Description</td>
                <td class="auto-style10">
        <asp:TextBox ID="Desc" runat="server" TextMode="MultiLine" Height="75px" Width="178px"></asp:TextBox>
                    <br />
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Expiry Date</td>
                <td class="auto-style9">
        <asp:TextBox ID="Expdate" runat="server" TextMode="DateTime" Height="26px" Width="109px"></asp:TextBox>
                    <br />
                    <br />
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style6">Stock</td>
                <td class="auto-style10">
        <asp:TextBox ID="quantity" runat="server" TextMode="Number" Height="32px" Width="52px"></asp:TextBox>
                    <br />
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">Price</td>
                <td class="auto-style10">
        <asp:TextBox ID="Price" runat="server" Height="25px" Width="78px"></asp:TextBox>
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;<asp:Button ID="Button1" runat="server" BackColor="#00CC00" OnClick="Button1_Click" Text="Add" />
                </td>
                <td class="auto-style10">
        <asp:Button ID="Button2" runat="server" BackColor="Red" OnClick="Button2_Click" Text="Clear" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <p>
        &nbsp;</p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        </div>
</asp:Content>
