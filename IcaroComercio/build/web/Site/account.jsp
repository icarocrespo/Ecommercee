<%@page import="util.Criptografia"%>
<%@page import="dao.ClienteDAO"%>
<%@page import="modelo.Cliente"%>
<%@include file="cabecalho.jsp" %>
<%    
    ClienteDAO dao = new ClienteDAO();
    Cliente obj = new Cliente();
    if(request.getMethod().equals("POST")){
        obj.setNome(request.getParameter("txtNome"));
        obj.setEmail(request.getParameter("txtEmail"));
        obj.setSenha(Criptografia.convertPasswordToMD5(request.getParameter("txtSenha")));
        obj.setBairro(request.getParameter("txtBairro"));
        obj.setCidade(request.getParameter("txtCidade"));
        obj.setEstado(request.getParameter("txtUF"));
        obj.setCep(request.getParameter("txtCEP"));
        dao.incluir(obj);
    }
%>
<div class="content">

    <!-- registration -->
    <div class="main-1">
        <div class="container">
            <div class="register">
                <p class="register-top-grid"> * = Informações obrigatórias</p><br>
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
                            <input type="text" maxlength="2" name="txtUF"> 
                        </div>
                        <div class="wow fadeInRight" data-wow-delay="0.4s">
                            <span>CEP<label>*</label></span>
                            <input type="text"  maxlength="9" name="txtCEP"> 
                        </div>
                    </div>
                    <!--<div class="register-bottom-grid">
                        <h3>LOGIN INFORMATION</h3>
                        <div class="wow fadeInLeft" data-wow-delay="0.4s">
                            <span>Password<label>*</label></span>
                            <input type="text">
                        </div>
                        <div class="wow fadeInRight" data-wow-delay="0.4s">
                            <span>Confirm Password<label>*</label></span>
                            <input type="text">
                        </div>
                    </div>-->
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
</div>
<%@include file="rodape.jsp" %>