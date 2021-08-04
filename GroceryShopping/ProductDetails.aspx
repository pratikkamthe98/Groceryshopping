<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="GroceryShopping.ProductDetails" %>

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
                                        <div class="bg-overlay bg-overlay--blue"></div>
                                        <h3>
                                            <asp:Label ID="lblProductName" runat="server"></asp:Label></h3>


                                    </div>
                                    <div class="au-task js-list-load au-task--border">

                                        <div class="au-task-list js-scrollbar3">
                                            <div class="au-task__item au-task__item--danger">
                                                <div class="au-task__item-inner">


                                                    <h5 class="task">Product Category:<span class="time">
                                                        <asp:Label ID="lblProductCategory" runat="server"></asp:Label></span>

                                                    </h5>


                                                </div>
                                            </div>
                                            <div class="au-task__item au-task__item--warning">
                                                <div class="au-task__item-inner">
                                                    <h5 class="task">Product Brand:
                                            <span class="time">
                                                <asp:Label ID="lblProductBrand" runat="server"></asp:Label>
                                            </span>

                                                    </h5>
                                                    <h5 class="task">Product Origin:<span class="time">
                                                        <asp:Label ID="lblProductOrigin" runat="server"></asp:Label>
                                                    </span>

                                                    </h5>

                                                </div>
                                            </div>
                                            <div class="au-task__item au-task__item--primary">
                                                <div class="au-task__item-inner">
                                                    <h5 class="task">Product Storage Tips:<span class="time">
                                                        <asp:Label ID="lblProductStorage" runat="server"></asp:Label>
                                                    </span>
                                                    </h5>

                                                </div>
                                            </div>

                                            <div class="au-task__item au-task__item--success">
                                                <div class="au-task__item-inner">
                                                    <h5 class="task">Product Size:<span class="time">
                                                        <asp:Label ID="lblProductSize" runat="server"></asp:Label>
                                                    </span>

                                                    </h5>
                                                    <h5 class="task">Product Price:<span class="time">
                                                        <asp:Label ID="lblProductPrice" runat="server"></asp:Label>
                                                    </span>
                                                    </h5>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="au-task__footer">
                                            <asp:Label ID="lblProductQuantity" runat="server" Text="Quantity:"></asp:Label>
                                            <asp:TextBox ID="txtProductQuantity" runat="server" BorderStyle="Groove" Width="100px"></asp:TextBox>
                                            &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                                <asp:Button ID="btnAddToCart" runat="server" CssClass="au-btn au-btn-load js-load-btn" Text="ADD TO CART" OnClick="btnAddToCart_Click" />
                                            <br />
                                            <asp:CompareValidator ID="CompareValidator1" runat="server"
                                                ControlToValidate="txtProductQuantity" ErrorMessage="Must be &gt; 0" ForeColor="Red"
                                                Operator="GreaterThan" Type="Integer"
                                                ValueToCompare="0" />
                                            <asp:Label ID="lblMessage" runat="server"></asp:Label>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="col-lg-6">
                                <asp:Image ID="imgProduct" runat="server" Width="100%" Height="93%" />
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
