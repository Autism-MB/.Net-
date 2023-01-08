<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="考研前端系统._Default" %>

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
                学校
                <asp:TextBox ID="TextBox3" runat="server" SkinID="Title" Width="92px"/>&nbsp; 科目
                <asp:DropDownList ID="DropDownList1" runat="server" Width="100px" Height="16px" DataSourceID="SqlDataSource1" DataTextField="papername" DataValueField="SID"  >
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kaoyanConnectionString %>" SelectCommand="SELECT [SID], [papername] FROM [tb_Paper]"></asp:SqlDataSource>
                &nbsp;年份
                <asp:TextBox ID="TextBox4" runat="server" SkinID="Title" Width="92px"/>&nbsp;
                <asp:Button ID="Button3" runat="server" Text="搜索" OnClick="Button3_Click" />
                
             <div style="padding-top: 30px">
    
                <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both" Width="650px">
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <HeaderTemplate>
                     <table class="table">
                         <tr>
                            <td  style="width :80px">编号</td>
                            <td style="width :300px">试卷年份</td>
                            <td style="width :260px">试卷标题</td>
                            <td style="width :80px">详细信息</td>
                        </tr>
                    </table>
                    </HeaderTemplate>
                     <ItemStyle BackColor="White" ForeColor="#003399" />
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td style="width :80px">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("paperID") %>'></asp:Label>
                        </td>
                        <td style="width :400px"><%# Eval("papername") %></td>
                        <td style="width :300px"><%# Eval("schoolname") %></td>
                        <td style="width :80px"><a href='update.aspx?pid=<%# Eval("paperID") %>'>查看</a></td>
                        <td style="width :80px"><asp:LinkButton ID="LinkButton5" runat="server" OnClick="DgInfo_ItemCommand" CommandArgument='<%#Eval("paperID")%>'>删除</asp:LinkButton></td>
                    </tr>
                </table>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        </asp:DataList>
        <br />
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">首页</asp:LinkButton>
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">上一页</asp:LinkButton>
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">下一页</asp:LinkButton>
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">尾页</asp:LinkButton>
                </td>
                <td>当前【<asp:Label ID="lbCurrent" runat="server" Text="1"></asp:Label>
                    】页</td>
                <td>总页数【<asp:Label ID="lbCount" runat="server"></asp:Label>
                    】</td>
            </tr>
        </table>
    
    </div>
            </div>
          </div>
    </div>
</asp:Content>
