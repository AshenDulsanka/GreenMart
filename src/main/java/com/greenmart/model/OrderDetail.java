package com.greenmart.model;

import com.greenmart.dao.productDao; 

public class OrderDetail {
    private String productName;
    private float subtotal;
 
    public OrderDetail(int productId, String subtotal,productDao productDao) {
        ProductModel product = productDao.getProductById(productId);

        if (product != null) {
            this.productName = product.getName();
        } else {
            this.productName = "Product Not Found";
        }

        this.subtotal = Float.parseFloat(subtotal);
    }
 
    public OrderDetail(String product, String subtotal2) {
		// TODO Auto-generated constructor stub
	}

	public String getProductName() {
        return productName;
    }
 
    public String getSubtotal() {
        return String.format("%.2f", subtotal);
    }
}
