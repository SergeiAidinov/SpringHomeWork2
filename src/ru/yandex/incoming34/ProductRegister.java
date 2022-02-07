package ru.yandex.incoming34;

import java.util.ArrayList;

public class ProductRegister {

	private static final long serialVersionUID = 1L;
	private static ArrayList<Product> listOfProducts = new ArrayList<>();
	private static StringBuilder stringBuilder = new StringBuilder();

	public static void registerProduct(Product product) {
		listOfProducts.add(product);
	}

	public String show() {
		stringBuilder = new StringBuilder();
		listOfProducts.trimToSize();
		if (listOfProducts.size() > 0) {
			for (int i = 0; i < listOfProducts.size(); i++) {
				Product oneProduct = listOfProducts.get(i);
				stringBuilder.append("<font color = green> Product # ");
				stringBuilder.append(i + 1);
				stringBuilder.append("</font>");
				stringBuilder.append("</br>");
				stringBuilder.append("ProductID: " + oneProduct.getProductID());
				stringBuilder.append("</br>");
				stringBuilder.append("ProductTitle: " + oneProduct.getProductTitle());
				stringBuilder.append("</br>");
				stringBuilder.append("ProductCost: " + oneProduct.getProductCost());
				stringBuilder.append("</br>");
				stringBuilder.append("<hr style=border: 1px solid green>");
			}
		} else {
			stringBuilder.append("<font color = red> There is no registered products! </font>");
		}

		return stringBuilder.toString();
	}

}
