<%@page import="util.Criptografia"%>
<%@page import="modelo.Cliente"%>
<%@page import="dao.ClienteDAO"%>
<%@include file="cabecalho.jsp" %>
<%    if (request.getMethod().equals("POST")) {
        ClienteDAO dao = new ClienteDAO();
        List<Cliente> cliente = dao.listar();
        for (Cliente item : cliente) {
            if (request.getParameter("txtEmail").equals(item.getEmail()) && Criptografia.convertPasswordToMD5(request.getParameter("txtSenha")).equals(item.getSenha())) {
                
            }
        }
    }
%>

<html>
    <head>
        <title>Ecommerce</title>
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
        <div class="content">
            <div class="main-1">
                <div class="container">
                    <div class="login-page">
                        <div class="account_grid">
                            <div class="col-md-6 login-left">
                                <h3>Novos Clientes</h3>
                                <p>Ao criar uma conta em nossa loja, você será capaz de fazer compras, receber novidades, obter cupons de disconto, entre outras novidades.</p>
                                <a class="acount-btn" href="account.jsp">Criar uma conta</a>
                            </div>
                            <div class="col-md-6 login-right">
                                <h3>Registro de Clientes</h3>
                                <p>Se você já possuir uma conta conosco, por favor logue-se.</p>
                                <form>
                                    <div>
                                        <span>Email<label>*</label></span>
                                        <input type="text" name="txtEmail"> 
                                    </div>
                                    <div>
                                        <span>Senha<label>*</label></span>
                                        <input type="password" name="txtSenha"> 
                                    </div>
                                    <a class="forgot" href="#">Esqueceu sua senha?</a>
                                    <input type="submit" value="Resgatar">
                                </form>
                            </div>	
                            <div class="clearfix"> </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>        
    </body>
</html>
<%@include file="rodape.jsp" %>

