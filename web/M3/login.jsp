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
        <div id="loginheader">
            <img id="logo_box" title="Logo" alt="logo di nerdbook" style="float:left;margin: 5px" src="Img/Nerd.jpg" width="70" height="68">
            <h1 id="title_box">Nerdbook</h1>
        </div>
      
        <div id="login">
            <div id="logintext">
                <h2>Inserisci nome utente e password</h2>
            </div>
            <form action="Login" method="post">
                <div id="user">
                    <label for="username">Username</label> <input type="text" name="username" id="username" value="" />
                </div>
           
                <div id="pass"> 
                    <label for="password">Password</label> <input type="password" name="password" id="pswd" value="oscurato" />
                </div>
                <button id="login_button">
                        Login
                </button>
            </form>
        </div>
        
    </body>
</html>
