<%@page import="model.entity.Usuario"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Any+</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="styles/style.css">
    </head>
    <body>
        <div class="container c-header">
            <header>
                <img src="images/logo.png" class="img-responsive logo-header"/>
            </header>
        </div>
        
        <div class="container">
            <div class="col-md-2"></div>
            <div class="col-md-8">
                <div class="menu menu-cliente">
                    <img src="images/profile-image.png" class="menu-profile-image"/><br>
                    <a href="editar-perfil-cliente.html"><input type="image" src="images/editar-perfil-button.png" class="menu-editar-perfil" /></a><br>
                    <a href="meus-pets.html"><input type="image" src="images/meus-pets-button.png" class="menu-meus-pets" /></a><br>
                    <a href="mensagens-cliente.html"><input type="image" src="images/mensagens-button.png" class="menu-mensagens" /></a><br>
                    <a href="agendamentos-cliente.html"><input type="image" src="images/agendamento-button.png" class="menu-agendamento" /></a><br>
                    <a href="minhas-avaliacoes.html"><input type="image" src="images/minhas-avaliacoes-button.png" class="menu-minhas-avaliacoes" /></a><br>
                    <input type="image" src="images/logout-button.png" class="logout-button" />
                </div>
                <a href="home-cliente.html"><input type="image" src="images/home-button2.png" class="menu2-home2" /></a>
                <a href="amigos.html"><input type="image" src="images/amigos-button.png" class="menu2-amigos" /></a>
                <a href="petshop.html"><input type="image" src="images/petshop-button.png" class="menu2-petshop" /></a><br>
                <div class="principal principal-cliente">
                    <h4 class="title">Editar Perfil</h4>
                    
                    <form id="formcliente" class="editar-form" action="/AnyMais/usuario/atualizado">
                    <table>
                        <tr>
                          <td class="editar-cadastro-field">Nome </td>
                          <td colspan="4" class="editar-cadastro-field">
                              <input type="text" class="label-field-editar" name="nome" required
                                     value="<% out.print(session.getAttribute("usuario") != null ? ((Usuario) session.getAttribute("usuario")).getNome().toUpperCase() : ""); %>">
                          </td>
                          <td>
                              <img class="editar-foto" src="images/profile-image.png"/><br>
                              <u class="selecionar-foto">Selecionar foto...</u>
                          </td>
                        </tr>
                        <tr>
                          <td class="editar-cadastro-field"> Sexo </td>
                          <td class="editar-cadastro-field editar-coluna1">
                              <select name="sexo" required class="editar-seleciona-sexo">
                                <option value="-" <% out.print(session.getAttribute("usuario") == null ? "selected" : ""); %>></option>
                                <option value="Feminino" <% out.print(session.getAttribute("usuario") != null && ((Usuario) session.getAttribute("usuario")).getSexo().toUpperCase().equals("FEMININO") ? "selected" : ""); %>>Feminino</option>
                                <option value="Masculino" <% out.print(session.getAttribute("usuario") != null && ((Usuario) session.getAttribute("usuario")).getSexo().toUpperCase().equals("MASCULINO") ? "selected" : ""); %>>Masculino</option>
                                <option value="Outro" <% out.print(session.getAttribute("usuario") != null && ((Usuario) session.getAttribute("usuario")).getSexo().toUpperCase().equals("OUTRO") ? "selected" : ""); %>>Outro</option>
                              </select>
                          </td>
                          <td class="editar-cadastro-field">Data Nascimento </td>
                          <td class="editar-cadastro-field">
                              <input type="date" name="nascimento" class="editar-coluna2" required
                                     value="<% out.print(session.getAttribute("usuario") != null ? ((Usuario) session.getAttribute("usuario")).getDataNascimento(): 0); %>">
                          </td>
                        </tr>
                        <tr>
                          <td class="editar-cadastro-field">Endere�o </td>
                          <td colspan="5" class="editar-cadastro-field">
                              <input type="text" class="label-field-editar" name="endereco" required
                                     value="<% out.print(session.getAttribute("usuario") != null ? ((Usuario) session.getAttribute("usuario")).getEnd(): 0); %>">
                          </td>
                        </tr>
                        <tr>
                          <td class="editar-cadastro-field">Bairro </td>
                          <td class="editar-cadastro-field">
                              <input type="text" class="label-field-teste editar-coluna1" name="bairro" required
                                     value="<% out.print(session.getAttribute("usuario") != null ? ((Usuario) session.getAttribute("usuario")).getBairro(): 0); %>">
                          </td>
                          <td class="editar-cadastro-field">Complemento </td>
                          <td colspan="2" class="editar-cadastro-field">
                              <input type="text" class="label-field editar-coluna2" name="complemento"
                                     value="<% out.print(session.getAttribute("usuario") != null ? ((Usuario) session.getAttribute("usuario")).getComplemento(): 0); %>">
                          </td>
                        </tr>
                        <tr>
                          <td class="editar-cadastro-field">CEP </td>
                          <td class="editar-cadastro-field">
                              <input type="text" class="label-field editar-coluna1" name="cep" required
                                     value="<% out.print(session.getAttribute("usuario") != null ? ((Usuario) session.getAttribute("usuario")).getCep(): 0); %>"> 
                          </td>
                          <td class="editar-cadastro-field">Cidade </td>
                          <td class="editar-cadastro-field">
                              <input type="text" class="label-field editar-coluna2" name="cidade" required
                                     value="<% out.print(session.getAttribute("usuario") != null ? ((Usuario) session.getAttribute("usuario")).getCidade(): 0); %>">
                          </td>
                          <td class="editar-cadastro-field">UF </td>
                          <td class="editar-cadastro-field">
                              <select name="uf" required class="editar-uf">
                                <option></option>
                                <option value="AC">AC</option>
                                <option value="AL">AL</option>
                                <option value="AP">AP</option>
                                <option value="AM">AM</option>
                                <option value="BA">BA</option>
                                <option value="CE">CE</option>
                                <option value="DF">DF</option>
                                <option value="ES">ES</option>
                                <option value="GO">GO</option>
                                <option value="MA">MA</option>
                                <option value="MT">MT</option>
                                <option value="MS">MS</option>
                                <option value="MG">MG</option>
                                <option value="PA">PA</option>
                                <option value="PB">PB</option>
                                <option value="PR">PR</option>
                                <option value="PE">PE</option>
                                <option value="PI">PI</option>
                                <option value="RJ">RJ</option>
                                <option value="RN">RN</option>
                                <option value="RS">RS</option>
                                <option value="RO">RO</option>
                                <option value="RR">RR</option>
                                <option value="SC">SC</option>
                                <option value="SP">SP</option>
                                <option value="SE">SE</option>
                                <option value="TO">TO</option>
                              </select>
                          </td>
                        </tr>
                        <tr>
                          <td class="editar-cadastro-field">Telefone </td>
                          <td class="editar-cadastro-field">
                              <input type="text" class="label-field editar-coluna1" name="telefone"
                                     value="<% out.print(session.getAttribute("usuario") != null ? ((Usuario) session.getAttribute("usuario")).getTelefone() : 0); %>">
                          </td>
                          <td class="editar-cadastro-field">Celular </td>
                          <td colspan="2" class="editar-cadastro-field">
                              <input type="text" class="label-field editar-coluna2" name="telefone2"
                                     value="<% out.print(session.getAttribute("usuario") != null ? ((Usuario) session.getAttribute("usuario")).getCelular(): 0); %>">
                          </td>
                        </tr>
                        <tr>
                          <td class="editar-cadastro-field">E-mail </td>
                          <td class="editar-cadastro-field">
                              <input type="text" class="label-field editar-coluna1" name="email" 
                                     value="<% out.print(session.getAttribute("usuario") != null ? ((Usuario) session.getAttribute("usuario")).getEmail(): 0); %>">
                          </td>
                          <td class="editar-cadastro-field">Confirmar E-mail </td>
                          <td colspan="2" class="editar-cadastro-field">
                              <input type="text" class="label-field editar-coluna2" name="confirma-email" >
                          </td>
                        </tr>
                        <tr>
                          <td class="editar-cadastro-field">Senha </td>
                          <td class="editar-cadastro-field">
                              <input type="password" class="label-field editar-coluna1" name="senha">
                          </td>
                          <td class="editar-cadastro-field">Confirmar Senha </td>
                          <td colspan="2" class="editar-cadastro-field">
                              <input type="password" class="label-field editar-coluna2" name="confirma-senha">
                          </td>
                        </tr>
                        <tr>
                            <td class="editar-cadastro-field">Mensagem </td>
                            <td colspan="2" class="editar-cadastro-field">
                                <textarea name="mensagem" rows="2" cols="30">
                                  <% out.print(session.getAttribute("usuario") != null ? ((Usuario) session.getAttribute("usuario")).getMensagem() : ""); %>
                                </textarea> 
                            </td>
                        </tr>
                        <tr>
                            <td colspan="6" class="editar-cadastro-field">
                                <input type="submit" class="button-cancelar" value="Cancelar">
                                <input type="submit" class="button-cadastrar" value="Atualizar">
                            </td>
                        </tr>
                    </table>
                </form>
                </div>
            </div>
            <div class="col-md-2"></div>
        </div>
        <div class="container c-footer">
            <footer></footer>
        </div>
                                
        <script>
            function load(){
                var cadastrar = document.getElementsByName("cadastrar")[0];
                
                cadastrar.addEventListener("click", function(e){
                    if(e.target.value == "Atualizar"){
                        document.getElementById("formcliente").action = "/AnyMais/racas/atualizado";
                        document.getElementById("formcliente").submit();
                    }
                });
            }
            
            load();
            </script>
    </body>
</html>
