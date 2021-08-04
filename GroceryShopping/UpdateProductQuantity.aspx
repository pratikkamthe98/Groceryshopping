<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateProductQuantity.aspx.cs" Inherits="GroceryShopping.UpdateProductQuantity" %>

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
                <uc1:header runat="server" ID="header1" />
                <div class="page-content--bgf7">
                    <div class="row" style="margin: 200px">
                        <div class="col-lg-12">
                            <div class="au-task__footer">
                                <asp:Label ID="lblProductQuantity" runat="server" Text="Quantity:"></asp:Label>
                                <asp:TextBox ID="txtProductQuantity" runat="server" BorderStyle="Groove"></asp:TextBox>
                                &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                                <asp:Button ID="btnUpdateQuantity" runat="server" CssClass="au-btn au-btn-load js-load-btn" Text="UPDATE" OnClick="btnUpdateQuantity_Click" />
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
                <uc1:footer runat="server" ID="footer1" />
            </div>





        </div>

    </form>

</body>
</html>
