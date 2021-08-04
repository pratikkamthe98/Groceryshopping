<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="GroceryShopping.Checkout" %>

<%@ Register Src="~/ExternalFiles.ascx" TagPrefix="uc1" TagName="ExternalFiles" %>
<%@ Register Src="~/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/footer.ascx" TagPrefix="uc1" TagName="footer" %>



<uc1:ExternalFiles runat="server" ID="ExternalFiles" />


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="page-wrapper">
                <uc1:header runat="server" ID="header" />
                <div class="page-content--bgf7">
                    <div class="container">
                        <div class="row" style="margin: 20px">
                            <div class="col-lg-6">
                                <div class="au-card au-card--no-shadow au-card--no-pad m-b-40 au-card--border">
                                    <div class="au-card-title">
                                        <div class="bg-overlay bg-overlay--blue">
                                        </div>
                                        <h3>Card Details</h3>
                                    </div>
                                    <div class="au-task js-list-load au-task--border">
                                        <div class="au-task__footer">
                                            <div class="row" style="padding: 0px 30px">
                                                <asp:RadioButton ID="rdbtnCredit" runat="server" Text="Credit Card" Style="position: center" />&nbsp&nbsp
                                                <asp:RadioButton ID="rdbtnDebit" runat="server" Text="Debit Card" Style="position: center" />&nbsp&nbsp
                                                <asp:RadioButton ID="rdbtnPaypal" runat="server" Text="Paypal" Style="position: center" />
                                            </div>
                                            <div class="row" style="padding: 0px 30px">
                                                <div class="col-lg-6">
                                                    <asp:Label ID="lblCardName" runat="server" Width="100%" Style="text-align: left" Text="Name On Card"></asp:Label>
                                                </div>
                                                <div class="col-lg-6">
                                                    <asp:Label ID="lblCardNumber" runat="server" Text="Card Number" Width="100%" Style="text-align: left"></asp:Label>
                                                </div>
                                            </div>
                                            <div class="row" style="padding: 0px 30px">
                                                <div class="col-lg-6">
                                                    <asp:TextBox ID="txtCardName" runat="server" BorderStyle="Groove" Width="100%"></asp:TextBox>
                                                </div>
                                                <div class="col-lg-6">
                                                    <asp:TextBox ID="txtCardNumber" runat="server" BorderStyle="Groove" Width="100%" TextMode="Number"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row" style="padding: 0px 30px">
                                                <div class="col-lg-6">
                                                    <asp:Label ID="lblExpiration" runat="server" Width="100%" Style="text-align: left" Text="Expiration"></asp:Label>
                                                </div>
                                                <div class="col-lg-6">
                                                    <asp:Label ID="lblCvv" runat="server" Text="CVV" Width="100%" Style="text-align: left"></asp:Label>
                                                </div>
                                            </div>
                                            <div class="row" style="padding: 0px 30px">
                                                <div class="col-lg-6">
                                                    <asp:TextBox ID="txtExpiration" runat="server" BorderStyle="Groove" TextMode="DateTime" Style="padding-right: 50px"></asp:TextBox>

                                                </div>
                                                <div class="col-lg-6">
                                                    <asp:TextBox ID="txtCvv" runat="server" BorderStyle="Groove" TextMode="Number" Style="padding-right: 50px"></asp:TextBox>
                                                </div>
                                            </div>
                                            <asp:Label ID="lblMessage" runat="server"></asp:Label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="au-card au-card--no-shadow au-card--no-pad m-b-40 au-card--border">
                                    <div class="au-card-title">
                                        <div class="bg-overlay bg-overlay--blue">
                                        </div>
                                        <h3>Products List
                                        </h3>
                                    </div>
                                    <div class="au-task js-list-load au-task--border">
                                        <div class="au-task-list js-scrollbar3">
                                            <asp:DataList ID="dlOrders" runat="server">
                                                <ItemTemplate>
                                                    <div class="au-task__item au-task__item--success">
                                                        <div class="au-task__item-inner">
                                                            <span class="task">
                                                                <asp:Label ID="lblProductName" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                                                            </span>
                                                            <h5 class="task">Quantity:<span class="time">
                                                                <asp:Label ID="lblProductQuantity" runat="server" Text='<%# Eval("ProductQuantity") %>'></asp:Label>
                                                            </span>
                                                            </h5>
                                                            <h5 class="task">Subtotal:<span class="time">
                                                                <asp:Label ID="lblProductPrice" runat="server" Text='<%# Eval("ProductPrice") %>'></asp:Label>
                                                            </span>
                                                            </h5>
                                                        </div>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:DataList>
                                        </div>
                                        <div class="au-task__footer">
                                            <asp:Button ID="btnAddToCart" runat="server" CssClass="au-btn au-btn-load js-load-btn" Text="PAYMENT" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <uc1:footer runat="server" ID="footer" />
            </div>
        </div>
    </form>
</body>
</html>
