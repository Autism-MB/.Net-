<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="考研前端系统.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <div class="container">
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
                 学校
                <asp:TextBox ID="TextBox3" runat="server" SkinID="Title" Width="92px"/>&nbsp; 科目
                <asp:DropDownList ID="DropDownList1" runat="server" Width="100px" Height="16px" DataSourceID="SqlDataSource1" DataTextField="papername" DataValueField="SID"  >
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kaoyanConnectionString %>" SelectCommand="SELECT [SID], [papername] FROM [tb_Paper]"></asp:SqlDataSource>
                &nbsp;年份
                <asp:TextBox ID="TextBox4" runat="server" SkinID="Title" Width="92px"/>&nbsp;
                <asp:Button ID="Button3" runat="server" Text="搜索" />
                 <div style="padding-top: 50px">
                     <h4 style="padding-left: 280px; font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif">试题内容</h4>
                 <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both" Width="650px" DataKeyField="QID" DataSourceID="SqlDataSource3" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    
                     <ItemStyle BackColor="White" ForeColor="#003399" />
                     <ItemTemplate>
                         编号:
                         <asp:Label ID="QIDLabel" runat="server" Text='<%# Eval("QID") %>' />
                         <br />
                         内容:
                         <br />
                         <asp:Label ID="contentLabel" runat="server" Text='<%# Eval("content") %>' />
                         <br />
                         类型:
                         <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                         <br />
                         选项:
                         <asp:Label ID="optionsLabel" runat="server" Text='<%# Eval("options") %>' />
                         <br />
                         得分:
                         <asp:Label ID="scoreLabel" runat="server" Text='<%# Eval("score") %>' />
                         <br />
                         <asp:LinkButton runat="server" Text="开始作答"></asp:LinkButton>
                         <br />
                     </ItemTemplate>
            <SelectedItemStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        </asp:DataList>
                 <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:kaoyanConnectionString2 %>" SelectCommand="SELECT [QID], [content], [type], [options], [paperID], [score], [ECID] FROM [tb_questions]"></asp:SqlDataSource>
                     </div>
             </div>
         </div>
     </div>
</asp:Content>
