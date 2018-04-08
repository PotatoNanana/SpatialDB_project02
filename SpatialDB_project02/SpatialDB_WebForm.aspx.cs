using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string connectionstr = ConfigurationManager.ConnectionStrings["dbconnect"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(connectionstr))
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = conn;
                    cmd.CommandText = "searchCountry";
                    cmd.CommandType = CommandType.StoredProcedure;

                    if (TextBox1.Value.Trim() != "")
                    {
                        SqlParameter param = new SqlParameter("@country", TextBox1.Value);
                        cmd.Parameters.Add(param);
                    }
                    else
                    {
                        string script = "alert(\"PLEASE ENTER YOUR COUNTRY NAME\");";
                        ScriptManager.RegisterStartupScript(this, GetType(),
                                              "ServerControlScript", script, true);
                    }

                    conn.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();
                    gvSearchResults.DataSource = rdr;
                    gvSearchResults.DataBind();
                }
            }

            catch (Exception ex)
            {
                //Response.Write(ex);
            }
        }
    }
}