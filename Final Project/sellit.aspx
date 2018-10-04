<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="sellit.aspx.cs" Inherits="sellit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <!-- Selling an item form -->
    <div class="w3-container">
        <h2>Sell an Item</h2>
        <br />
        <p>Item Name:</p><asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>

        <br />
        <p>Item Location:</p><asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
       
        <br />
        <p>Image 1</p>
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Label ID="Label2" runat="server" Text="Status"></asp:Label>
        <br />

        <p>Image 2</p>
        <asp:FileUpload ID="FileUpload2" runat="server" />
        <asp:Label ID="Label1" runat="server" Text="Status"></asp:Label>


        <br />
        <br />
        <p>Description:</p><asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>

        <br />
        <p>Item Price:</p><asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
        <br />
        
        <p>Email:</p>
        <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="saleBtn" runat="server" Text="Sell It" CssClass="form-control" OnClick="Button1_Click"/>
        <br />
        
        
        </div>

    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Your Name" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter the location you are selling from" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter a Description" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Enter a Price" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Enter Your Email" ControlToValidate="TextBox8"></asp:RequiredFieldValidator>
    
       

</asp:Content>

