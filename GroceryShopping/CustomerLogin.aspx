<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerLogin.aspx.cs" Inherits="GroceryShopping.CustomerLogin" %>

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


                        <div class="login-wrap" style="width: 50%">
                            <div class="login-content">
                                <div class="login-logo">
                                    <a href="#">Customer <span>LOGIN</span></a>
                                </div>
                                <div class="login-form">

                                    <div class="form-group">
                                        <asp:Label ID="lblMobileNumber" runat="server" Text="Mobile Number"></asp:Label>
                                        <asp:TextBox ID="txtMobileNumber" runat="server" CssClass="au-input au-input--full" TextMode="Number"></asp:TextBox>
                                    </div>

                                    <div class="form-group">

                                        <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                                        <asp:TextBox ID="txtPassword" runat="server" CssClass="au-input au-input--full" TextMode="Password"></asp:TextBox>

                                    </div>

                                    <asp:Button ID="btnCustomerLogin" runat="server" CssClass="au-btn au-btn--block au-btn--green m-b-20" Text="Login" OnClick="btnCustomerLogin_Click" />
                                    <asp:Button ID="brnCustomerRegistration" runat="server" CssClass="au-btn au-btn--block au-btn--blue m-b-20" Text="Sign UP" OnClick="btnCustomerRegister_Click" />

                                    <asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label>
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
