<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="update.aspx.cs" Inherits="考研前端系统.update" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <div class="row">
            <div class="col-sm-4 bg-light">
                <div style="margin-left: 30px;line-height: 40px; /*垂直居中 */">
                你好 <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </div>
                <asp:Label ID="Label3" runat="server" Text="用户："></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Text="密码："></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
                <br />
                <div style="padding-top: 20px">
                    <asp:Button ID="Button1" runat="server" Text="登录" class="btn btn-success" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="清空" class="btn btn-danger" />
                </div>
                <div style="padding-top: 20px">
                     <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="SID" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="SID" HeaderText="编号" InsertVisible="False" ReadOnly="True" SortExpression="SID" />
                        <asp:BoundField DataField="sname" HeaderText="试卷类型" SortExpression="sname" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:kaoyanConnectionString %>" SelectCommand="SELECT * FROM [tb_subject]"></asp:SqlDataSource>
                </div>
            </div>
            <div class="col-sm-8 bg-light">
                <div class="col-md-12">
                    
    <div class="container" style="padding-top: 40px">
     <div class="form-group row">
    <label for="inputEmail3" class="col-sm-2 col-form-label">编号</label>
    <div class="col-sm-10">
       <asp:TextBox ID="paperID" runat="server" class="form-control" Enabled="false"></asp:TextBox>
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword3" class="col-sm-2 col-form-label">试卷名称</label>
    <div class="col-sm-10">
        <asp:TextBox ID="papername" runat="server" class="form-control" style="width: 600px"></asp:TextBox>
    </div>
  </div>
        <div class="form-group row">
    <label for="inputPassword3" class="col-sm-2 col-form-label">学校名字</label>
    <div class="col-sm-10">
      <asp:TextBox ID="schoolname" runat="server" class="form-control" style="width: 600px"></asp:TextBox>
    </div>
  </div>
        <div class="form-group row">
    <label for="inputPassword3" class="col-sm-2 col-form-label">考试年份</label>
    <div class="col-sm-10">
        <asp:TextBox ID="testyear" runat="server" class="form-control" style="width: 600px"></asp:TextBox>
    </div>
  </div>
  <fieldset class="form-group row">
    <legend class="col-form-label col-sm-2 float-sm-left pt-0">SID</legend>
    <div class="col-sm-10">
      <div class="form-check">
            <asp:RadioButton ID="RadioButton1" runat="server" class="form-check-input"  GroupName="SID" />
            <label class="form-check-label">
                数一

            </label>
        </div>
      <div class="form-check">
          <asp:RadioButton ID="RadioButton2" runat="server" class="form-check-input" GroupName="SID" />
        <label class="form-check-label">
          英语一
        </label>
      </div>
      <div class="form-check disabled">
          <asp:RadioButton ID="RadioButton3" runat="server" class="form-check-input" GroupName="SID" />
        <label class="form-check-label">
          政治
        </label>
      </div>
        <div class="form-check disabled">
            <asp:RadioButton ID="RadioButton4" runat="server" class="form-check-input" GroupName="SID" />
        <label class="form-check-label">
          基础综合
        </label>
      </div>
    </div>
  </fieldset>
  <div class="form-group row">
    <div class="col-sm-6">
      <asp:Button ID="Button4" runat="server" Text="增加" class="btn btn-success" OnClick="Button4_Click" />
    </div>
    <div class="col-sm-6">
        <asp:Button ID="Button5" runat="server" Text="修改" class="btn btn-primary" OnClick="Button5_Click" />
    </div>
  </div>
    
    </div>
                </div>
            </div>
        </div>            
    </div>
</asp:Content>
