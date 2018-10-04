using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class image : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

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
                    Label1.Text = "File uploaded!";
                }
                catch (Exception ex)
                {
                    Label1.Text = "File could not be uploaded.";
                }
            }
            else
            {
                Label1.Text = "Cannot accept files of this type.";
            }
        }


    }
}