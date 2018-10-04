<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Individual.aspx.cs" Inherits="Individual" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Items_for_Sale] WHERE ([Id] = @Id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <!-- Specified Details on market item choosen to view -->

    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
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
 
           </div>
        </ItemTemplate>
    </asp:Repeater>
    &nbsp;
    &nbsp;
    
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Reviews] WHERE ([ReviewOf] = @ReviewOf)">
        <SelectParameters>
            <asp:QueryStringParameter Name="ReviewOf" QueryStringField="seller" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:HyperLink  runat="server" ClientIDMode="Static" class="btn btn-primary btn-block" ID="btn1">Show/Hide Reviews</asp:HyperLink>
    <div id="showreviews"> 
    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2" OnItemCommand="Repeater2_ItemCommand">
         
        <ItemTemplate>
            <footer class="w3-container w3-blue">
                <h5>Review of <%# Eval("ReviewOf") %> by <%# Eval("UserName") %></h5>
                <p class="w3-opacity"><%# Eval("Review") %></p>
            </footer>
        </ItemTemplate>

        <AlternatingItemTemplate>
            <footer class="w3-container w3-teal">
                <h5>Review of <%# Eval("ReviewOf") %> by <%# Eval("UserName") %></h5>
                <p class="w3-opacity"><%# Eval("Review") %></p>
            </footer>
        </AlternatingItemTemplate>

    </asp:Repeater>
        </div>
       &nbsp;
  
   <asp:LoginView ID="LoginView1" runat="server" OnViewChanged="LoginView1_ViewChanged">
            <AnonymousTemplate></AnonymousTemplate>
            
            <LoggedInTemplate>
                <asp:Button ID="Button2" runat="server" Text="Add To Favourites" class="btn btn-primary btn-block" OnClick="Button2_Click"/>

            </LoggedInTemplate>


        </asp:LoginView>
       
    &nbsp;
     <div class="w3-row w3-border">
         
             <p><asp:HyperLink  runat="server" ClientIDMode="Static" class="btn btn-primary btn-block"  id="review">Leave a Review of this seller</asp:HyperLink></p>
         <div id="leavepanel" style="display: none;">    
         <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
             <p>
                 <br />
                <asp:Button ID="Button1" runat="server" Text="Leave Review" CssClass="form-control" OnClick="Button1_Click"/>
     </div>
    </div>
    <script>
       $(document).ready(function () {
            $("#review").click(function () {
                $("#leavepanel").slideToggle(1000);
            });
        });
        
        $("#btn1").click(function () {
           
            $("#showreviews").slideToggle(1000);
            

        }); 
        
        </script>

    

</asp:Content>

