<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="GroceryShopping.HomePage" %>

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

        <div class="page-wrapper">
            <uc1:header runat="server" ID="header1" />
            <div class="page-content--bgf7">

                <section class="au-breadcrumb2">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="au-breadcrumb-content">
                                    <div class="au-breadcrumb-left">
                                        <span class="au-breadcrumb-span">You are here:</span>
                                        <ul class="list-unstyled list-inline au-breadcrumb__list">
                                            <li class="list-inline-item active">
                                                <a href="#">ShopCart</a>
                                            </li>
                                            <li class="list-inline-item seprate">
                                                <span>/</span>
                                            </li>
                                            <li class="list-inline-item">Home</li>
                                        </ul>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </section>

                <div>


                    <div>
                        <div
                            id="carouselExampleIndicators"
                            class="carousel slide"
                            data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li
                                    data-target="#carouselExampleIndicators"
                                    data-slide-to="0"
                                    class="active"></li>
                                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner" style="height: 600px">
                                <div class="carousel-item active">
                                    <asp:Image ID="img1" CssClass="d-block w-100" src="images/banner-01.jpg" runat="server" />


                                </div>
                                <div class="carousel-item">
                                    <asp:Image ID="Img2" CssClass="d-block w-100" src="images/banner-02.jpg" runat="server" />

                                </div>

                                <div class="carousel-item">
                                    <asp:Image ID="Img3" CssClass="d-block w-100" src="images/banner-03.jpg" runat="server" />

                                </div>
                            </div>
                            <a
                                class="carousel-control-prev"
                                href="#carouselExampleIndicators"
                                role="button"
                                data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a
                                class="carousel-control-next"
                                href="#carouselExampleIndicators"
                                role="button"
                                data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                    </div>
                </div>


                <section class="statistic statistic2">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-12">
                                <div class="main_title">
                                    <h2><span>Overview</span></h2>
                                    <hr class="line-seprate" />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 col-lg-3">
                                <div class="statistic__item statistic__item--green">
                                    <h2 class="number">10,368</h2>
                                    <span class="desc">members online</span>
                                    <div class="icon">
                                        <i class="zmdi zmdi-account-o"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-3">
                                <div class="statistic__item statistic__item--orange">
                                    <h2 class="number">388,688</h2>
                                    <span class="desc">items sold</span>
                                    <div class="icon">
                                        <i class="zmdi zmdi-shopping-cart"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-3">
                                <div class="statistic__item statistic__item--blue">
                                    <h2 class="number">1,086</h2>
                                    <span class="desc">this week</span>
                                    <div class="icon">
                                        <i class="zmdi zmdi-calendar-note"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-3">
                                <div class="statistic__item statistic__item--red">
                                    <h2 class="number">$1,060,386</h2>
                                    <span class="desc">total earnings</span>
                                    <div class="icon">
                                        <i class="zmdi zmdi-money"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>


                <section class="statistic-chart">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6 col-lg-4">
                                <asp:Image ID="Img4" src="images/categories_img_01.jpg" runat="server" />


                            </div>
                            <div class="col-md-6 col-lg-4">
                                <asp:Image ID="Img5" src="images/categories_img_02.jpg" runat="server" />

                            </div>
                            <div class="col-md-6 col-lg-4">
                                <asp:Image ID="Img6" src="images/categories_img_03.jpg" runat="server" />

                            </div>
                        </div>
                    </div>
                </section>



                <section class="statistic statistic2">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-12">
                                <div class="main_title">
                                    <h2><span>Fruits & Vegetables</span></h2>
                                    <p>Bring called seed first of third give itself now ment</p>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-4 col-md-6">
                                <div class="card">


                                    <asp:Image ID="Img7" src="images/img-pro-02.jpg" class="card-img-top" runat="server" />



                                    <div class="card-body">
                                        <h4 class="card-title mb-3">Card Image Title</h4>
                                        <p class="card-text">
                                            Some quick example text to build on the card title and make up
                the bulk of the card's content.
             
                                        </p>
                                        <a href="checkout">
                                            <asp:Button ID="btnDetails1" runat="server" Text="Show More" class="card_btn" />


                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="card">
                                    <asp:Image ID="Img8" src="images/img-pro-03.jpg" class="card-img-top" runat="server" />

                                    <div class="card-body">
                                        <h4 class="card-title mb-3">Card Image Title</h4>
                                        <p class="card-text">
                                            Some quick example text to build on the card title and make up
                the bulk of the card's content.
             
                                        </p>
                                        <a href="checkout">
                                            <asp:Button ID="btnDetails2" runat="server" Text="Show More" class="card_btn" /></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="card">
                                    <asp:Image ID="Img9" src="images/img-pro-04.jpg" class="card-img-top" runat="server" />

                                    <div class="card-body">
                                        <h4 class="card-title mb-3">Card Image Title</h4>
                                        <p class="card-text">
                                            Some quick example text to build on the card title and make up
                the bulk of the card's content.
             
                                        </p>
                                        <a href="#">
                                            <asp:Button ID="btnDetails3" runat="server" Text="Show More" class="card_btn" /></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="statistic statistic2">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-12">
                                <div class="main_title">
                                    <h2><span>Featured product</span></h2>
                                    <p>Bring called seed first of third give itself now ment</p>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <asp:DataList ID="dlFeaturedProduct" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">




                                <ItemTemplate>

                                    <div class="col-lg-12 col-md-12">
                                        <div class="single-product">

                                            <div class="product-btm">
                                                <asp:Image ID="Imgad12" runat="server" ImageUrl='<%# Eval("ProductImg") %>' />


                                                <a href="#" class="d-block">
                                                    <h4><%# Eval("ProductName") %></h4>
                                                    <h4>₹<%# Eval("ProductPrice") %> </h4>
                                                </a>
                                                <div class="mt-3">
                                                    <asp:Button ID="btnViewDetails" runat="server" Text="View Details" class="card_btn" CommandName="ViewDetail" CommandArgument='<%# Eval("ProductID") %>' /></a>            
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                </ItemTemplate>

                            </asp:DataList>



                        </div>





                    </div>
                </section>






                <section class="p-t-20">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <h3 class="title-5 m-b-35">Products List</h3>
                                <div class="table-data__tool">
                                    <div class="table-data__tool-left">
                                        <div class="au-form-icon--sm">
                                            <asp:TextBox ID="txtSearch" runat="server" placeholder="Enter Product Name/Category" CssClass="au-input--w300 au-input--style2">
                                            </asp:TextBox>
                                            <asp:LinkButton ID="lnkSearch" runat="server" CssClass="au-btn--submit2" OnClick="lnkSearch_OnClick">
                                        <i class="zmdi zmdi-search"></i></asp:LinkButton>


                                        </div>
                                    </div>
                                    <div class="table-data__tool-right">


                                        <asp:LinkButton ID="btnAddProduct" runat="server" CssClass="au-btn au-btn-icon au-btn--green au-btn--small" OnClick="addProduct_Click"> 
                                            <i class="zmdi zmdi-plus"></i>Add Product </asp:LinkButton>

                                    </div>
                                </div>





                                <asp:DataList ID="dlProducts" runat="server" class="table-responsive table-responsive-data2"
                                    OnItemCommand="Item_Command"
                                    OnDeleteCommand="dl1_DeleteCommand">



                                    <HeaderTemplate>
                                        <table class="table table-data2">
                                            <thead>
                                                <tr>
                                                    <th>ID</th>

                                                    <th>Name</th>
                                                    <th>Country of Origin</th>
                                                    <th>Category</th>
                                                    <th>Brand</th>
                                                    <th>Pack Size</th>

                                                    <th>Price</th>

                                                    <th></th>
                                                </tr>
                                            </thead>
                                        </table>

                                    </HeaderTemplate>


                                    <ItemTemplate>

                                        <table class="table table-data2">

                                            <tbody>
                                                <tr class="tr-shadow">

                                                    <td>
                                                        <asp:Label ID="lblproductID" runat="server" Text='<%# Eval("ProductID") %>'>      
                                                        </asp:Label>
                                                    </td>
                                                    <td><%# Eval("ProductName") %></td>
                                                    <td><%# Eval("ProductOrigin") %></td>
                                                    <td><%# Eval("CategoryName") %></td>
                                                    <td><%# Eval("ProductBrand") %></td>
                                                    <td><%# Eval("ProductSize") %></td>

                                                    <td><%# Eval("ProductPrice") %></td>


                                                    <td>
                                                        <div class="table-data-feature">
                                                            <asp:LinkButton ID="lnkbtnViewDetails" runat="server" class="item" data-toggle="tooltip" data-placement="top" title="View" CommandName="View">
                                                     <i class="zmdi zmdi-eye"></i>
                                                            </asp:LinkButton>

                                                            <asp:LinkButton ID="lnkbtnEdit" runat="server" class="item" data-toggle="tooltip" data-placement="top" title="Edit" CommandName="Edit">
                                                     <i class="zmdi zmdi-edit"></i>
                                                            </asp:LinkButton>

                                                            <asp:LinkButton ID="lnkbtnDelete" runat="server" class="item" data-toggle="tooltip" data-placement="top" title="Delete" CommandName="Delete">
                                                     <i class="zmdi zmdi-delete"></i>
                                                            </asp:LinkButton>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr class="spacer"></tr>


                                            </tbody>
                                        </table>


                                    </ItemTemplate>

                                </asp:DataList>

                            </div>
                        </div>
                    </div>
                </section>

            </div>











            <uc1:footer runat="server" ID="footer" />
        </div>
    </form>
</body>
</html>
