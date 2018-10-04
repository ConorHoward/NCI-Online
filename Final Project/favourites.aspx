<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="favourites.aspx.cs" Inherits="favourites" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Items_for_Sale] WHERE ([Id] = @Id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

   <h2>Favourites</h2>

    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="Repeater1_ItemCommand">
        <ItemTemplate>
            <div class="w3-row w3-border">
               <div class="w3-third w3-container">
                         <img class="previewim" src="../../images/<%# Eval("image") %>"  alt="Image" style="width: 80%; margin-bottom: 10px;"/>  
                             <img class="previewim" src="../../images/<%# Eval("image2") %>"  alt="Image" style="width: 80%; margin-bottom: 10px;"/>
               </div>
               <div class="w3-twothird w3-container">

                       <h4><%# Eval("Name") %></h4> 
                       <h5>&euro;<%# Eval("Price") %></h5>
                       <h5>Description: <%# Eval("Description") %> </h5>
                       <h5>Location: <%# Eval("Location") %> </h5>
                       <h5>Seller: <%# Eval("Seller") %> </h5>
                       <h5>Email: <%# Eval("Email") %></h5>

              </div>
                <asp:Button ID="Button1" runat="server" Text="Delete from Favourates" CssClass="form-control" OnClick="Button1_Click" />
                    </div>
        </ItemTemplate>

    </asp:Repeater>
    
         

</asp:Content>

