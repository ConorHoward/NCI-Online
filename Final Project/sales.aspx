<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="sales.aspx.cs" Inherits="sales" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Items_for_Sale]"></asp:SqlDataSource>
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Reviews]"></asp:SqlDataSource>


        <div class="w3-amber" margin-center;>
          <asp:HyperLink ID="HyperLink2" runat="server" class="btn btn-primary btn-block" NavigateUrl='sellit.aspx'>Add A New Sales Item</asp:HyperLink>

        </div>
    <!-- All Sales Items Listed -->
 <br />
    <br />
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="Repeater1_ItemCommand">
      <ItemTemplate>
   
        <div class="w3-third">
        <div class="w3-card w3-container" style="min-height:500px">
           <h3><%# Eval("Name") %></h3><br>
            <img class="previewim" id="btn1"  src="../../Images/<%# Eval("Image") %>"  alt="Image" style="width: 200px; margin-bottom: 10px;"/>
            
        <p><%# Eval("Location") %></p>  
        <p>&euro;<%# Eval("Price") %></p>
        <p>Sales Status: <%# Eval("Status") %></p>
     <p><asp:HyperLink ID="HyperLink1" runat="server" class="w3-button w3-theme" NavigateUrl='<%# String.Format("~/individual?id={0}&seller={1}&item={2}", Eval("Id"), Eval("Seller"), Eval("Name")) %> '>Details</asp:HyperLink></p>
  </div>
    </div> 
        </ItemTemplate>
    </asp:Repeater>

    


</asp:Content>

