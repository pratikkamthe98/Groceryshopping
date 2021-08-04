<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="GroceryShopping.AddProduct" %>

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
                        <div class="login-wrap">
                            <div class="login-content">
                                <div class="login-logo">
                                    <a href="#">ADD<span>PRODUCT</span></a>
                                </div>
                                <div class="login-form">

                                    <div class="form-group">
                                        <asp:Label ID="lblProductName" runat="server" Text="Product Name"></asp:Label>
                                        <asp:TextBox ID="txtProductName" runat="server" CssClass="au-input au-input--full"></asp:TextBox>
                                    </div>


                                    <div class="form-group">
                                        <asp:DropDownList ID="ddlCategory" runat="server">
                                        </asp:DropDownList>

                                    </div>

                                    <div class="form-group">
                                        <asp:Label ID="lblProductOrigin" runat="server" Text="Product Origin"></asp:Label>
                                        <asp:TextBox ID="txtProductOrigin" runat="server" CssClass="au-input au-input--full"></asp:TextBox>
                                    </div>

                                    <div class="form-group">
                                        <asp:Label ID="lblProductBrand" runat="server" Text="Product Brand"></asp:Label>
                                        <asp:TextBox ID="txtProductBrand" runat="server" CssClass="au-input au-input--full"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="lblProductStorage" runat="server" Text="Product Storage"></asp:Label>
                                        <asp:TextBox ID="txtProductStorage" runat="server" CssClass="au-input au-input--full"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="lblProductPrice" runat="server" Text="Product Price"></asp:Label>
                                        <asp:TextBox ID="txtProductPrice" runat="server" CssClass="au-input au-input--full"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="lblProductSize" runat="server" Text="Product Size"></asp:Label>
                                        <asp:TextBox ID="txtProductSize" runat="server" CssClass="au-input au-input--full"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="lblProductImg" runat="server" Text="Product Image"></asp:Label>
                                        <asp:FileUpload ID="ProductImgFile" runat="server" />

                                    </div>

                                    <asp:Button ID="btnAddProduct" runat="server" CssClass="au-btn au-btn--block au-btn--green m-b-20" Text="ADD" OnClick="btnAddProduct_Click" />
                                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
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
