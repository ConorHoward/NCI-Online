using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


public partial class admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (HttpContext.Current.User.Identity.IsAuthenticated)
        {
            string connstring = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString; // https://stackoverflow.com/questions/22113751/how-to-create-a-connection-string-in-asp-net-c-sharp

            SqlConnection linkToDB = new SqlConnection(connstring);
            linkToDB.Open();
            string sqlText = @"SELECT [Right] FROM [Rights] WHERE [UserName] = @UserName";
            SqlCommand dataAction = new SqlCommand(sqlText, linkToDB);
            SqlParameter paramValue2 = new SqlParameter("@UserName", SqlDbType.VarChar);
            paramValue2.Value = Context.User.Identity.Name;
            dataAction.Parameters.Add(paramValue2);
            var user = dataAction.ExecuteScalar();


            string a = "Admin";
            if (a != user.ToString())
            {

                Response.Redirect("sales.aspx");
            }
        }
        else
        {

            Response.Redirect("~/Default");
        }
       

    }

    protected void FormView3_PageIndexChanging(object sender, FormViewPageEventArgs e)
    {

    }

    protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }

    protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
    {

    }

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }

    protected void SqlDataSource3_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}