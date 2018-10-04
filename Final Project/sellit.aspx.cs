using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sellit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        var NewItem = new SqlDataSource();
        NewItem.ConnectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        NewItem.InsertCommandType = SqlDataSourceCommandType.Text;
        NewItem.InsertCommand = "INSERT INTO Items_for_Sale VALUES (@Name, @Location, @Image, @Image2, @Description, @Price, @Seller, @Email, @Status)";
        NewItem.InsertParameters.Add("Name", TextBox1.Text.ToString());
        NewItem.InsertParameters.Add("Location", TextBox2.Text.ToString());
        NewItem.InsertParameters.Add("Image", FileUpload1.FileName.ToString());
        NewItem.InsertParameters.Add("Image2", FileUpload2.FileName.ToString());
        NewItem.InsertParameters.Add("Description", TextBox5.Text.ToString());
        NewItem.InsertParameters.Add("Price", TextBox6.Text.ToString());
        NewItem.InsertParameters.Add("Seller", Context.User.Identity.Name.ToString());
        NewItem.InsertParameters.Add("Email", TextBox8.Text.ToString());
        NewItem.InsertParameters.Add("Status", "Active");
        NewItem.Insert();
        Response.Redirect("~/sales");

        
                string path = Server.MapPath("~/Images/");
                bool fileOK = false;
                if (FileUpload1.HasFile)
                {
                    string fileExtension = null;
                    fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName).ToLower();
                    string[] allowedExtensions = { ".jpg", ".jpeg", ".png", ".gif" };
                    for (int i = 0; i <= allowedExtensions.Length - 1; i++)
                    {
                        if (fileExtension.Contains(allowedExtensions[i]))
                        {
                            fileOK = true;
                        }
                    }
                    if (fileOK)
                    {
                        try
                        {
                            FileUpload1.PostedFile.SaveAs(path + FileUpload1.FileName);
                            Label2.Text = "File uploaded!";
                        }
                        catch (Exception ex)
                        {
                            Label2.Text = "File could not be uploaded.";
                        }
                    }
                    else
                    {
                        Label2.Text = "Cannot accept files of this type.";
                    }
                }




            
                string path2 = Server.MapPath("~/Images/");
                bool fileOK2 = false;
                if (FileUpload2.HasFile)
                {
                    string fileExtension = null;
                    fileExtension = System.IO.Path.GetExtension(FileUpload2.FileName).ToLower();
                    string[] allowedExtensions = { ".jpg", ".jpeg", ".png", ".gif" };
                    for (int i = 0; i <= allowedExtensions.Length - 1; i++)
                    {
                        if (fileExtension.Contains(allowedExtensions[i]))
                        {
                            fileOK2 = true;
                        }
                    }
                    if (fileOK2)
                    
                        try
                        {
                            FileUpload2.PostedFile.SaveAs(path + FileUpload2.FileName);

                        }
                        catch (Exception ex)
                        {
                            Label1.Text = "File could not be uploaded.";
                        }
                }
                else {
                        Label1.Text = "Cannot accept files of this type.";
                     }
                     




            


        

    }
}
           
