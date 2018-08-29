<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contactez nous !</title>
</head>
<body>

	<h1>Bienvenue à Simplon.biblio !</h1>

	<marquee dir="ltr">
		<font style="color: navy;"><img src="images/GREGGG.JPG"></font>
	</marquee>

	<HR>
	</br>
	<div style="display: flex;">
		<div>
			<h3>
				<a href=livre.jsp>Nos Livres</a>
			</h3>
		</div>
		&nbsp;&nbsp;
		<div>
			<h3>
				<a href=contact.jsp>Contactez-nous !</a>
			</h3>
		</div>
		&nbsp;&nbsp;
		<div>
			<h3>
				<a href=inscription.jsp>Inscrivez-vous !</a>
			</h3>
		</div>
	</div>
	</br>
	<HR>

	<form action="contactSave.jsp">

		<table>
			<tr>
				<td>Nom:</td>
				<td><input type="text" name="nom"></td>
			</tr>
			<tr>
				<td>Prenom:</td>
				<td><input type="text" name="prenom"></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td>Tel:</td>
				<td><input type="text" name="tel"></td>
			</tr>

			<tr>
				<td><input type="submit" value="Submit"></td>
			</tr>
		</table>

	</form>

	<a href=inscription.jsp>Inscriptions</a>
	<jsp:include page="footer.html"></jsp:include>
</body>
</html>