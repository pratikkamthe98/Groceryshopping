<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="header.ascx.cs" Inherits="GroceryShopping.header" %>



<header class="header-desktop3 d-none d-lg-block">
    <div class="section__content section__content--p35">
        <div class="header3-wrap">
            <div class="header__logo">
                <a href="HomePage.aspx">Shop<span>Kart</span></a>
            </div>
            <div class="header__navbar">
                <ul class="list-unstyled">
                    <li>
                        <a href="HomePage.aspx">
                            <i class="fas fa-home"></i>
                            <span class="bot-line"></span>Home</a>
                    </li>



                    <li class="has-sub">
                        <a href="#">
                            <i class="fas fa-mobile"></i>
                            <span class="bot-line"></span>Contact</a>
                    </li>
                    <li class="has-sub">
                        <a href="#">
                            <i class="fas fa-desktop"></i>
                            <span class="bot-line"></span>Blog</a>
                    </li>

                    <li class="has-sub">
                        <asp:LinkButton ID="lnkbtnLogin" runat="server">
                              <i class="fas fa-user"></i>Login
                             <span class="bot-line"></span>
                        </asp:LinkButton>
                        <ul class="header3-sub-list list-unstyled">
                            <li>
                                <a href="AdminLogin.aspx">Admin</a>
                            </li>
                            <li>
                                <a href="CustomerLogin.aspx">Customer</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="header__tool">
                <div class="header-button-item js-item-menu">
                    <asp:LinkButton ID="lnkbtnOrderList" runat="server" Style="color: white" OnClick="btnViewOrders_OnClick">
                        <i class="zmdi zmdi-view-list"></i>

                    </asp:LinkButton>

                </div>

                <div class="header-button-item js-item-menu">
                    <asp:LinkButton ID="lnkbtnCart" runat="server" Style="color: white" OnClick="btnViewCart_OnClick">
                        <i class="zmdi zmdi-shopping-cart"></i>
                    </asp:LinkButton>

                </div>
                <div class="header-button-item js-item-menu">
                    <asp:LinkButton ID="lnkbtnLogout" runat="server" Style="color: white" OnClick="btnLogOut_OnClick">
                       <i class="zmdi zmdi-power-setting" ></i>

                    </asp:LinkButton>

                </div>
            </div>
        </div>
    </div>
</header>
