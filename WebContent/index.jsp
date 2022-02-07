<%@page import="ru.yandex.incoming34.Product"%>
<%@page import="ru.yandex.incoming34.ProductRegister"%>
<%@ page contentType="text/html; charset=UTF-8" language="java"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Products form</title>
</head>

<%
	if ("POST".equalsIgnoreCase(request.getMethod()) && request.getParameter("register") != null) {
		if ((request.getParameter("productID").length() != 0)
				& (request.getParameter("productTitle").length() != 0)
				& (request.getParameter("productCost").length() != 0)) {
%>

<jsp:useBean id="Product" class="ru.yandex.incoming34.Product"
	scope="application">
</jsp:useBean>
<%
	Product product = new Product();
			product.setProductID(request.getParameter("productID"));
			product.setProductTitle(request.getParameter("productTitle"));
			product.setProductCost(request.getParameter("productCost"));
			out.println("<font color = blue> Registered product:  ProductID: " + product.getProductID()
					+ " ProductTitle: " + product.getProductTitle() + " ProductCost: "
					+ product.getProductCost() + "</font>");
			ProductRegister.registerProduct(product);

			product = null;
		} else {

			out.println("<font color = red> You have to insert ALL parametrs!</font>");
		}
	}
%>
<%
	if ("POST".equalsIgnoreCase(request.getMethod()) && request.getParameter("show") != null) {
%>
<jsp:useBean id="ProductRegister"
	class="ru.yandex.incoming34.ProductRegister" scope="application">
</jsp:useBean>
<%
		out.println(ProductRegister.show());

	}
%>

<body>
	<form method="POST">
		<h2>Register new product:</h2>
		Product ID: <input type="text" name="productID"> <br />
		Product title: <input type="text" name="productTitle"> <br />
		Product cost: <input type="text" name="productCost"> <br />

		<button type="submit" name="register">Register product</button>

		<br />
		<hr style="border: 2px solid green;">

		<button type="submit" name="show">Show products</button>
	</form>

</body>

</html>
