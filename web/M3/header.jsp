<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
        <div id="navbar">
            <div id="title">
                <h1>NerdBook</h1>
            </div>
            <div id="profilo">
                <h1>
                     <a href="Profilo">Profilo</a>
                </h1>
            </div>
            <div id="bacheca">
                <h1>
                     <a href="Bacheca">Bacheca</a>
                </h1>
            </div>
                
            <div id="descriz">
                <h1>
                     <a href="descrizione.jsp">Descrizione</a>
                </h1>
            </div>
            <div id="utente">
                <h3>${utente.nome} ${utente.cognome}</h3>
                <a id="logout" href="Login?logout=1">
                    <c:if test="${loggato!=null}">Logout</c:if>
                    <c:if test="${loggato==null}">Login</c:if>
                </a>
            </div>
        </div>
