<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ChiTiet.aspx.cs" Inherits="ShopHoa.ChiTiet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="Pid" DataSourceID="SqlDataSource1">
            <Fields>
                <asp:BoundField DataField="Pid" HeaderText="Pid" InsertVisible="False" ReadOnly="True" SortExpression="Pid" />
                <asp:BoundField DataField="Categoryid" HeaderText="Categoryid" SortExpression="Categoryid" />
                <asp:BoundField DataField="ProdName" HeaderText="ProdName" SortExpression="ProdName" />
                <asp:BoundField DataField="MetaTitle" HeaderText="MetaTitle" SortExpression="MetaTitle" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />

                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server"
                            ImageUrl='<%#"~/Images/"+Eval("ImagePath") %>' Height="200px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            </Fields>
        </asp:DetailsView>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ECartDB2ConnectionString %>" SelectCommand="SELECT * FROM [Product] where Pid = @Pid">
            <SelectParameters>
<asp:QueryStringParameter Name="Pid" Type="Int16" QueryStringField="Pid" />
</SelectParameters>
        </asp:SqlDataSource>
    </form>

</asp:Content>
