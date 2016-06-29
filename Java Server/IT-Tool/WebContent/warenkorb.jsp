<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="header.jspf"%>
<div id="content">
	<%@ include file="sidebar.jspf"%>
	<main>
	<h2>Warenkorb</h2>
	<form action="#">
		<div id="product-list">
			<div class="product">
				<div class="product-image">
					<img alt="${produkt.name}"
						src="BildServlet?img1=${Name im Servlet.img1}">
				</div>
				<div class="details">
					<p>
						Bestellnummer:<span>$(Name im Servlet.bestellnummer)</span>
					</p>
					<hr>
					<p>
						Anzahl x Preis:<span><input type="text" size="3"
							placeholder="1" value="1" name="anz[]"><input
							type="hidden" value="1" name="prodId"> x ${Name im Servlet.preis}
							â¬ (${Name im Servlet.preis} //Ausrechnen des Formulars â¬)</span><br>
						<span>Inkl. MwSt., <a href="#">zzgl. Versandkosten</a></span>
					</p>
					<hr>
					<p>
						VerfÃ¼gbarkeit:<span class="${produkt.lagerstatusStyle}">${produkt.lagerstatus}</span>
					</p>
				</div>
			</div>
			/*
			<div class="product">
				<div class="product-image">
					<img alt="Produkt xy"
						src="http://cdn.pollin.de/article/xtrabig/X702400.JPG">
				</div>
				<div class="details">
					<p>
						Bestellnummer:<span>702 850</span>
					</p>
					<hr>
					<p>
						Anzahl x Preis:<span><input type="text" size="3"
							placeholder="1" value="1" name="anz[]"><input
							type="hidden" value="1" name="prodId"> x 5,99 â¬ (5,99
							â¬)</span><br> <span>Inkl. MwSt., <a href="#">zzgl.
								Versandkosten</a></span>
					</p>
					<hr>
					<p>
						VerfÃ¼gbarkeit:<span class="green">Artikel verfÃ¼gbar.</span>
					</p>
				</div>
			</div>
			<div class="product">
				<div class="product-image">
					<img alt="Produkt xy"
						src="http://cdn.pollin.de/article/xtrabig/X702400.JPG">
				</div>
				<div class="details">
					<p>
						Bestellnummer:<span>702 850</span>
					</p>
					<hr>
					<p>
						Anzahl x Preis:<span><input type="text" size="3"
							placeholder="1" value="1" name="anz[]"><input
							type="hidden" value="1" name="prodId"> x 5,99 â¬ (5,99
							â¬)</span><br> <span>Inkl. MwSt., <a href="#">zzgl.
								Versandkosten</a></span>
					</p>
					<hr>
					<p>
						VerfÃ¼gbarkeit:<span class="green">Artikel verfÃ¼gbar.</span>
					</p>
				</div>
			</div>
		</div>
		*/

		<hr>
		<p class="pay">
			<b>Netto:</b> <span>15,10 â¬</span>
		</p>
		<p class="pay">
			Mehrwertsteuer: <span>2,87 â¬</span>
		</p>
		<p class="pay">
			<b>Summe:</b> <span>17,97 â¬</span>
		</p>
		<h3>Zahlungsmethoden:</h3>
		<p>
			<input name="zahlungsart" type="radio"> Vorkasse
		</p>
		<p>
			<input name="zahlungsart" type="radio"> PayPal
		</p>
		<p class="pay">
			<button>Kaufen</button>
		</p>
	</form>
	</main>
</div>
<%@ include file="footer.jspf"%>
</div>
</body>
</html>
