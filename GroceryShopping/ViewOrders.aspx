<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewOrders.aspx.cs" Inherits="GroceryShopping.ViewOrders" %>

<%@ Register Src="~/ExternalFiles.ascx" TagPrefix="uc1" TagName="ExternalFiles" %>
<%@ Register Src="~/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/footer.ascx" TagPrefix="uc1" TagName="footer" %>


<uc1:ExternalFiles runat="server" ID="ExternalFiles" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        table {
            table-layout: fixed;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="page-wrapper">
            <uc1:header runat="server" ID="header1" />
            <div class="page-content--bgf7">
                <div class="container">
                    <div class="row m-t-30">
                        <div class="col-md-12">
                            <h3 class="title-5 m-b-35">Your Orders </h3>
                            <asp:DataList ID="ddlViewOrders" runat="server" CssClass="table-responsive m-b-40">
                                <HeaderTemplate>
                                    <table class="table table-borderless table-data3">
                                        <thead>
                                            <tr>
                                                <th>Order ID</th>
                                                <th>Product Name</th>
                                                <th>Product  Quantity</th>
                                                <th>Product  Price</th>
                                                <th>Shipping Address</th>
                                                <th></th>

                                            </tr>
                                        </thead>
                                    </table>

                                </HeaderTemplate>
                                <ItemTemplate>
                                    <table class="table table-borderless table-data3">
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="lblOrderID" runat="server" Text='<%# Eval("OrderID") %>'>      
                                                    </asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblProductName" runat="server" Text='<%# Eval("ProductName") %>'>      
                                                    </asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblProductQuantity" runat="server" Text='<%# Eval("ProductQuantity") %>'>      
                                                    </asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblProductPrice" runat="server" Text='<%# Eval("ProductPrice") %>'>      
                                                    </asp:Label>

                                                </td>
                                                <td>
                                                    <asp:Label ID="lblShippingAddress" runat="server" Text='<%# Eval("CustomerAddress") %>'>      
                                                    </asp:Label>

                                                </td>
                                                <td></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </ItemTemplate>
                            </asp:DataList>
                            <asp:Button ID="btnCheckout" runat="server" CssClass="au-btn au-btn-load js-load-btn" Text="CHECKOUT" OnClick="lnkBtnCheckout_OnClick" />
                        </div>
                    </div>
                </div>
            </div>
            <uc1:footer runat="server" ID="footer1" />
        </div>
    </form>
</body>
</html>

