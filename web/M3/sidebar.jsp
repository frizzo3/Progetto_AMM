<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
        <div id="leftbar">
            <div id="people">
                <h2>Persone</h2>
                <c:forEach var="amico" items="${amici}">
                    <h3>${amico.nome} ${amico.cognome}</h3>
                </c:forEach>
            </div>    
            <div id="groups">
                <h2>Gruppi</h2>
                <c:forEach var="gruppo" items="${gruppi}">
                    <h3>${gruppo.nome} ${amico.cognome}</h3>
                </c:forEach>
            </div>
        </div>
