using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 考研前端系统
{
    public partial class update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            object UserName = Session["UserName"];
            Label1.Text = (String)UserName;
            DataBd();
        }

        void DataBd()
        {
            Sqlclass s = new Sqlclass();
            int postID = Convert.ToInt32(Request["pid"].ToString());
            string sqlStr = "select * from tb_paper where paperID=" + postID;
            //SqlCommand cmd = new SqlCommand(sqlStr, DBhelp.conn);
            DataSet ds = s.GetDataTable(sqlStr);
            
            paperID.Text = ds.Tables[0].Rows[0]["paperID"].ToString();
            Console.WriteLine(ds.Tables[0]);
            papername.Text = ds.Tables[0].Rows[0]["papername"].ToString();
            schoolname.Text = ds.Tables[0].Rows[0]["schoolname"].ToString();
            testyear.Text = ds.Tables[0].Rows[0]["testyear"].ToString();
            if(ds.Tables[0].Rows[0]["SID"].ToString() == "1")
            {
                RadioButton1.Checked = true;
            }
            if (ds.Tables[0].Rows[0]["SID"].ToString() == "2")
            {
                RadioButton2.Checked = true;
            }
            if (ds.Tables[0].Rows[0]["SID"].ToString() == "3")
            {
                RadioButton3.Checked = true;
            }
            if (ds.Tables[0].Rows[0]["SID"].ToString() == "4")
            {
                RadioButton4.Checked = true;
            }

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        //增加
        protected void Button4_Click(object sender, EventArgs e)
        {
            Sqlclass s = new Sqlclass();
            int paperId = int.Parse(paperID.Text.Trim()); ;
            String paperName = papername.Text;
            String schoolName = schoolname.Text;
            String testYear = testyear.Text;
            int Sid = 0;
            if (RadioButton1.Checked)
            {
                Sid = 1;
            }
            if (RadioButton2.Checked)
            {
                Sid = 2;
            }
            if (RadioButton3.Checked)
            {
                Sid = 3;
            }
            if (RadioButton4.Checked)
            {
                Sid = 4;
            }
            string sqlStr = "insert into tb_paper(papername,SID,schoolname,testyear) values('" + paperName + "','" + Sid + "','" + schoolName + "','" + testYear + "')";
            if (s.GetRun(sqlStr) > 0)
            {
                Response.Write("<script>alert('插入成功')</script>");
            } else
            {
                Response.Write("<script>alert('插入失败')</script>");
            }
        }

        //修改
        protected void Button5_Click(object sender, EventArgs e)
        {
            Sqlclass s = new Sqlclass();
            int paperId = int.Parse(paperID.Text.Trim()); ;
            String paperName = papername.Text;
            String schoolName = schoolname.Text;
            String testYear = testyear.Text;
            int Sid = 0;
            if (RadioButton1.Checked)
            {
                Sid = 1;
            }
            if (RadioButton2.Checked)
            {
                Sid = 2;
            }
            if (RadioButton3.Checked)
            {
                Sid = 3;
            }
            if (RadioButton4.Checked)
            {
                Sid = 4;
            }
            string sql = @"update tb_paper set papername='" + paperName + "',SID = '" + Sid + "',schoolname = '" + schoolName + "' where paperID = '" + paperId + "'";
            if (s.GetRun(sql) > 0)
            {
                Response.Write("<script>alert('修改成功')</script>");
            }
            else
            {
                Response.Write("<script>alert('修改失败')</script>");
            }
            DataBd();
        }
    }
}