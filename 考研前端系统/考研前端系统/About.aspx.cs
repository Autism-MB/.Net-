using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace 考研前端系统
{
    public partial class About : Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            Sqlclass s = new Sqlclass();
            object UserName = Session["UserName"];
            string userName = (String)UserName;
            Label3.Text = userName;
            object modified = Session["modified"];
            Label4.Text = (String)modified;
            string sqlStr = "select * from tb_student where userName= '" + userName + "'";
            DataSet ds = s.GetDataTable(sqlStr);
            if(ds.Tables[0].Rows.Count > 0)
            {
                username.Text = ds.Tables[0].Rows[0]["userName"].ToString();
                pwd.Text = ds.Tables[0].Rows[0]["pwd"].ToString();
                stuName.Text = ds.Tables[0].Rows[0]["stuName"].ToString();
                schoolname.Text = ds.Tables[0].Rows[0]["shoolName"].ToString();
                birthday.Text = ds.Tables[0].Rows[0]["birthday"].ToString();
                createdate.Text = ds.Tables[0].Rows[0]["createdate"].ToString();
                Tel.Text = ds.Tables[0].Rows[0]["Tel"].ToString();
                email.Text = ds.Tables[0].Rows[0]["email"].ToString();
                if (ds.Tables[0].Rows[0]["Sex"].ToString() == "男")
                {
                    RadioButton1.Checked = true;
                }
                if (ds.Tables[0].Rows[0]["Sex"].ToString() == "女")
                {
                    RadioButton2.Checked = true;
                }
            }
        }




        protected void Button1_Click1(object sender, EventArgs e)
        {
            Sqlclass s = new Sqlclass();

        }
    }
}