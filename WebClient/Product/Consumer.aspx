<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.Master" AutoEventWireup="true" CodeBehind="Consumer.aspx.cs" Inherits="WebClient.Product.Consumer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
    .hideGridColumn
    {
        display:none;
    }
 </style>
    <div class ="background1">
        <asp:GridView ID="GridView1" CssClass="table table-responsive"  runat="server" DataKeyNames="id"  AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" HeaderStyle-CssClass = "hideGridColumn" ItemStyle-CssClass="hideGridColumn"/>
                <asp:BoundField DataField="CategoryName" HeaderText="Category" />
                <asp:BoundField DataField="BrandName" HeaderText="Brand" />
                <asp:BoundField DataField="MedicineName" HeaderText="Medicine" /> 
                <asp:BoundField DataField="Type" HeaderText="Tablet" />
                <asp:BoundField DataField="Description" HeaderText="Description" />
                <asp:BoundField DataField="ExpDate" HeaderText="Expiry" DataFormatString = "{0:dd/MM/yyyy}"/>
                <asp:BoundField DataField="Stock" HeaderText="Stocks left" />
                <asp:BoundField DataField="Price" HeaderText="Price" />
               <asp:TemplateField HeaderText="Quantity" ShowHeader="False">  
                   <ItemTemplate>  
                       <asp:TextBox ID="TextBox1" Width="50px" runat="server"></asp:TextBox>  
                   </ItemTemplate>  
               </asp:TemplateField>  
                
           </Columns>
        </asp:GridView>
<p>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </p>
<p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Purchase" />
&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Clear" />
    </p>
<p>
        &nbsp;</p>
        </div>
</asp:Content>
