<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.Master" AutoEventWireup="true" CodeBehind="Consumer.aspx.cs" Inherits="WebClient.Product.Consumer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:GridView ID="GridView1" runat="server" DataKeyNames="id">
            <Columns>
               <asp:TemplateField HeaderText="Quantity" ShowHeader="False">  
                   <ItemTemplate>  
                       <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>  
                   </ItemTemplate>  
               </asp:TemplateField>  
                
           </Columns>
        </asp:GridView>
    </p>
<p>
        <asp:Label ID="Label1" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server"></asp:Label>
    </p>
<p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Purchase" />
&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Clear" />
    </p>
<p>
        &nbsp;</p>
</asp:Content>
