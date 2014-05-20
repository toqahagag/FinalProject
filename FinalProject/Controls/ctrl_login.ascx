<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ctrl_login.ascx.cs" Inherits="FinalProject.Controls.Loginc" %>
<asp:Login ID="Login1" runat="server" CreateUserText="SignUp" CreateUserUrl="~/Pages/regist.aspx" DestinationPageUrl="~/AdminPage/Welcome.aspx"  OnLoggedIn="Login1_LoggedIn">
</asp:Login>

