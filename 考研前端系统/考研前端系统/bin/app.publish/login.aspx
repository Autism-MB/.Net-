<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="考研前端系统.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        .style1 {
            font-family: 华文楷体;
            font-size: xx-large;
            font-weight: bold;
        }
        body {

            background-image: url(./界面设计/QQ图片20201127125629.png);

            background-size:100% 100%;

            background-repeat: no-repeat;

            background-attachment: fixed;
        }
    </style>
    
     <div align="center" style="height: 274px">
          <br />
            <span class="style1">考研前端刷题系统<br />
                 <br />
            </span>
            <asp:Label ID="Label1" runat="server" Text="用户："></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="密码："></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="登录" OnClick="Button1_Click" class="btn btn-success" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="清空" OnClick="Button2_Click" class="btn btn-danger" />

        </div>
</asp:Content>
