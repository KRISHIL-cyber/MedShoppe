﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="WebClient.User.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Login.css" rel="stylesheet" />
    <style type="text/css">
        #TextArea1 {
            height: 62px;
            width: 244px;
        }
    </style>
</head>

<body class="align">

  <div class="grid">

    <form id="form1" runat="server" class="form login">

      <div class="form__field">
        <label for="login__username"><svg class="icon">
            <use xlink:href="#icon-user"></use>
          </svg><span class="hidden">Username</span></label>
        <%--<input autocomplete="username" id="login__username" type="text" name="username" class="form__input" placeholder="Username" required>--%>
          <asp:TextBox  ID="TextBox1" runat="server" class="form__input" placeholder="Username" required="required"></asp:TextBox>
      </div>

      <div class="form__field">
        <label for="login__username"><svg class="icon">
            <use xlink:href="#icon-mail"></use>
          </svg><span class="hidden">Email</span></label>
        <%--<input id="login__password" type="password" name="password" class="form__input" placeholder="Password" required>--%>
          <asp:TextBox ID="TextBox2" runat="server"  class="form__input" placeholder="Email" required="required"></asp:TextBox>
      </div>

        <div class="form__field">
        <label for="login__password"><svg class="icon">
            <use xlink:href="#icon-lock"></use>
          </svg><span class="hidden">Password</span></label>
        <%--<input autocomplete="username" id="login__username" type="text" name="username" class="form__input" placeholder="Username" required>--%>
          <asp:TextBox  ID="TextBox3" runat="server" TextMode="Password"  class="form__input" placeholder="Password" required="required"></asp:TextBox>
      </div>

        <div class="form__field">
        <label for="login__username"><svg class="icon">
            <use xlink:href="#icon-lock"></use>
          </svg><span class="hidden">Confirm Password</span></label>
        <%--<input autocomplete="username" id="login__username" type="text" name="username" class="form__input" placeholder="Username" required>--%>
          <asp:TextBox  ID="TextBox4" runat="server" TextMode="Password" class="form__input" placeholder="Confirm Password" required="required"></asp:TextBox>
      </div>

        <div class="form__field">
        <label for="login__username"><svg class="icon">
            <use xlink:href="#icon-user"></use>
          </svg><span class="hidden">Mobile Number</span></label>
        <%--<input autocomplete="username" id="login__username" type="text" name="username" class="form__input" placeholder="Username" required>--%>
          <asp:TextBox  ID="TextBox5" runat="server" class="form__input" placeholder="Mobile number" required="required"></asp:TextBox>
      </div>

        <div class="form__field">
        <label for="login__username"><svg class="icon">
            <use xlink:href="#icon-user"></use>
          </svg><span class="hidden">Address</span></label>
        <%--<input autocomplete="username" id="login__username" type="text" name="username" class="form__input" placeholder="Username" required>--%>
           <textarea id="TextArea1" name="S1" class="form__input"  placeholder="Address aapo" runat="server"></textarea>
      </div>

        <div class="form__field">
        <label for="login__username"><svg class="icon">
            <use xlink:href="#icon-user"></use>
          </svg><span class="hidden">Are you seller?</span></label>
        <%--<input autocomplete="username" id="login__username" type="text" name="username" class="form__input" placeholder="Username" required>--%>
          <asp:CheckBox ID="CheckBox1" runat="server" class="form__input"/>
      </div>



      <div class="form__field">
          <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Sign Up" />
      </div>

    </form>

    <p class="text--center">Already a member? <a href="/User/Login.aspx">Login here</a> <svg class="icon">
        <use xlink:href="#icon-arrow-right"></use>
      </svg></p>

  </div>

  <svg xmlns="http://www.w3.org/2000/svg" class="icons">
    <symbol id="icon-arrow-right" viewBox="0 0 1792 1792">
      <path d="M1600 960q0 54-37 91l-651 651q-39 37-91 37-51 0-90-37l-75-75q-38-38-38-91t38-91l293-293H245q-52 0-84.5-37.5T128 1024V896q0-53 32.5-90.5T245 768h704L656 474q-38-36-38-90t38-90l75-75q38-38 90-38 53 0 91 38l651 651q37 35 37 90z" />
    </symbol>
    <symbol id="icon-lock" viewBox="0 0 1792 1792">
      <path d="M640 768h512V576q0-106-75-181t-181-75-181 75-75 181v192zm832 96v576q0 40-28 68t-68 28H416q-40 0-68-28t-28-68V864q0-40 28-68t68-28h32V576q0-184 132-316t316-132 316 132 132 316v192h32q40 0 68 28t28 68z" />
    </symbol>
    <symbol id="icon-user" viewBox="0 0 1792 1792">
      <path d="M1600 1405q0 120-73 189.5t-194 69.5H459q-121 0-194-69.5T192 1405q0-53 3.5-103.5t14-109T236 1084t43-97.5 62-81 85.5-53.5T538 832q9 0 42 21.5t74.5 48 108 48T896 971t133.5-21.5 108-48 74.5-48 42-21.5q61 0 111.5 20t85.5 53.5 62 81 43 97.5 26.5 108.5 14 109 3.5 103.5zm-320-893q0 159-112.5 271.5T896 896 624.5 783.5 512 512t112.5-271.5T896 128t271.5 112.5T1280 512z" />
    </symbol>
  </svg>

</body>
<%--<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <br />
        Uname&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :<asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        Confirm Password:
        <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        Mobilenum&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        <br />
        Address:
        <textarea id="TextArea1" name="S1" runat="server"></textarea><br />
        <br />
&nbsp;Are you a seller?
        <asp:CheckBox ID="CheckBox1" runat="server" />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Sign Up" />
&nbsp;
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </form>
</body>--%>
</html>
