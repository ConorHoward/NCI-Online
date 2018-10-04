<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="userprofile.aspx.cs" Inherits="userprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <asp:HiddenField ID="HiddenField1" runat="server" Value="" OnValueChanged="HiddenField1_ValueChanged3" />
    <h2>All items you have listed for sale</h2>
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
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
        </EditItemTemplate>
        <InsertItemTemplate>
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
        </InsertItemTemplate>
        <ItemTemplate>
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
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Items_for_Sale] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Items_for_Sale] ([Name], [Location], [Image], [Image2], [Description], [Price], [Seller], [Email], [Status]) VALUES (@Name, @Location, @Image, @Image2, @Description, @Price, @Seller, @Email, @Status)" SelectCommand="SELECT * FROM [Items_for_Sale] WHERE ([Seller] = @Seller)" UpdateCommand="UPDATE [Items_for_Sale] SET [Name] = @Name, [Location] = @Location, [Image] = @Image, [Image2] = @Image2, [Description] = @Description, [Price] = @Price, [Seller] = @Seller, [Email] = @Email, [Status] = @Status WHERE [Id] = @Id">
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
        <SelectParameters>
            <asp:ControlParameter ControlID="HiddenField1" Name="Seller" PropertyName="Value" Type="String" />
        </SelectParameters>
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
    <asp:LoginView ID="LoginView1" runat="server">


    </asp:LoginView>

    <h2>Your Reviews</h2>
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2">

        <ItemTemplate>
            <div class="w3-row w3-border">


                <div class="w3-twothird w3-container">
                    <h4><%# Eval("Review") %></h4>
                    <h5><%# Eval("ReviewOf") %></h5>
                </div>
                <p><asp:HyperLink ID="HyperLink1" runat="server" class="w3-button w3-theme" NavigateUrl='<%# String.Format("~/editreview?id={0}", Eval("Id")) %> '>Edit</asp:HyperLink></p>
            </div>
        </ItemTemplate>


    </asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Reviews] WHERE ([UserName] = @UserName)">
        <SelectParameters>
            <asp:ControlParameter ControlID="HiddenField1" Name="UserName" PropertyName="Value" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Favourates] WHERE ([UserName] = @UserName)">
        <SelectParameters>
            <asp:ControlParameter ControlID="HiddenField1" Name="UserName" PropertyName="Value" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <h2>Your Favourites</h2>
    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource3">
        <ItemTemplate>
            <p><asp:HyperLink ID="HyperLink1" runat="server" class="w3-button w3-theme" NavigateUrl='<%# String.Format("~/favourites?id={0}", Eval("ItemId"), Eval("ItemName")) %> '><%# Eval("ItemName") %></asp:HyperLink></p>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>

