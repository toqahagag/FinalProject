<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ctrl_ManageCourse.ascx.cs" Inherits="FinalProject.Controls.ManageCourse" %>
<p>
    &nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/AdminPage/Welcome.aspx">Home</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/AdminPage/ManageRoles.aspx">Manage Roles</asp:LinkButton>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/AdminPage/ManageCourse.aspx">ManageCourses</asp:LinkButton>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="btn_signout" runat="server" OnClick="btn_signout_Click">Signout</asp:LinkButton>
&nbsp;</p>
<p>
    <asp:Label ID="Label1" runat="server" Text="Course Name"></asp:Label>
    <asp:DropDownList ID="ddl" runat="server" AutoPostBack="True" DataSourceID="EntityDataSource1" DataTextField="Name" DataValueField="Id" OnSelectedIndexChanged="ddl_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=OnlineExamEntities" DefaultContainerName="OnlineExamEntities" EnableFlattening="False" EntitySetName="Course">
    </asp:EntityDataSource>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="sel_btn" runat="server" OnClick="sel_btn_Click" Text="Find" />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="name_tb" runat="server"></asp:TextBox>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <asp:Label ID="Label4" runat="server" Text="Duration "></asp:Label>
    &nbsp;<asp:TextBox ID="du_tb" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label5" runat="server" Text="Instructor"></asp:Label>
&nbsp;&nbsp;
    <asp:CheckBoxList ID="CheckBoxList1" runat="server">
    </asp:CheckBoxList>
    <br />
    <asp:Button ID="Create" runat="server" OnClick="Create_Click" Text="Create" />
    &nbsp;&nbsp;
    <asp:Button ID="Edit" runat="server" OnClick="Edit_Click" Text="Edit" />
    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="Delete" runat="server" OnClick="Delete_Click" Text="Delete" />
</p>

