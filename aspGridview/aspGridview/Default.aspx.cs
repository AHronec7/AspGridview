using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;


namespace aspGridview
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //   if (ViewState["newuser"] != null)
            //{
            //    int.Parse(ViewState["newuser"].ToString());
            //}

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            SqlConnection sqlcon = new SqlConnection(WebConfigurationManager.ConnectionStrings
                                                                            ["Default"].ConnectionString);
            SqlCommand personentry = new SqlCommand("Newuser", sqlcon);
            personentry.CommandType = System.Data.CommandType.StoredProcedure;

            SqlParameter names = new SqlParameter("@names", TextBox1);
            SqlParameter address = new SqlParameter("@address", TextBox2);
            SqlParameter phone = new SqlParameter("@phonenumber", TextBox3);
            SqlParameter State = new SqlParameter("@state", TextBox4);
            SqlParameter email = new SqlParameter("@email", TextBox5);

            personentry.Parameters.Add(names);
            personentry.Parameters.Add(address);
            personentry.Parameters.Add(phone);
            personentry.Parameters.Add(State);
            personentry.Parameters.Add(email);

            personentry.Connection.Open();
            personentry.ExecuteNonQuery();
            personentry.Connection.Close();
        }
    }
}
