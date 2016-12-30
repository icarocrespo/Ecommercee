<%@page import="util.EnviarEmail"%>
<%
    String mensagemUsuario = null;

if (request.getMethod().equals("POST")) {
    EnviarEmail enviar = new EnviarEmail();
    enviar.setEmailDestinatario("icarocrespo@gmail.com");
    enviar.setAssunto("Contato - Bom Coffee");
    //uso StringBuffer para otimizar a concatenação 
    //de string
    StringBuffer texto = new StringBuffer(); 
    texto.append("<h2 align='center'>BomCoffee</h2>");
    texto.append("Informações: <br/>");
    texto.append("Nome Contato: ");
    texto.append(request.getParameter("txtNome"));
    texto.append("<br/>");
    texto.append("Email Contato: ");
    texto.append(request.getParameter("txtRemetente"));
    texto.append("<br/>");
    texto.append("Mensagem: ");
    texto.append(request.getParameter("txtMensagem"));
    enviar.setMsg(texto.toString());
    
    boolean enviou = enviar.enviarGmail();
    if (enviou) {
            
            mensagemUsuario = "Dados enviados com sucesso";
           
        } else {
            mensagemUsuario = "Não foi enviar as informações";
            
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
        <link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript" src="js/megamenu.js"></script>
        <script>$(document).ready(function () {
                $(".megamenu").megamenu();
            });</script>
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
            <!--start-contact-->
            <!--contact-->
            <div class="content">
                <div class="contact">
                    <div class="container">
                        <h2>contact us</h2>
                        <div class="google-map">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d424396.3176723366!2d150.92243255000002!3d-33.7969235!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b129838f39a743f%3A0x3017d681632a850!2sSydney+NSW%2C+Australia!5e0!3m2!1sen!2sin!4v1431587453420"></iframe>
                        </div>
                        <div class="contact-grids">
                            <div class="col-md-6 contact-left">
                                <p>Alguma coisa.</p>
                                <address>
                                    <p>Doritos colorido artificialmente.</p>
                                    <p>Madezatti,</p>
                                    <p>E-mail : <a href="icarocrespo@gmail.com">icarocrespo@gmail.com</a></p>
                                </address>
                            </div>
                            <div class="col-md-6 contact-right">
                                <form action="contact.jsp" method="post">
                                    <h5>Nome</h5>
                                    <input type="text" name="txtNome">
                                    <h5>Endereço de Email</h5>
                                    <input type="text" name="txtRemetente">
                                    <h5>Mensagem</h5>
                                    <textarea name="txtMensagem"></textarea>
                                    <input type="submit" value="Enviar">
                                </form>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>