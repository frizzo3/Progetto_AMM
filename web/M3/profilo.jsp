<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>NerdBook</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="author" content="Francesco Rizzo">
        <meta name="keywords" content="nerdbook social network">
        <link rel="stylesheet" type="text/css" href="style.css" media="screen">
    </head>
    <body>
        <jsp:include page="header.jsp" />
        <jsp:include page="sidebar.jsp" />
        
        <div id="profile">
            <div id="primary_image">
                 <img title="Profilo " alt="foto profilo" src="${utentecorrente.URLimmagine}" width="80" height="80">
            </div>
            <div id="profiletitle">
                <h2>Il mio profilo</h2>
            </div>
            <div id="info_personali">
                <div id="forms">
                    <form name="info" method="POST" action="#">
                        <div class="style_form">
                            <label for="nome">Nome:</label>
                            <input type="text" placeholder="nome" name="textType" id="nome">
                        </div>
                        <div class="style_form">
                            <label for="cognome">Cognome:</label>
                            <input type="text" placeholder="cognome" name="textType" id="cognome">
                        </div>
                        <br/>
                        <div class="style_form">
                            <label for="profile_img">Immagine Profilo:</label>
                            <input type="file" name="profile_img" id="profile_img">
                        </div>
                        <br/>
                        <div class="style_form">
                            <label for='presentation'> Presentazione:</label>
                            <textarea name="presentazione" placeholder="frase di presentazione" id="presentation"></textarea>
                        </div>
                        <br/>
                        <div class="style_form">
                            <label for="data"> Data di Nascita</label>
                            <input type="text" name="birth_date" id="data">
                        </div>
                        <br/>
                        <div class="style_form">
                            <label for="pswd"> Password:</label>
                            <input type="password" name="password" id="pswd" value="oscurato">
                        </div>
                        <div class="style_form">
                            <label for="pswd2"> Ripeti Password:</label>
                            <input type="password" name="password" id="pswd2" value="oscurato">
                        </div>
                        <input type="submit" id="profilebutton" name="submit" value="Conferma" />
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
