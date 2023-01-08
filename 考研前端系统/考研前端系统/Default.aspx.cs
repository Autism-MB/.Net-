using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace 考研前端系统
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            object UserName = Session["UserName"];
            Label1.Text = (String)UserName;
            ListBd();
        }

        private void ListBd()
        {

            try
            {
                Sqlclass s = new Sqlclass();
                string sqlStr = "select * from tb_paper";
                DataSet ds = new DataSet();
                ds = s.GetDataTable(sqlStr);
                //创建一个PagedDataSource对象，用来处理分页
                PagedDataSource pds = new PagedDataSource();
                int currentPage = int.Parse(lbCurrent.Text);    //获取当前页
                pds.DataSource = ds.Tables[0].DefaultView;      //获取pds对象的数据源
                pds.AllowPaging = true;                         //允许分页
                pds.PageSize = 10;                                   //每页显示3条记录
                pds.CurrentPageIndex = currentPage - 1;         //设置当前页的索引值
                                                                //设置4个LinkButton控件的初始值
                LinkButton1.Enabled = true;
                LinkButton2.Enabled = true;
                LinkButton3.Enabled = true;
                LinkButton4.Enabled = true;
                //当前页为第一页，首页和上一页将不可用
                if (currentPage == 1)
                {
                    LinkButton1.Enabled = false;
                    LinkButton2.Enabled = false;
                }
                //当前页为尾页，尾页和下一页将不可用
                if (currentPage == pds.PageCount)
                {
                    LinkButton3.Enabled = false;
                    LinkButton4.Enabled = false;
                }
                lbCount.Text = Convert.ToString(pds.PageCount);
                DataList1.DataSource = pds;
                //绑定DataList控件，数据源为PagedDataSource对象
                DataList1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
               
            }

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            lbCurrent.Text = "1";
            this.ListBd();
        }
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            lbCurrent.Text = Convert.ToString(Convert.ToInt32(lbCurrent.Text) - 1);
            this.ListBd();
        }
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            lbCurrent.Text = Convert.ToString(Convert.ToInt32(lbCurrent.Text) + 1);
            this.ListBd();
        }
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            lbCurrent.Text = lbCount.Text;
            this.ListBd();
        }
        
        protected void Button3_Click(object sender, EventArgs e)
        {
            Sqlclass s = new Sqlclass();
            string condstr = "select * from tb_Paper where 1=1 ";
            if (TextBox3.Text.Trim() != string.Empty)
            {
                condstr = condstr + " and schoolname like '%" + TextBox3.Text.Trim() + "%'";
            }
            if (TextBox4.Text.Trim() != string.Empty)
            {
                condstr = condstr + " and testyear='" + TextBox4.Text.Trim() + "'";
            }
            if (DropDownList1.SelectedValue != string.Empty)
            {
                condstr = condstr + " and SID=" + DropDownList1.SelectedValue;
            }
            DataList1.DataSource = s.GetDataTable(condstr);
            DataList1.DataBind();
        }

        protected void DgInfo_ItemCommand(object sender, EventArgs e)
        {
            Sqlclass s = new Sqlclass();
            LinkButton btn = (LinkButton)sender;
            string sql = "delete from  tb_paper   where paperID=" + btn.CommandArgument.ToString();
            if(s.GetRun(sql) > 0)
            {
                Response.Write("<script language='javascript'>alert('删除成功!');window.location.href='Default.aspx';</script>");
            } else
            {
                Response.Write("<script language='javascript'>alert('删除失败!');window.location.href='Default.aspx';</script>");
            }
            }
        }

}