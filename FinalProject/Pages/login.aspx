<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="FinalProject.Pages.Login" %><%@ Register src="../Controls/ctrl_login.ascx" tagname="Loginc" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:Loginc ID="Loginc1" runat="server" />
</asp:Content>
