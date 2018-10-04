<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="adminarea.aspx.cs" Inherits="adminarea" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">


    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            Id:
            <asp:Label ID="IdLabel1" runat="server" CssClass="form-control" Text='<%# Eval("Id") %>' />
            <br />
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Name") %>' />
            <br />
            Location:
            <asp:TextBox ID="LocationTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Location") %>' />
            <br />
            Image:
            <asp:TextBox ID="ImageTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Image") %>' />
            <br />
            Image2:
            <asp:TextBox ID="Image2TextBox" runat="server" CssClass="form-control" Text='<%# Bind("Image2") %>' />
            <br />
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Description") %>' />
            <br />
            Price:
            <asp:TextBox ID="PriceTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Price") %>' />
            <br />
            Seller:
            <asp:TextBox ID="SellerTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Seller") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Email") %>' />
            <br />
            Status:
            <asp:TextBox ID="StatusTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Status") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Name") %>' />
            <br />
            Location:
            <asp:TextBox ID="LocationTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Location") %>' />
            <br />
            Image:
            <asp:TextBox ID="ImageTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Image") %>' />
            <br />
            Image2:
            <asp:TextBox ID="Image2TextBox" runat="server" CssClass="form-control" Text='<%# Bind("Image2") %>' />
            <br />
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Description") %>' />
            <br />
            Price:
            <asp:TextBox ID="PriceTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Price") %>' />
            <br />
            Seller:
            <asp:TextBox ID="SellerTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Seller") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Email") %>' />
            <br />
            Status:
            <asp:TextBox ID="StatusTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Status") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Id:
            <asp:Label ID="IdLabel" runat="server" CssClass="form-control" Text='<%# Eval("Id") %>' />
            <br />
            Name:
            <asp:Label ID="NameLabel" runat="server" CssClass="form-control" Text='<%# Bind("Name") %>' />
            <br />
            Location:
            <asp:Label ID="LocationLabel" runat="server" CssClass="form-control" Text='<%# Bind("Location") %>' />
            <br />
            Image:
            <asp:Label ID="ImageLabel" runat="server" CssClass="form-control" Text='<%# Bind("Image") %>' />
            <br />
            Image2:
            <asp:Label ID="Image2Label" runat="server" CssClass="form-control" Text='<%# Bind("Image2") %>' />
            <br />
            Description:
            <asp:Label ID="DescriptionLabel" runat="server" CssClass="form-control" Text='<%# Bind("Description") %>' />
            <br />
            Price:
            <asp:Label ID="PriceLabel" runat="server" CssClass="form-control" Text='<%# Bind("Price") %>' />
            <br />
            Seller:
            <asp:Label ID="SellerLabel" runat="server" CssClass="form-control" Text='<%# Bind("Seller") %>' />
            <br />
            Email:
            <asp:Label ID="EmailLabel" runat="server" CssClass="form-control" Text='<%# Bind("Email") %>' />
            <br />
            Status:
            <asp:Label ID="StatusLabel" runat="server" CssClass="form-control" Text='<%# Bind("Status") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Items_for_Sale] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Items_for_Sale] ([Name], [Location], [Image], [Image2], [Description], [Price], [Seller], [Email], [Status]) VALUES (@Name, @Location, @Image, @Image2, @Description, @Price, @Seller, @Email, @Status)" SelectCommand="SELECT * FROM [Items_for_Sale]" UpdateCommand="UPDATE [Items_for_Sale] SET [Name] = @Name, [Location] = @Location, [Image] = @Image, [Image2] = @Image2, [Description] = @Description, [Price] = @Price, [Seller] = @Seller, [Email] = @Email, [Status] = @Status WHERE [Id] = @Id">
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

    </asp:Content>

