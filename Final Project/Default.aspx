<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="header">
        <a href="https://www.ncirl.ie" />
        <asp:Image ID="Image4" src="../images/NCI.jpg"  width="1000" height="250" runat="server" />
        <!--
        <h1>NCI Online</h1>
        <p class="lead">This is an open website for all students at National College of Ireland. Please use the marketplace freely among students to sell second-hand books/miscillanous objects or simply assembling a 5-aside fooball team. </p>
        <p><a href="http://www.ncirl.ie" class="btn btn-primary btn-lg">Official NCI Website &raquo;</a></p> -->
    </div>
    <br />
    <br />
    <div class="row">
        <div class="col-md-4"> <p>
            <h2>NCI Marketplace</h2>
            <a href = "http://localhost:53370/sales" />
                <asp:Image ID="Image1" src="../images/MarketPlaceLogo.png"  runat="server" width ="300" Height="180"/>
            </p>
            <br />
            <br />
            <br />
            <p>
                <a class="btn btn-default" href="sales.aspx"> MarketPlace &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>About</h2>
            <p>
            <a href = "http://localhost:53370/About " />
            <asp:Image ID="Image2" src="../images/About.png"  runat="server" width ="300" Height="180"/>
               
            </p>
            <br />
            <br />
            <br />
            <p>
                <a class="btn btn-default" href="about.aspx">About Us &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Register for our site</h2>
            <p>
            <a href = "http://localhost:53370/Account/Register" />
            <asp:Image ID="Image3" src="../images/services.jpg"  runat="server" width ="300" Height="180"/>
               
                
            </p>
            <br />
            <br />
            <br />
            <p>
                <a class="btn btn-default" href="http://localhost:53370/Account/Register">Register Here &raquo;</a>
            </p>
        </div>
    </div>
</asp:Content>
