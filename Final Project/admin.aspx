<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Rights] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Rights] ([UserName], [Right]) VALUES (@UserName, @Right)" SelectCommand="SELECT * FROM [Rights]" UpdateCommand="UPDATE [Rights] SET [UserName] = @UserName, [Right] = @Right WHERE [Id] = @Id" OnSelecting="SqlDataSource1_Selecting">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Right" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Right" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
    <h2>Admin User's</h2>
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnPageIndexChanging="FormView1_PageIndexChanging">
        <EditItemTemplate>
            <div class="w3-third" margin-center;>
                <div class="w3-card w3-container" style="min-width:700px">
            Id:
            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            UserName:
            <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
            <br />
            Right:
            <asp:TextBox ID="RightTextBox" runat="server" Text='<%# Bind("Right") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </div>
                </div>
        </EditItemTemplate>
        <InsertItemTemplate>
            <div class="w3-third">
                <div class="w3-card w3-container" style="min-width:700px">
            UserName:
            <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
            <br />
            Right:
            <asp:TextBox ID="RightTextBox" runat="server" Text='<%# Bind("Right") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </div>
                </div>
        </InsertItemTemplate>
        <ItemTemplate>
            <div class="w3-third">
                <div class="w3-card w3-container" style="min-width:700px">
            Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            UserName:
            <asp:Label ID="UserNameLabel" runat="server" Text='<%# Bind("UserName") %>' />
            <br />
            Right:
            <asp:Label ID="RightLabel" runat="server" Text='<%# Bind("Right") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </div>
                </div>
        </ItemTemplate>
    </asp:FormView>
        <br />
        <br />
        
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Items_for_Sale] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Items_for_Sale] ([Name], [Location], [Image], [Image2], [Description], [Price], [Seller], [Email], [Status]) VALUES (@Name, @Location, @Image, @Image2, @Description, @Price, @Seller, @Email, @Status)" SelectCommand="SELECT * FROM [Items_for_Sale]" UpdateCommand="UPDATE [Items_for_Sale] SET [Name] = @Name, [Location] = @Location, [Image] = @Image, [Image2] = @Image2, [Description] = @Description, [Price] = @Price, [Seller] = @Seller, [Email] = @Email, [Status] = @Status WHERE [Id] = @Id" OnSelecting="SqlDataSource2_Selecting">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Location" Type="String" />
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="Image2" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Price" Type="Int32" />
            <asp:Parameter Name="Seller" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Location" Type="String" />
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="Image2" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Price" Type="Int32" />
            <asp:Parameter Name="Seller" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <h2>Admin Item's For Sale</h2>
    <asp:FormView ID="FormView2" runat="server" AllowPaging="True" DataKeyNames="Id" DataSourceID="SqlDataSource2">
        <EditItemTemplate>
            <div class="w3-third">
                <div class="w3-card w3-container" style="min-width:700px">
            Id:
            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            Location:
            <asp:TextBox ID="LocationTextBox" runat="server" Text='<%# Bind("Location") %>' />
            <br />
            Image:
            <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
            <br />
            Image2:
            <asp:TextBox ID="Image2TextBox" runat="server" Text='<%# Bind("Image2") %>' />
            <br />
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
            <br />
            Price:
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
            <br />
            Seller:
            <asp:TextBox ID="SellerTextBox" runat="server" Text='<%# Bind("Seller") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            Status:
            <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </div>
                </div>
        </EditItemTemplate>
        <InsertItemTemplate>
            <div class="w3-third">
                <div class="w3-card w3-container" style="min-width:700px">
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            Location:
            <asp:TextBox ID="LocationTextBox" runat="server" Text='<%# Bind("Location") %>' />
            <br />
            Image:
            <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
            <br />
            Image2:
            <asp:TextBox ID="Image2TextBox" runat="server" Text='<%# Bind("Image2") %>' />
            <br />
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
            <br />
            Price:
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
            <br />
            Seller:
            <asp:TextBox ID="SellerTextBox" runat="server" Text='<%# Bind("Seller") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            Status:
            <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </div>
                </div>
        </InsertItemTemplate>
        <ItemTemplate>
            <div class="w3-third">
                <div class="w3-card w3-container" style="min-width:700px">
            Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            Location:
            <asp:Label ID="LocationLabel" runat="server" Text='<%# Bind("Location") %>' />
            <br />
            Image:
            <asp:Label ID="ImageLabel" runat="server" Text='<%# Bind("Image") %>' />
            <br />
            Image2:
            <asp:Label ID="Image2Label" runat="server" Text='<%# Bind("Image2") %>' />
            <br />
            Description:
            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
            <br />
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
            <br />
            Seller:
            <asp:Label ID="SellerLabel" runat="server" Text='<%# Bind("Seller") %>' />
            <br />
            Email:
            <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            Status:
            <asp:Label ID="StatusLabel" runat="server" Text='<%# Bind("Status") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                    </div>
                </div>
        </ItemTemplate>
    </asp:FormView>
        <br />
        <br />
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Reviews] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Reviews] ([UserName], [Review], [ReviewOf]) VALUES (@UserName, @Review, @ReviewOf)" SelectCommand="SELECT * FROM [Reviews]" UpdateCommand="UPDATE [Reviews] SET [UserName] = @UserName, [Review] = @Review, [ReviewOf] = @ReviewOf WHERE [Id] = @Id" OnSelecting="SqlDataSource3_Selecting">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Review" Type="String" />
            <asp:Parameter Name="ReviewOf" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Review" Type="String" />
            <asp:Parameter Name="ReviewOf" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <h2>Admin Review's</h2>
    <asp:FormView ID="FormView3" runat="server" AllowPaging="True" DataKeyNames="Id" DataSourceID="SqlDataSource3" OnPageIndexChanging="FormView3_PageIndexChanging">
        <EditItemTemplate>
            <div class="w3-third">
                <div class="w3-card w3-container" style="min-width:700px">
            Id:
            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            UserName:
            <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
            <br />
            Review:
            <asp:TextBox ID="ReviewTextBox" runat="server" Text='<%# Bind("Review") %>' />
            <br />
            ReviewOf:
            <asp:TextBox ID="ReviewOfTextBox" runat="server" Text='<%# Bind("ReviewOf") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </div>
                </div>
        </EditItemTemplate>
        <InsertItemTemplate>
            <div class="w3-third">
                <div class="w3-card w3-container" style="min-width:700px">
            UserName:
            <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
            <br />
            Review:
            <asp:TextBox ID="ReviewTextBox" runat="server" Text='<%# Bind("Review") %>' />
            <br />
            ReviewOf:
            <asp:TextBox ID="ReviewOfTextBox" runat="server" Text='<%# Bind("ReviewOf") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </div>
                </div>
        </InsertItemTemplate>
        <ItemTemplate>
            <div class="w3-third">
                <div class="w3-card w3-container" style="min-width:700px">
            Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            UserName:
            <asp:Label ID="UserNameLabel" runat="server" Text='<%# Bind("UserName") %>' />
            <br />
            Review:
            <asp:Label ID="ReviewLabel" runat="server" Text='<%# Bind("Review") %>' />
            <br />
            ReviewOf:
            <asp:Label ID="ReviewOfLabel" runat="server" Text='<%# Bind("ReviewOf") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                    </div>
                </div>
        </ItemTemplate>
    </asp:FormView>

    <br />
    <br />

    <div class="w3-amber" >
          <asp:HyperLink ID="HyperLink2" runat="server" class="btn btn-primary btn-block" NavigateUrl='mailinglist.aspx'>Edit Subscription List</asp:HyperLink>

        </div>

</asp:Content>

