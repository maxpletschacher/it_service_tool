<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 
	uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="header.jspf" %>
        <div id="content">
        	<%@ include file="sidebar.jspf" %>
            <main>
              <h2>Willkommen im Shop</h2>
                <p>Hier finden Sie eine Übersicht unserer Produkte.<br>
                </p>
                <h3>Neuheiten</h3>
                <div class="product-group">
                	<c:forEach var="produkt" items="${produkte}">
                	<div class="product">
                		<div class="prodBild">
                    		<img alt="${produkt.name}" src="${produkt.img1}">
                    	</div>
                        <h5><a href="product?id=${produkt.id}">${produkt.name}</a></h5>
                        <p class="${produkt.lagerstatusStyle}">${produkt.lagerstatus} <span>${produkt.preis} €</span></p>
                    </div>
                    </c:forEach>
                </div>
                <%@ include file="bestseller.jspf" %>
            </main>
        </div>
        <%@ include file="footer.jspf" %>
	</div>
</body>
</html>
