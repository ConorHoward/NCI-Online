<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="editreview.aspx.cs" Inherits="editreview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Update Your Review" OnClick="Button1_Click" />


</asp:Content>

