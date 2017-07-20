<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        
        <c:if test="${loggato==null}">
            <h3>ACCESSO NEGATO</h3>
        </c:if>
        <c:if test="${loggato!=null}">
        <div id="status">
            <h2>${utentecorrente.nome} ${utentecorrente.cognome}: ${utentecorrente.frase}</h2>
        </div>
        
        <div id="bacheca">
            <c:forEach var="post" items="${posts}">
                <div class="post">
                    <img src="${utentecorrente.URLimmagine}">
                    <h2>${utentecorrente.nome} ${utentecorrente.cognome}</h2>
                    <c:if test="${post.isText == true}">
                        <p>
                            ${post.text}
                        </p>
                    </c:if>
                    <c:if test="${post.isText == false}">
                        <img src="${post.image}">
                    </c:if>
                </div>
            </c:forEach>
        </div>
        </c:if>
    </body>
</html>