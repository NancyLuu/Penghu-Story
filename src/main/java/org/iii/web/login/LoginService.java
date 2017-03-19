package org.iii.web.login;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.iii.web.login.LoginRepository;
import org.springframework.beans.factory.annotation.Autowired;
//import javax.inject.Inject;
import org.springframework.stereotype.Service;

@Service("LoginService")
public class LoginService {
	
	@Inject
	private LoginRepository loginRepository;
	
	public String getUserName(String username) {
		
		try{
			String accountName = loginRepository.selectUser(username);
			return accountName;
			
		}
		catch(Exception e){
			System.out.print(e);
			return "error from LoginService";
		}
		
	}
	
	public String getUserEmail(String username) {
		
		try{
			String email = loginRepository.selectEmail(username);
			return email;
			
		}
		catch(Exception e){
			System.out.print(e);
			return "error from LoginService";
		}
		
	}

	public List getallUserinfo() {

			List alluserinfo = loginRepository.selectallUsers();
			return alluserinfo;
		
	}
	
	public List selectContent(int t) {
		List content = loginRepository.selectContent(t)	;
		return content;

	}
	
	public int insertUser(String username, String password, String email, String enabled) {

		int updateCount = loginRepository.insertUser(username, password, email, enabled);
		return updateCount;
	
	}
	
	public void deleteUser(String username) {

		loginRepository.deleteUser(username);
	
	}
	//================================================
	public int insertcon(String username,String email , String value) {

		int updateCount = loginRepository.insertcon(username, email, value);
		return updateCount;
	
	}
	
	public int insertpub(String title, String author, String contact_name,String contact_phone,String unit,String job_title,int article_type,String publish_time,String publish,String Introduction,String keyword,String content,String reference_source) {

		int updateCount = loginRepository.insertpub(title,author, contact_name,contact_phone,unit,job_title,article_type,publish_time,publish,Introduction,keyword,content,reference_source);
		return updateCount;
	
	}
	
}
