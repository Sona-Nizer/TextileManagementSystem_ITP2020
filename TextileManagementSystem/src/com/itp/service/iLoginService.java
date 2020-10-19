package com.itp.service;

/*
 * ITP 2020 Textile Management System
 * 
 * @author V. Yahdhursheika - IT19186948
 */

/*
 * This is an interface for iContactService
 */
public interface iLoginService {

	public boolean adminLogin(String email, String password);
	
	public boolean supplierLogin(String email, String password);
	
	public boolean customerLogin(String email, String password);
	
	public String adminName(String email);
	
}
