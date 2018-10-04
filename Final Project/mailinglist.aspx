<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="mailinglist.aspx.cs" Inherits="mailinglist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    

  <asp:GridView runat ="Server">       
<Columns>
             
             <asp:TemplateField HeaderText="Name">
                            
                     <ItemTemplate>
                        <asp:Label ID="LblStuID" runat="server" Text='<%# Bind("name")%>' CssClass="col-md-2 control-label"></asp:Label>
                     </ItemTemplate>


       
            </asp:TemplateField>


            <asp:TemplateField HeaderText="Email Address" runat="server">
                     <ItemTemplate>
                        <asp:Label ID="LblStuName" runat="server" Text='<%# Bind("email") %>' CssClass="col-md-2 control-label"></asp:Label>
                    </ItemTemplate>

                    <EditItemTemplate>
                            <asp:TextBox ID="TxtEditStuName" runat="server" Text='<%# Bind("email") %>' CssClass="form-control"></asp:TextBox>
                    </EditItemTemplate>

                  

            </asp:TemplateField>

         
          


    
                   
               <asp:TemplateField HeaderText="Operations">


            <ItemTemplate>
                <asp:Button ID="BtnEdit" runat="server" CommandName="Edit" Text="Edit" class="btn btn-default"/>
                <asp:Button ID="BtnDelete" runat="server" CommandName="Delete" Text="Delete" class="btn btn-default"/>
            </ItemTemplate>


                <EditItemTemplate>
                    <asp:Button ID="BthUpdate" runat="server" CommandName="Update" Text="Update" class="btn btn-default"/>
                    <asp:Button ID="BtnCancel" runat="server" CommandName="Cancel" Text="Cancel" class="btn btn-default"/>
                </EditItemTemplate>


            

            </asp:TemplateField>

    
                 
</Columns>

         
<FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
<HeaderStyle BackColor="#555555" Font-Bold="True" ForeColor="White" />
<PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
<RowStyle BackColor="#EEEEEE" ForeColor="Black" />
<SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
<SortedAscendingCellStyle BackColor="#F1F1F1" />
<SortedAscendingHeaderStyle BackColor="#0000A9" />
<SortedDescendingCellStyle BackColor="#CAC9C9" />
<SortedDescendingHeaderStyle BackColor="#000065" />
<AlternatingRowStyle BackColor="#DCDCDC" />
         


</asp:GridView>






</asp:Content>

