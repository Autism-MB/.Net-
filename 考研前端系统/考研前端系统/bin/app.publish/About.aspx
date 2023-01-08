<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="考研前端系统.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  
    <div class="jumbotron">
        <div class="container">
             <div class="row">
        <div class="col-md-5">
            <img decoding="async" src="/Scripts/img/autism.jpg" class="img-circle" width="304" height="236">
            <br />
            <div class="form-group" style="padding-top: 30px">
                <label for="name">当前用户：</label>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </div>
            <div>
                <label for="modified">用户身份：</label>
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            </div>
        </div>
        <div class="col-md-7">
            <!-- 输入框 -->
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">用户名：</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="username" runat="server" class="form-control" style="width: 600px"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">密码：</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="pwd" runat="server" class="form-control" TextMode="Password" style="width: 600px"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">学生名称：</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="stuName" runat="server" class="form-control" style="width: 600px"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">学校名称：</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="schoolname" runat="server" class="form-control" style="width: 600px"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">出生日期：</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="birthday" runat="server" class="form-control" style="width: 600px"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">创建时间：</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="createdate" runat="server" class="form-control" style="width: 600px"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">手机号码：</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="Tel" runat="server" class="form-control" style="width: 600px"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">邮箱：</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="email" runat="server" class="form-control" style="width: 600px"></asp:TextBox>
                </div>
            </div>
            <fieldset class="form-group row">
    <legend class="col-form-label col-sm-2 float-sm-left pt-0">性别：</legend>
    <div class="col-sm-10">
      <div class="form-check disabled">
          <asp:RadioButton ID="RadioButton1" runat="server" class="form-check-input" GroupName="Sex" />
        <label class="form-check-label">
          男
        </label>
      </div>
        <div class="form-check disabled">
            <asp:RadioButton ID="RadioButton2" runat="server" class="form-check-input" GroupName="Sex" />
        <label class="form-check-label">
          女
        </label>
      </div>
    </div>
  </fieldset>
            <!-- 提交按钮 -->
            <asp:Button ID="Button1" runat="server" Text="修改" OnClick="Button1_Click1" class="btn btn-primary" />
           
        </div>
     
    </div>
    </div>
    </div>
</asp:Content>
