<%-- 
    Document   : cadastrar-vacinas-medicamentos
    Created on : 26/10/2016, 03:54:10
    Author     : ana
--%>

<%@page import="model.entity.VacinaMedicamento"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="en">
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
                <div class="menu">
                    <a href="ver-racas.html"><input type="image" src="images/racas-button.png" class="menu-racas-button" /></a><br>
                    <a href="ver-vacinas-medicamentos.html"><input type="image" src="images/vacinas-medicamentos-button.png" class="menu-vacinas-button" /></a><br>
                    <input type="image" src="images/logout-button.png" class="logout-button" />
                </div>
                <div class="principal">
                    <h3 class="title">Cadastrar Vacinas e Medicamentos</h3>
                    <form action="">
                        <table>
                            <tr>
                                <td>
                                    <input type="radio" name="tipo-pet" value="cachorro" class="cadastra-raca label-field-vacina"> Cachorro
                                </td>
                                <td>
                                    <input type="radio" name="tipo-pet" value="gato" class="label-field-vacina"> Gato<br>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p class="cadastra-vacina">Nome:</p>
                                </td>
                                <td>
                                    <input type="text" class="label-field-vacina" name="nome-raca">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p class="cadastra-vacina">Periodicidade:</p>
                                </td>
                                <td>
                                    <input type="number" name="periodicidade" class="label-periodo label-field-vacina" min="0">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p class="cadastra-vacina">Observação:</p><br>
                                </td>
                                <td colspan="2">
                                    <textarea rows="4" cols="50" class="label-field-vacina"></textarea> 
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <input type="submit" class="button-cancelar" value="Cancelar">
                                    <input type="submit" class="button-cadastrar" value="Cadastrar">
                                </td>
                            </tr>
                            <br>
                        </table>
                    </form> 
                </div>
            </div>
            <div class="col-md-2"></div>
        </div>
        <div class="container c-footer">
            <footer></footer>
        </div>
    </body>
</html>