<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 
	uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<title>HTML-Formularausgabe mittels JSP, Servlet und JavaBean</title>
	</head>
	<body>
		<h2>HTML-Formularausgabe mittels JSP, Servlet und JavaBean</h2>
		<h3>Ihre Formulareingaben</h3>
		<br><b>Titel: </b>${form.title}
		<br><b>Name: </b>${form.lastname}
		<br><b>Vorname: </b>${form.firstname}
		<br><b>Email: </b>${form.email}
		<br><b>Geburtsjahr: </b>${form.yearOfBirth}
		<br><b>Geschlecht: </b>${form.gender}
		<br><b>Selektierte Themen:</b>
		<c:if test = "${not empty form.interestedTopics}">
			<c:forEach var="topic" items="${form.interestedTopics}" varStatus="status">
				<br>Thema ${status.count}: ${topic}
			</c:forEach>
		</c:if>
		<br><b>Ihre Nachricht: </b>${form.message}
		<br><b>Antwort erwünscht: </b>
		<c:choose>
			<c:when test="${form.contactRequested}">Ja</c:when>
			<c:otherwise>Nein</c:otherwise>
		</c:choose>
	</body>
</html>