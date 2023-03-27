<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SPTheoDanhMuc.aspx.cs" Inherits="ShopHoa.SPTheoDanhMuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Sản phẩm
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Pid" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            
            ProdName:
            <asp:Label ID="ProdNameLabel" runat="server" Text='<%# Eval("ProdName") %>' />
            <br />
            
            Description:
            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
            <br />
            <a href='ChiTiet.aspx?pid=<%# Eval("Pid")%>&name=<%# Eval("ProdName")%>&image=<%#
               Eval("ImagePath") %>&price=<%# Eval("Price")%>'></a>
            <asp:Image ID="img1" runat="server" ImageUrl='<%#"~/images/"+Eval("ImagePath") %>' width="150px"  />
            <br />
           
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
            <br />
            <a href="chitietsp.aspx?Pid=<%# Eval("Pid") %>" class="button">Chi tiết</a>
            <br />
             <a href='ShoppingCart.aspx?pid=<%# Eval("Pid")%>&name=<%# Eval("ProdName")%>&image=<%#
               Eval("ImagePath") %>&price=<%# Eval("Price")%>&action=add' class="button">Mua hàng</a>
<br />
        </ItemTemplate>
        
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ECartDB2ConnectionString %>" 
        SelectCommand="select Pid, s.Categoryid, ProdName, s.MetaTitle, Description, Price,ImagePath,CategoryName
from Product s, Category l
where s.Categoryid=l.Categoryid and s.Categoryid=@Categoryi">

        <SelectParameters>
                <asp:QueryStringParameter Name="Categoryid" Type="Int32" QueryStringField="Categoryid" />
            </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

