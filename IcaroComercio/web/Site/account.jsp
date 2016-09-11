<%@page import="dao.ClienteDAO"%>
<%@page import="modelo.Cliente"%>
<%
    Cliente obj = new Cliente();
    ClienteDAO dao = new ClienteDAO();
%>

<html>
    <head>
        <title>Swim Wear a E-Commerce online Shopping Category Flat Bootstrap Responsive Website Template | Account :: w3layouts</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/owl.carousel.css" rel="stylesheet">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Swim Wear Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <script src="js/jquery.min.js"></script>
        <!-- cart -->
        <script src="js/simpleCart.min.js"></script>
        <!-- cart -->
        <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
        <script src="js/imagezoom.js"></script>

        <!-- FlexSlider -->
        <script defer src="js/jquery.flexslider.js"></script>
        <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

        <script>
// Can also be used with $(document).ready()
            $(window).load(function () {
                $('.flexslider').flexslider({
                    animation: "slide",
                    controlNav: "thumbnails"
                });
            });
        </script>
    </head>
    <body>
        <%@include file="cabecalho.jsp" %>
        <div class="content">
            <!-- registration -->
            <div class="main-1">
                <div class="container">
                    <div class="register">
                        <form> 
                            <div class="register-top-grid">
                                <h3>Informações de Usuário</h3>
                                <div class="wow fadeInLeft" data-wow-delay="0.4s">
                                    <span>Nome<label>*</label></span>
                                    <input type="text" name="txtNome"> 
                                </div>
                                <div class="wow fadeInRight" data-wow-delay="0.4s">
                                    <span>E-mail<label>*</label></span>
                                    <input type="text" name="txtEmail"> 
                                </div>
                                <div class="wow fadeInRight" data-wow-delay="0.4s">
                                    <span>Senha<label>*</label></span>
                                    <input type="password" name="txtSenha"> 
                                </div>
                                <div class="wow fadeInRight" data-wow-delay="0.4s">
                                    <span>Endereço<label>*</label></span>
                                    <input type="text" name="txtEndereco"> 
                                </div>
                                <div class="wow fadeInRight" data-wow-delay="0.4s">
                                    <span>Bairro<label>*</label></span>
                                    <input type="text" name="txtBairro"> 
                                </div>
                                <div class="wow fadeInRight" data-wow-delay="0.4s">
                                    <span>Cidade<label>*</label></span>
                                    <input type="text" name="txtCidade"> 
                                </div>
                                <div class="wow fadeInRight" data-wow-delay="0.4s">
                                    <span>UF<label>*</label></span>
                                    <input type="text" maxlength="2" name="txtSenha"> 
                                </div>
                                <div class="wow fadeInRight" data-wow-delay="0.4s">
                                    <span>CEP<label>*</label></span>
                                    <input type="text"  maxlength="9" name="txtCEP"> 
                                </div>
                            </div>
                            <div class="register-bottom-grid">
                                <h3>LOGIN INFORMATION</h3>
                                <div class="wow fadeInLeft" data-wow-delay="0.4s">
                                    <span>Password<label>*</label></span>
                                    <input type="text">
                                </div>
                                <div class="wow fadeInRight" data-wow-delay="0.4s">
                                    <span>Confirm Password<label>*</label></span>
                                    <input type="text">
                                </div>
                            </div>
                        </form>
                        <div class="clearfix"> </div>
                        <div class="register-but">
                            <form>
                                <input type="submit" value="submit">
                                <div class="clearfix"> </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- registration -->

            <div class="subscribe">
                <div class="container">
                    <div class="subscribe1">
                        <h4>the latest from swim wear</h4>
                    </div>
                    <div class="subscribe2">
                        <form>
                            <input type="text" class="text" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = 'Email';
                                    }">
                            <input type="submit" value="JOIN">
                        </form>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <%@include file="rodape.jsp" %>
    </body>
</html>