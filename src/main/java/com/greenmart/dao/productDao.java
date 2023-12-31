package com.greenmart.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;
import com.greenmart.model.*;

public class productDao {
	private Connection con;
	private String query;
	private PreparedStatement pst;
	private ResultSet rs;
	
	public productDao(Connection con) {
		super();
		this.con = con;
	}
	
	public List<ProductModel> getAllProducts(){
		List<ProductModel> products = new ArrayList<ProductModel>();
		
		try {
			query = "SELECT * FROM products";
			pst = this.con.prepareStatement(query);
			rs = pst.executeQuery();
			
			while(rs.next()) {
				ProductModel row = new ProductModel();
				row.setProductID(rs.getInt("ProductID"));
				row.setName(rs.getString("name"));
				row.setSize(rs.getString("size"));
				row.setPrice(rs.getDouble("price"));
				row.setImage(rs.getString("image"));
				
				products.add(row);
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return products;
	}
	
	public ProductModel getProductById(int productId) {
        ProductModel product = null;

        try {
            query = "SELECT * FROM products WHERE ProductID = ?";
            pst = this.con.prepareStatement(query);
            pst.setInt(1, productId);
            rs = pst.executeQuery();

            if (rs.next()) {
                product = new ProductModel();
                product.setProductID(rs.getInt("ProductID"));
                product.setName(rs.getString("name"));
                product.setSize(rs.getString("size"));
                product.setPrice(rs.getDouble("price"));
                product.setImage(rs.getString("image"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return product;
    }
}
