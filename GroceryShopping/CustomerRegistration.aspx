<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerRegistration.aspx.cs" Inherits="GroceryShopping.CustomerRegistration" %>

<%@ Register Src="~/ExternalFiles.ascx" TagPrefix="uc1" TagName="ExternalFiles" %>
<%@ Register Src="~/footer.ascx" TagPrefix="uc1" TagName="footer" %>
<%@ Register Src="~/header.ascx" TagPrefix="uc1" TagName="header" %>



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
                                    <a href="#">CUSTOMER<span>REGISTRATION</span></a>
                                </div>
                                <div class="login-form">

                                    <div class="form-group">
                                        <asp:Label ID="lblFullName" runat="server" Text="Full Name"></asp:Label>
                                        <asp:TextBox ID="txtFullName" runat="server" CssClass="au-input au-input--full"></asp:TextBox>
                                    </div>

                                    <div class="form-group">

                                        <asp:Label ID="lblMobileNumber" runat="server" Text="Mobile Number"></asp:Label>
                                        <asp:TextBox ID="txtMobileNumber" runat="server" CssClass="au-input au-input--full" TextMode="Number"></asp:TextBox>

                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                                        <asp:TextBox ID="txtEmail" runat="server" CssClass="au-input au-input--full" TextMode="Email"></asp:TextBox>
                                    </div>

                                    <div class="form-group">
                                        <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
                                        <asp:TextBox ID="txtCity" runat="server" CssClass="au-input au-input--full"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="lblPincode" runat="server" Text="Pincode"></asp:Label>
                                        <asp:TextBox ID="txtPincode" runat="server" CssClass="au-input au-input--full" TextMode="Number"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
                                        <asp:TextBox ID="txtAddress" runat="server" CssClass="au-input au-input--full" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                                        <asp:TextBox ID="txtPassword" runat="server" CssClass="au-input au-input--full" TextMode="Password"></asp:TextBox>
                                    </div>


                                    <asp:Button ID="btnRegisterCustomer" runat="server" CssClass="au-btn au-btn--block au-btn--green m-b-20" Text="Register" OnClick="btnRegisterCustomer_Click" />
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
