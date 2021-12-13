package ru.yandex.incoming34;

public class Product {

	private String productID = null;
	private String productTitle = null;
	private String productCost = null;

	public String getProductID() {
		return productID;
	}

	public void setProductID(String productID) {
		this.productID = productID;

	}

	public String getProductTitle() {
		return productTitle;
	}

	public void setProductTitle(String productTitle) {
		this.productTitle = productTitle;
	}

	public String getProductCost() {
		return productCost;
	}

	public void setProductCost(String productCost) {
		this.productCost = productCost;
	}

	public Product(String productID, String productTitle, String productCost) {
		super();
		this.productID = productID;
		this.productTitle = productTitle;
		this.productCost = productCost;
	}

	public Product() {
		super();
	}

}
