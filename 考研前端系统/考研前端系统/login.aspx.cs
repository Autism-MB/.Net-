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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.Trim().Length == 0)
            {
                Response.Write("<script>alert('用户不能为空！')</script>");
                return;
            }
            else if (TextBox2.Text.Trim() == string.Empty)
            {
                Response.Write("<script>alert('密码不能为空！')</script>");
                return;
            }
            else
            {
                string uname = TextBox1.Text;
                string pwd = TextBox2.Text;

                string sqlstr = "server=localhost;DataBase=kaoyan;Integrated Security=True";
                SqlConnection con = new SqlConnection(sqlstr);
                string sql = "select count(1) from tb_student where userName=@name and pwd=@pwd";

                SqlCommand cmd = new SqlCommand(sql, con);
                con.Open();

                SqlParameter p1 = new SqlParameter("@name", uname);
                SqlParameter p2 = new SqlParameter("@pwd", pwd);
                cmd.Parameters.Add(p1);
                cmd.Parameters.Add(p2);
                try
                {
                    int count = Convert.ToInt32(cmd.ExecuteScalar());
                    if (count > 0)
                    {
                        Session["UserName"] = TextBox1.Text; //使用Session变量记录用户名 
                        Session["modified"] = "考研人";
                        Session["TimeLogin"] = DateTime.Now; //使用Session变量记录用户登录系统的时间 
                        Response.Write("<script>alert('登录成功！,')'</script>");
                        Response.Redirect("Default.aspx"); //跳转到主页
                    }
                    else
                    {
                        Response.Write("<script>alert('登录失败!请返回查找原因')'</script>");
                    }

                }
                catch (Exception)
                {

                    // throw;抛出异常
                }
                finally
                {
                    con.Close();
                }
            }



        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["UserName"] = null;
            Session["modified"] = null;
            Session["TimeLogin"] = null;
            ClearClientPageCache();
            //清除浏览器缓存
            TextBox1.Text = "";
            TextBox2.Text = "";
            Response.Redirect("login.aspx");
        }

        public void ClearClientPageCache()
        {
            //清除浏览器缓存
            Response.Buffer = true;
            Response.ExpiresAbsolute = DateTime.Now.AddDays(-1);
            Response.Cache.SetExpires(DateTime.Now.AddDays(-1));
            Response.Expires = 0;
            Response.CacheControl = "no-cache";
            Response.Cache.SetNoStore();
        }
    }

}