<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site1.Master" AutoEventWireup="true" CodeBehind="regist.aspx.cs" Inherits="FinalProject.Pages.regist" %>
<%@ Register src="../Controls/ctrl_registration.ascx" tagname="Register" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:Register ID="Register1" runat="server" />
</asp:Content>
