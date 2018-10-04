using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class userprofile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HiddenField1.Value = Context.User.Identity.Name;
    }

    protected void HiddenField1_ValueChanged(object sender, EventArgs e)
    {
        HiddenField1.Value = Context.User.Identity.Name;
    }

    protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
    {

    }

    protected void HiddenField1_ValueChanged1(object sender, EventArgs e)
    {
        HiddenField1.Value = Context.User.Identity.Name;
    }

    protected void HiddenField1_ValueChanged4(object sender, EventArgs e)
    {

    }

    protected void HiddenField1_ValueChanged2(object sender, EventArgs e)
    {

    }

    protected void HiddenField1_ValueChanged3(object sender, EventArgs e)
    {

    }
}