package com.service;

import java.util.List;

import com.model.ProductModel;

public interface ProductService {

	public void add(ProductModel productmodel);
	  public void edit(ProductModel productmodel);
	  public void delete(String getId);
	  public ProductModel getProductModel(String getId);
	  public List getAllProductModel();
}
