using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

public partial class Individual : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        var NewReview = new SqlDataSource();
        NewReview.ConnectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        NewReview.InsertCommandType = SqlDataSourceCommandType.Text;
        NewReview.InsertCommand = "INSERT INTO Reviews VALUES (@UserName, @Review, @ReviewOf)";
        NewReview.InsertParameters.Add("UserName", Context.User.Identity.Name.ToString());
        NewReview.InsertParameters.Add("Review", TextBox1.Text.ToString());
        NewReview.InsertParameters.Add("ReviewOf", Request.QueryString["seller"].ToString());
        NewReview.Insert();
        Response.Redirect("~/sales");


       

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        var NewFave = new SqlDataSource();
        NewFave.ConnectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        NewFave.InsertCommandType = SqlDataSourceCommandType.Text;
        NewFave.InsertCommand = "INSERT INTO Favourates VALUES (@ItemName, @UserName, @ItemId)";
        NewFave.InsertParameters.Add("UserName", Context.User.Identity.Name.ToString());
        NewFave.InsertParameters.Add("ItemName", Request.QueryString["item"].ToString());
        NewFave.InsertParameters.Add("ItemId", Request.QueryString["id"]);
        NewFave.Insert();

        Response.Redirect("~/sales");

    }

    protected void LoginView1_ViewChanged(object sender, EventArgs e)
    {

    }

    protected void Repeater2_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }
}