<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site1.Master" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="FinalProject.AdminPage.Welcome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/AdminPage/Welcome.aspx">Home</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/AdminPage/ManageRoles.aspx">Manage Roles</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/AdminPage/ManageCourse.aspx">Manage Courses</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:LinkButton ID="btn_signout" runat="server" OnClick="btn_signout_Click">Signout</asp:LinkButton>
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br />
<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="Larger" Font-Strikeout="False" ForeColor="#000066" Text="Welcome To Admin Page"></asp:Label>
<br />
</asp:Content>
