<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site1.Master" AutoEventWireup="true" CodeBehind="ManageCourse.aspx.cs" Inherits="FinalProject.AdminPage.ManageCourse" %>

<%@ Register Src="~/Controls/ctrl_ManageCourse.ascx" TagPrefix="uc1" TagName="ManageCourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ManageCourse runat="server" ID="ManageCourse" />
</asp:Content>
