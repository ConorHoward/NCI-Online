<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
        <ul>
              <li>IFSC, Mayor street, North Dock, Dublin 1 </li>
              <li>(01)449 8500</li>
              
        </ul>

    <div class="map">
        <p>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1190.8338724954979!2d-6.244188227909454!3d53.34920359646092!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48670e8ce189d7ad%3A0xfb425eb58d37ded4!2sMayor+Square+-+NCI!5e0!3m2!1sen!2sie!4v1480593265483"></iframe>
        </p>
    </div>




</asp:Content>
