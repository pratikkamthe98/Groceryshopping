<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCart.aspx.cs" Inherits="GroceryShopping.ViewCart" %>

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
            <uc1:header runat="server" ID="header" />
            <div class="page-content--bgf7">
                <div class="container">
                    <div class="row m-t-30">
                        <div class="col-md-12">
                            <h3 class="title-5 m-b-35">Your Cart Details</h3>
                            <asp:DataList ID="ddlViewCart" runat="server" CssClass="table-responsive m-b-40" OnDeleteCommand="ddlViewCart_DeleteCommand" OnItemCommand="Item_Command">

                                <HeaderTemplate>
                                    <table class="table table-borderless table-data3">
                                        <thead>
                                            <tr>
                                                <th>Cart Item ID</th>
                                                <th>Product Name</th>
                                                <th>Product  Category</th>
                                                <th>Product  Size</th>
                                                <th>Product  Price</th>
                                                <th>Product  Quantity</th>
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
                                                    <asp:Label ID="lblCartItemID" runat="server" Text='<%# Eval("CartItemID") %>'>      
                                                    </asp:Label>

                                                </td>
                                                <td>
                                                    <asp:Label ID="lblProductName" runat="server" Text='<%# Eval("ProductName") %>'>      
                                                    </asp:Label>

                                                </td>
                                                <td>
                                                    <asp:Label ID="lblProductCategory" runat="server" Text='<%# Eval("CategoryID") %>'>      
                                                    </asp:Label>

                                                </td>
                                                <td>
                                                    <asp:Label ID="lblProductSize" runat="server" Text='<%# Eval("ProductSize") %>'>      
                                                    </asp:Label>

                                                </td>
                                                <td>
                                                    <asp:Label ID="lblProductPrice" runat="server" Text='<%# Eval("ProductPrice") %>'>      
                                                    </asp:Label>

                                                </td>
                                                <td>
                                                    <asp:Label ID="lblProductQuantity" runat="server" Text='<%# Eval("ProductQuantity") %>'>      
                                                    </asp:Label>

                                                </td>
                                                <td>
                                                    <div class="table-data-feature">
                                                        <asp:LinkButton ID="lnkbtnEdit" runat="server" Style="color: darkgray" data-toggle="tooltip" data-placement="top" title="Edit Quantity" CommandName="Edit">
                                                       <i class="zmdi zmdi-edit" ></i>
                                                        </asp:LinkButton>
                                                        <div style="width: 25px"></div>
                                                        <asp:LinkButton ID="lnkbtnDelete" runat="server" Style="color: darkgray" CommandName="Delete" data-toggle="tooltip" data-placement="top" title="Delete Product">
                                                      <i class="zmdi zmdi-delete" ></i>
                                                        </asp:LinkButton>
                                                        <div style="width: 25px"></div>
                                                        <asp:LinkButton ID="lnkbtnPlaceOrder" runat="server" Style="color: darkgray" CommandName="PlaceOrder" data-toggle="tooltip" data-placement="top" title="Place Order">
                                                      <i class="zmdi zmdi-mail-send" ></i>
                                                        </asp:LinkButton>
                                                    </div>

                                                </td>

                                            </tr>

                                        </tbody>
                                    </table>
                                </ItemTemplate>

                            </asp:DataList>
                        </div>
                    </div>
                </div>
            </div>
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
            <uc1:footer runat="server" ID="footer" />
        </div>
    </form>
</body>
</html>
