package org.apache.jsp.Site;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import java.math.BigDecimal;
import modelo.Carrinho;
import modelo.ItemCarrinho;
import modelo.Venda;
import dao.VendaDAO;
import modelo.Produto;
import modelo.Status;
import dao.StatusDAO;
import dao.ProdutoDAO;
import modelo.Marca;
import dao.MarcaDAO;
import java.util.List;
import dao.CategoriaDAO;
import modelo.Categoria;

public final class checkout_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/Site/cabecalho.jsp");
    _jspx_dependants.add("/Site/rodape.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");

    VendaDAO vdao = new VendaDAO();
    Venda vobj = new Venda();
    //abaixo é referente à pesquisa
    MarcaDAO mdao = new MarcaDAO();
    List<Marca> mlista = mdao.listar();

    CategoriaDAO cdao = new CategoriaDAO();
    List<Categoria> clista = cdao.listar();

    ProdutoDAO ppdao = new ProdutoDAO();
    List<Produto> pplista;

    if (request.getParameter("filtroC") != null) {
        pplista = ppdao.listarTipoC(request.getParameter("filtroC"));
    } else if (request.getParameter("filtroM") != null) {
        pplista = ppdao.listarTipoM(request.getParameter("filtroM"));
    } else if (request.getParameter("txtFiltro") != null) {
        pplista = ppdao.listar(request.getParameter("txtFiltro"));
    } else {
        pplista = ppdao.listar();
    }



      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Bom Coffee</title>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\"/>\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("        <link href=\"css/owl.carousel.css\" rel=\"stylesheet\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <meta name=\"keywords\" content=\"Swim Wear Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, \n");
      out.write("              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design\" />\n");
      out.write("        <script type=\"application/x-javascript\"> addEventListener(\"load\", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>\n");
      out.write("        <script src=\"js/jquery.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/bootstrap-3.1.1.min.js\"></script>\n");
      out.write("        <!--Parte do Single -->\n");
      out.write("        <script>\n");
      out.write("            // Can also be used with $(document).ready()\n");
      out.write("            $(window).load(function () {\n");
      out.write("                $('.flexslider').flexslider({\n");
      out.write("                    animation: \"slide\",\n");
      out.write("                    controlNav: \"thumbnails\"\n");
      out.write("                });\n");
      out.write("            });\n");
      out.write("        </script>        \n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("        <meta name=\"keywords\" content=\"Swim Wear Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, \n");
      out.write("              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design\" />\n");
      out.write("        <script type=\"application/x-javascript\"> addEventListener(\"load\", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>\n");
      out.write("        <script src=\"js/jquery.min.js\"></script>\n");
      out.write("        <!-- cart -->\n");
      out.write("        <script src=\"js/simpleCart.min.js\"></script>\n");
      out.write("        <!-- cart -->\n");
      out.write("        <script src=\"js/imagezoom.js\"></script>\n");
      out.write("        <!-- FlexSlider -->\n");
      out.write("        <script defer src=\"js/jquery.flexslider.js\"></script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/flexslider.css\" type=\"text/css\" media=\"screen\" />\n");
      out.write("        <!-- the jScrollPane script -->\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery.jscrollpane.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" id=\"sourcecode\">\n");
      out.write("            $(function ()\n");
      out.write("            {\n");
      out.write("                $('.scroll-pane').jScrollPane();\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("        <!-- cart -->\n");
      out.write("        <script src=\"js/simpleCart.min.js\"></script>\n");
      out.write("        <!-- cart -->\n");
      out.write("        <!-- the jScrollPane script -->\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery.jscrollpane.min.js\"></script>\n");
      out.write("        <!-- //the jScrollPane script -->\n");
      out.write("        <link href=\"css/form.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("        <!-- the mousewheel plugin -->\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery.mousewheel.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!--header-->\n");
      out.write("        <div class=\"header\">\n");
      out.write("            <div class=\"header-top\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"lang_list\">\n");
      out.write("                        <select tabindex=\"4\" class=\"dropdown1\">\n");
      out.write("                            <option value=\"5\">Português</option>\n");
      out.write("                            <option value=\"1\">English</option>\n");
      out.write("                            <option value=\"2\">François</option>\n");
      out.write("                            <option value=\"3\">German em alemão hue</option>\n");
      out.write("                            <option value=\"6\">Español</option>\n");
      out.write("                        </select>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"top-right\">\n");
      out.write("                        <ul>\n");
      out.write("                            <li class=\"text\"><a href=\"login.jsp\">login</a></li>\n");
      out.write("                            <li><div class=\"cart box_1\">\n");
      out.write("                                    <a href=\"checkout.jsp\">\n");
      out.write("                                        <span class=\"simpleCart_total\"> R$0.00 </span> (<span id=\"simpleCart_quantity\" class=\"simpleCart_quantity\"> 0 </span>)\n");
      out.write("                                    </a>\t\n");
      out.write("                                    <p><a href=\"javascript:;\" class=\"simpleCart_empty\">Esvaziar carrinho</a></p>\n");
      out.write("                                    <div class=\"clearfix\"> </div>\n");
      out.write("                                </div></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"clearfix\"></div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"header-bottom\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <!--/.content-->\n");
      out.write("                    <div class=\"content white\">\n");
      out.write("                        <nav class=\"navbar navbar-default\" role=\"navigation\">\n");
      out.write("                            <div class=\"navbar-header\">\n");
      out.write("                                <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\">\n");
      out.write("                                    <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                                    <span class=\"icon-bar\"></span>\n");
      out.write("                                    <span class=\"icon-bar\"></span>\n");
      out.write("                                    <span class=\"icon-bar\"></span>\n");
      out.write("                                </button>\n");
      out.write("                                <h1 class=\"navbar-brand\"><a  href=\"index.jsp\">Bom Coffee</a></h1>\n");
      out.write("                            </div>\n");
      out.write("                            <!--/.navbar-header-->\n");
      out.write("\n");
      out.write("                            <div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\n");
      out.write("                                <ul class=\"nav navbar-nav\">\n");
      out.write("                                    <li><a href=\"index.jsp\">Home</a></li>\n");
      out.write("                                    <li class=\"dropdown\">\n");
      out.write("                                        <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Categoria <b class=\"caret\"></b></a>\n");
      out.write("                                        <ul class=\"dropdown-menu multi-column columns-3\">\n");
      out.write("                                            <div class=\"row\">\n");
      out.write("                                                <div class=\"col-sm-4\">\n");
      out.write("                                                    <ul class=\"multi-column-dropdown\">\n");
      out.write("                                                        ");
   
                                                            for (Categoria item : clista) {
                                                        
      out.write("\n");
      out.write("                                                        <li><a class=\"list\" href=\"products.jsp?filtroC=");
      out.print(item.getCodigo());
      out.write('"');
      out.write('>');
      out.print(item.getNome());
      out.write("</a></li>\n");
      out.write("                                                            ");

                                                                }
                                                            
      out.write("\n");
      out.write("                                                    </ul>\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("                                        </ul>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li class=\"dropdown\">\n");
      out.write("                                        <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Marca <b class=\"caret\"></b></a>\n");
      out.write("                                        <ul class=\"dropdown-menu multi-column columns-3\">\n");
      out.write("                                            <div class=\"row\">\n");
      out.write("                                                <div class=\"col-sm-4\">\n");
      out.write("                                                    <ul class=\"multi-column-dropdown\">\n");
      out.write("                                                        ");

                                                            for (Marca item : mlista) {
                                                        
      out.write("\n");
      out.write("                                                        <li><a class=\"list\" href=\"products.jsp?filtroM=");
      out.print(item.getCodigo());
      out.write('"');
      out.write('>');
      out.print(item.getNome());
      out.write("</a></li>\n");
      out.write("                                                            ");

                                                                }
                                                            
      out.write("\n");
      out.write("                                                    </ul>\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("                                        </ul>\n");
      out.write("                                    </li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                            <!--/.navbar-collapse-->\n");
      out.write("                        </nav>\n");
      out.write("                        <!--/.navbar-->\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"search-box\">\n");
      out.write("                        <div id=\"sb-search\" class=\"sb-search\">\n");
      out.write("                            <form action=\"products.jsp\" method=\"post\">\n");
      out.write("                                <input class=\"sb-search-input\" placeholder=\"Digite o texto de sua pesquisa...\" type=\"search\" name=\"txtFiltro\" id=\"search\">\n");
      out.write("                                <input class=\"sb-search-submit\" type=\"submit\" value=\"\">\n");
      out.write("                                <span class=\"sb-icon-search\"> </span>\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <!-- search-scripts -->\n");
      out.write("                    <script src=\"js/classie.js\"></script>\n");
      out.write("                    <script src=\"js/uisearch.js\"></script>\n");
      out.write("                    <script>\n");
      out.write("            new UISearch(document.getElementById('sb-search'));\n");
      out.write("                    </script>\n");
      out.write("                    <!-- //search-scripts -->\n");
      out.write("                    <div class=\"clearfix\"></div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!--header-->");
      out.write('\n');
    Carrinho carrinho;
    if (session.getAttribute("carrinho") != null) {
        carrinho = (Carrinho) session.getAttribute("carrinho");
    } else {
        carrinho = new Carrinho();
    }
    if (request.getMethod().equals("POST")) {

        Integer codigo = Integer.parseInt(request.getParameter("txtCodigo"));
        Integer quantidade = Integer.parseInt(request.getParameter("txtQuantidade"));

        ItemCarrinho item = new ItemCarrinho();
        item.setQuantidade(quantidade);
        ProdutoDAO pdao = new ProdutoDAO();
        Produto produto = pdao.buscarPorChavePrimaria(codigo);
        item.setProduto(produto);
        if (carrinho.getItemCarrinho() != null) {
            List<ItemCarrinho> itemCarrinho = new ArrayList<>();
            itemCarrinho.add(item);
            carrinho.setItemCarrinho(itemCarrinho);
            Double total = carrinho.getTotal().doubleValue() + (quantidade * produto.getPreco().doubleValue());
            carrinho.setTotal(new BigDecimal(total));
        } else {
            carrinho.getItemCarrinho().add(item);
            Double total = carrinho.getTotal().doubleValue() + (quantidade * produto.getPreco().doubleValue());
            carrinho.setTotal(new BigDecimal(total));
        }
        session.setAttribute("carrinho", carrinho);
    }

      out.write("\n");
      out.write("<div class=\"content\">\n");
      out.write("    <div class=\"cart-items\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <h2>Meu Carrinho de Compras</h2>\n");
      out.write("            <div class=\"cart-header\">\n");
      out.write("                ");

                    if (carrinho.getItemCarrinho() != null) {
                        for (ItemCarrinho item : carrinho.getItemCarrinho()) {


                
      out.write("\n");
      out.write("                <div class=\"close1\"> </div>\n");
      out.write("                <div class=\"cart-sec simpleCart_shelfItem\">\n");
      out.write("                    <div class=\"cart-item cyc\">\n");
      out.write("                        <img src=\"../fotos/");
      out.print(item.getProduto().getImagem1());
      out.write("\" class=\"img-responsive\" alt=\"\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"cart-item-info\">\n");
      out.write("                        <h3><a href=\"#\"> ");
      out.print(item.getProduto().getDescricao());
      out.write(" </a><span>Não sei o que é</span></h3>\n");
      out.write("                        <ul class=\"qty\">\n");
      out.write("                            <li><p>Quantidade: ");
      out.print(request.getParameter("txtQuantidade"));
      out.write("</p></li>\n");
      out.write("                            <li><p> Tipo de Entrega</p></li>\n");
      out.write("                        </ul>\n");
      out.write("                        <div class=\"delivery\">\n");
      out.write("                            <p>Taxas de Serviço : R$ Algum valor</p>\n");
      out.write("                            <span>Tempo de Frete</span>\n");
      out.write("                            <div class=\"clearfix\"></div>\n");
      out.write("                        </div>\t\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"clearfix\"></div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                ");

                        }
                    }
                
      out.write("\n");
      out.write("            </div>\t\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("        <div class=\"subscribe\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"subscribe1\">\n");
      out.write("                    <h4>Receber novidades e promoções</h4>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"subscribe2\">\n");
      out.write("                    <form>\n");
      out.write("                        <input type=\"text\" class=\"text\" value=\"Email\" onfocus=\"this.value = '';\" onblur=\"if (this.value == '') {\n");
      out.write("                                    this.value = 'Email';\n");
      out.write("                                }\">\n");
      out.write("                        <input type=\"submit\" value=\"Enviar\">\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"clearfix\"></div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!--footer-->\n");
      out.write("        <div class=\"footer-section\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"footer-grids\">\n");
      out.write("                    <div class=\"col-md-2 footer-grid\">\n");
      out.write("                        <h4>companhia</h4>\n");
      out.write("                        <ul>\n");
      out.write("                            <li><a href=\"products.jsp\">Produtos</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-2 footer-grid\">\n");
      out.write("                        <h4>Serviço</h4>\n");
      out.write("                        <ul>\n");
      out.write("                            <li><a href=\"contact.jsp\">Suporte</a></li>\n");
      out.write("                            <li><a href=\"#\">FAQ</a></li>\n");
      out.write("                            <li><a href=\"#\">Warranty</a></li>\n");
      out.write("                            <li><a href=\"contact.jsp\">Contate-nos</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-2 footer-grid\">\n");
      out.write("                        <h4>Pedido e Status</h4>\n");
      out.write("                        <ul>\n");
      out.write("                            <li><a href=\"#\">Status de Pedido</a></li>\n");
      out.write("                            <li><a href=\"#\">Política de Envio</a></li>\n");
      out.write("                            <li><a href=\"#\">Política de Devolução</a></li>\n");
      out.write("                            <li><a href=\"#\">Digital Gift Card</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-2 footer-grid\">\n");
      out.write("                        <h4>legal</h4>\n");
      out.write("                        <ul>\n");
      out.write("                            <li><a href=\"#\">Privacidade</a></li>\n");
      out.write("                            <li><a href=\"#\">Termos e condições</a></li>\n");
      out.write("                            <li><a href=\"#\">Responsabilidade Social</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-4 footer-grid1\">\n");
      out.write("                        <div class=\"social-icons\">\n");
      out.write("                            <a href=\"https://www.instagram.com/icarocrespo/\"><i class=\"icon\"></i></a>\n");
      out.write("                            <a href=\"https://www.facebook.com/icarocrespo\"><i class=\"icon1\"></i></a>\n");
      out.write("                            <a href=\"https://www.twitter.com/icarocrespo\"><i class=\"icon2\"></i></a>\n");
      out.write("                            <!--\n");
      out.write("                                <a href=\"#\"><i class=\"icon3\"></i></a>\n");
      out.write("                                <a href=\"#\"><i class=\"icon4\"></i></a> \n");
      out.write("                            -->\n");
      out.write("                        </div>\n");
      out.write("                        <p>Copyright &copy; 2015 Swim Wear. All rights reserved | Design by <a href=\"http://w3layouts.com\">W3layouts</a></p>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"clearfix\"></div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write('\n');
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
