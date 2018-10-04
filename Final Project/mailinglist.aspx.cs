using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;


public partial class mailinglist : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)

    {

        // Login

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
            var who = dataAction.ExecuteScalar();



            string a = "Admin";
            if (a != who.ToString())
            {


                Response.Redirect("~/Default");
            }
        }

        else
            Response.Redirect("~/Default");

      

        if (!IsPostBack == true)
        {
            Get_Xml();
        }
    }

    void Get_Xml()
    {
        DataSet ds = new DataSet();
        ds.ReadXml(Server.MapPath("~/mailinglist.xml"));
        if (ds != null && ds.HasChanges())
        {
            XmlGridView.DataSource = ds;
            XmlGridView.DataBind();
        }

        else
        {
            XmlGridView.DataBind(); 
        }
    }

    // Insert


    // edit

    protected void XmlGridView_RowEditing(object sender, GridViewEditEventArgs e)
    {
        XmlGridView.EditIndex = e.NewEditIndex;
        Get_Xml();
    }

    protected void XmlGridView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        XmlGridView.EditIndex = -1;
        Get_Xml();
    }

    // end edit


    // update 
    protected void XmlGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int id = XmlGridView.Rows[e.RowIndex].DataItemIndex;

        TextBox Name = XmlGridView.Rows[e.RowIndex].FindControl("TxtEditStuName") as TextBox;



        XmlGridView.EditIndex = -1;
        Get_Xml();

        DataSet ds = XmlGridView.DataSource as DataSet;
        ds.Tables[0].Rows[id]["email"] = Name.Text;

        ds.WriteXml(Server.MapPath("~/mailinglist.xml"));
        Get_Xml();

    }


    // update


    // delete 

    protected void XmlGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Get_Xml();
        DataSet ds = XmlGridView.DataSource as DataSet;
        ds.Tables[0].Rows[XmlGridView.Rows[e.RowIndex].DataItemIndex].Delete();
        ds.WriteXml(Server.MapPath("~/mailinglist.xml"));
        Get_Xml();

    }


    // end delete


    public class XmlGridView
{
    public static DataSet DataSource { get; internal set; }
    public static int EditIndex { get; internal set; }

    internal static void DataBind()
    {
        throw new NotImplementedException();
    }
}

}

