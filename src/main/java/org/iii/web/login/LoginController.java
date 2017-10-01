package org.iii.web.login;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;


import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	@Resource(name = "LoginService")
	LoginService loginService;

	@RequestMapping(value = {"/welcome**" }, method = RequestMethod.GET)
	public ModelAndView defaultPage() {

		
		ModelAndView model = new ModelAndView();
		model.addObject("title", "Spring Security Login Form - Database Authentication");
		model.addObject("message", "This is default page!!!");
		
		List<Map<String, Object>> newsTitle = loginService.selectNewestTitle(1);
		model.addObject("newsTitle", newsTitle);
		for(Map<String, Object> i:newsTitle)
		{
			System.out.println(i);
		}
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			for (GrantedAuthority authority : userDetail.getAuthorities()) {
	            if (authority.getAuthority().equals("ROLE_ADMIN"))
	            {
	    			List alluserinfo = loginService.getallUserinfo();
	    			model.addObject("alluserinfo", alluserinfo);
	            }
	            else
	            {
	            	String username = userDetail.getUsername();
	    			String useremail = loginService.getUserEmail(username);
	    			model.addObject("useremail", useremail);
	            }
	        }
		}

		model.setViewName("../../index");
		return model;

	}
	
	@RequestMapping(value = { "/" }, method = RequestMethod.GET)
	public ModelAndView indexpage() {

		
		ModelAndView model = new ModelAndView();
		model.addObject("title", "Spring Security Login Form - Database Authentication");
		model.addObject("message", "This is default page!!!");
		
		List<Map<String, Object>> newsTitle = loginService.selectNewestTitle(1);
		model.addObject("newsTitle", newsTitle);
		for(Map<String, Object> i:newsTitle)
		{
			System.out.println(i);
		}
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			for (GrantedAuthority authority : userDetail.getAuthorities()) {
	            if (authority.getAuthority().equals("ROLE_ADMIN"))
	            {
	    			List alluserinfo = loginService.getallUserinfo();
	    			model.addObject("alluserinfo", alluserinfo);
	            }
	            else
	            {
	            	String username = userDetail.getUsername();
	    			String useremail = loginService.getUserEmail(username);
	    			model.addObject("useremail", useremail);
	            }
	        }
		}

		model.setViewName("../../index");
		return model;

	}
	
	
	
	
	
	
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public ModelAndView deletePage(HttpServletRequest request,
			HttpServletResponse response) {
		
		ModelAndView model = new ModelAndView();
		
		String username = (String) request.getParameter("check_radio");
		loginService.deleteUser(username);
		
		System.out.println("delete "+username);
		
		model.addObject("title", "Spring Security Login Form - Database Authentication");
		model.addObject("message", "This is default page!!!");
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			for (GrantedAuthority authority : userDetail.getAuthorities()) {
	            if (authority.getAuthority().equals("ROLE_ADMIN"))
	            {
	    			List alluserinfo = loginService.getallUserinfo();
	    			model.addObject("alluserinfo", alluserinfo);
	            }
	        }
			
		}
		
		model.setViewName("hello");
		
		return model;

	}
	
	@RequestMapping(value = "/helloworld2", method = RequestMethod.GET)
	public ModelAndView helloworldPage() {
		
		ModelAndView model = new ModelAndView();
		
		model.setViewName("helloworld3");
		
		return model;
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public ModelAndView commonPage(HttpServletRequest request,
			HttpServletResponse response) {
		
		ModelAndView model = new ModelAndView();

		model.setViewName("insert");
		
		return model;

	}
	
	@RequestMapping(value = "/insertpage", method = RequestMethod.POST)
	public ModelAndView insertPage(HttpServletRequest request,
			HttpServletResponse response) {
		
		ModelAndView model = new ModelAndView();
		
		String username = (String) request.getParameter("username");
		String password = (String) request.getParameter("password");
		String email = (String) request.getParameter("email");
		loginService.insertUser(username,password,email,"1");
		System.out.println("insert a user");
		
		model.addObject("title", "Spring Security Login Form - Database Authentication");
		model.addObject("message", "This is default page!!!");
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			for (GrantedAuthority authority : userDetail.getAuthorities()) {
	            if (authority.getAuthority().equals("ROLE_ADMIN"))
	            {
	    			List alluserinfo = loginService.getallUserinfo();
	    			model.addObject("alluserinfo", alluserinfo);
	            }
	        }
		}
		
		model.setViewName("hello");
		
		return model;

	}

	@RequestMapping(value = "/admin**", method = RequestMethod.GET)
	public ModelAndView adminPage() {

		ModelAndView model = new ModelAndView();
		model.addObject("title", "Spring Security Login Form - Database Authentication");
		model.addObject("message", "This page is for ROLE_ADMIN only!!");

		model.setViewName("admin");
		
		return model;

	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout) {

		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", "Invalid username and password!");
		}

		if (logout != null) {
			model.addObject("msg", "You've been logged out successfully.");
		}

		model.setViewName("login");
		return model;

	}
	
	//for 403 access denied page
	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public ModelAndView accesssDenied() {

		ModelAndView model = new ModelAndView();
		
		//check if user is login
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
		
			model.addObject("username", userDetail.getUsername());
			
		}
		
		model.setViewName("403");
		return model;

	}
	//=====================new===============================
	
	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public ModelAndView contactPage(HttpServletRequest request,
			HttpServletResponse response) {
		
		ModelAndView model = new ModelAndView();
		
		model.setViewName("contact");
		
		return model;
	}
	
	@RequestMapping(value = "/insertcontact", method = RequestMethod.POST)
	public ModelAndView incontactPage(HttpServletRequest request,
			HttpServletResponse response) {
		
		ModelAndView model = new ModelAndView();
		String pername = (String) request.getParameter("pername");
		String peremail = (String) request.getParameter("peremail");
		String pervalue = (String) request.getParameter("pervalue");
		System.out.println(peremail+pername+pervalue);
		loginService.insertcon(pername, peremail, pervalue);
		
		model.setViewName("../../index");
		
		return model;
	}
	
	@RequestMapping(value = "/origin", method = RequestMethod.GET)
	public ModelAndView originPage() {
		
		ModelAndView model = new ModelAndView();
		
		model.setViewName("origin");
		
		return model;
	}
	
	@RequestMapping(value = "/team", method = RequestMethod.GET)
	public ModelAndView teamPage() {
		
		ModelAndView model = new ModelAndView();
		
		model.setViewName("team");
		
		return model;
	}
	
	@RequestMapping(value = "/culture", method = RequestMethod.GET)
	public ModelAndView culturePage() {
		
		ModelAndView model = new ModelAndView();
		
		model.setViewName("culture");
		
		return model;
	}
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public ModelAndView searchPage() {
		
		ModelAndView model = new ModelAndView();
		
		model.setViewName("search");
		
		return model;
	}
	
	@RequestMapping(value = "/animal", method = RequestMethod.GET)
	public ModelAndView animalPage() {
		
		ModelAndView model = new ModelAndView();
		List content = loginService.selectContent(2);
		model.addObject("animalContent", content);
		
		List newsTitle = loginService.selectNewestTitle(2);
		model.addObject("newsTitle", newsTitle);
		
		model.setViewName("Blog_3");
		
		return model;
	}
	@RequestMapping(value = "/publish", method = RequestMethod.GET)
	public ModelAndView publishPage() {
		
		ModelAndView model = new ModelAndView();
		
		model.setViewName("publish");
		
		return model;
	}
	private String saveDirectory = "C:/Users/kkjsu/git/projectweba/src/main/webapp/resources/img/";
	@RequestMapping(value = "/insertpublish", method = RequestMethod.POST)
	public ModelAndView inpublishPage(HttpServletRequest request,
			HttpServletResponse response,@RequestParam("uploadname") MultipartFile fileUpload) throws Exception {
		request.setCharacterEncoding("UTF-8");
		
		ModelAndView model = new ModelAndView();
		String title = (String) request.getParameter("title");
		String author = (String) request.getParameter("author");
		String postauthor = (String) request.getParameter("postauthor");
		String units = (String) request.getParameter("Units");
		String position = (String) request.getParameter("position");
		String email = (String) request.getParameter("email");
		String phone = (String) request.getParameter("phone");
		int pclass = Integer.parseInt(request.getParameter("class"));
		String posttime = (String) request.getParameter("posttime");
		String postloc = (String) request.getParameter("postloc");
		String summary = (String) request.getParameter("summary");
		String keyword = (String) request.getParameter("keyword");
		String videolink = (String) request.getParameter("videolink");
		String paper = (String) request.getParameter("paper");
		String data = (String) request.getParameter("data");
		String img = fileUpload.getOriginalFilename();
		
		byte[] bytes = fileUpload.getBytes();
        File localFile = new File(saveDirectory+fileUpload.getOriginalFilename()); //path=���|+�ɦW
        BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(localFile));
        stream.write(bytes);
        stream.close();
		
		
		
		System.out.println(title+" "+author+" "+postauthor+" "+units+" "+position+" "+
		email+" "+phone+" "+pclass+" "+posttime+" "+postloc+" "+summary+" "+keyword+" "+videolink+" "+paper+" "+data+" "+img);
		
		loginService.insertpub(title, author, postauthor, phone, units, position, pclass, posttime, postloc, summary, keyword, paper, data, img);
		
		model.setViewName("../../index");
		
		return model;
	}
	
	@RequestMapping(value = "/news", method = RequestMethod.GET)
	public ModelAndView newsPage() {
		
		ModelAndView model = new ModelAndView();
		List content = loginService.getNewsContent();
		model.addObject("newsContent", content);
		
		model.setViewName("News");
		
		return model;
	}
	
	
	@RequestMapping(value = "/load_blog", method = RequestMethod.GET)
	public ModelAndView loadBlogPage(HttpServletRequest request,
			HttpServletResponse response) throws UnsupportedEncodingException {
		request.setCharacterEncoding("UTF-8");
		
		ModelAndView model = new ModelAndView();
		String toID = (String) request.getParameter("pid");
		
		System.out.println(toID);
		
		List blogContent = loginService.selectBlogContent(Integer.parseInt(toID));
		model.addObject("blogContent", blogContent);
		model.setViewName("blog-post_1");
		
		return model;
	}
	
	@RequestMapping(value = "/build", method = RequestMethod.GET)
	public ModelAndView buildPage() {
		
		ModelAndView model = new ModelAndView();
		List content = loginService.selectContent(3);
		model.addObject("buildContent", content);
		
		List newsTitle = loginService.selectNewestTitle(2);
		model.addObject("newsTitle", newsTitle);
		
		model.setViewName("Blog_2");
		
		return model;
	}
	
	@RequestMapping(value = "/pculture", method = RequestMethod.GET)
	public ModelAndView pculturePage() {
		
		ModelAndView model = new ModelAndView();
		List content = loginService.selectContent(1);
		model.addObject("pcultureContent", content);
		
		List newsTitle = loginService.selectNewestTitle(2);
		model.addObject("newsTitle", newsTitle);
		
		model.setViewName("Blog_1");
		
		return model;
	}
	
	@RequestMapping(value = "/pculture1", method = RequestMethod.GET)
	public ModelAndView cditalPage() {
		
		ModelAndView model = new ModelAndView();
		List content = loginService.selectContent(1);
		model.addObject("pculture1Content", content);
		model.setViewName("c01");
		
		return model;
	}
	@RequestMapping(value = "/build1", method = RequestMethod.GET)
	public ModelAndView bditalPage() {
		
		ModelAndView model = new ModelAndView();
		List content = loginService.selectContent(3);
		model.addObject("build1Content", content);
		model.setViewName("b01");
		
		return model;
	}
	@RequestMapping(value = "/animal1", method = RequestMethod.GET)
	public ModelAndView aditalPage() {
		
		ModelAndView model = new ModelAndView();
		List content = loginService.selectContent(2);
		model.addObject("animal1Content", content);
		model.setViewName("a01");
		
		return model;
	}
	@RequestMapping(value = "/useredit", method = RequestMethod.GET)
	public ModelAndView editPage() {
		
		ModelAndView model = new ModelAndView();
		
		model.setViewName("u_Edit");
		
		return model;
	}
	@RequestMapping(value = "/userpage", method = RequestMethod.GET)
	public ModelAndView upagePage() {
		
		ModelAndView model = new ModelAndView();
		
		model.setViewName("u_Page");
		
		return model;
	}
	
	
	@RequestMapping(value = "/plan1", method = RequestMethod.GET)
	public ModelAndView plan1Page() {
		
		ModelAndView model = new ModelAndView();
		
		model.setViewName("plan_1");
		
		return model;
	}
	
	@RequestMapping(value = "/plan2", method = RequestMethod.GET)
	public ModelAndView plan2Page() {
		
		ModelAndView model = new ModelAndView();
		
		model.setViewName("plan_2");
		
		return model;
	}
	
	@RequestMapping(value = "/plan3", method = RequestMethod.GET)
	public ModelAndView plan3Page() {
		
		ModelAndView model = new ModelAndView();
		
		model.setViewName("plan_3");
		
		return model;
	}
	
	@RequestMapping(value = "/plan4", method = RequestMethod.GET)
	public ModelAndView plan4Page() {
		
		ModelAndView model = new ModelAndView();
		
		model.setViewName("plan_4");
		
		return model;
	}
	
	@RequestMapping(value = "/plan5", method = RequestMethod.GET)
	public ModelAndView plan5Page() {
		
		ModelAndView model = new ModelAndView();
		
		model.setViewName("plan_5");
		
		return model;
	}
	
	@RequestMapping(value = "/plan6", method = RequestMethod.GET)
	public ModelAndView plan6Page() {
		
		ModelAndView model = new ModelAndView();
		
		model.setViewName("plan_6");
		
		return model;
	}
	
	@RequestMapping(value = "/plan7", method = RequestMethod.GET)
	public ModelAndView plan81Page() {
		
		ModelAndView model = new ModelAndView();
		
		model.setViewName("plan_7");
		
		return model;
	}
	
	@RequestMapping(value = "/plan8", method = RequestMethod.GET)
	public ModelAndView plan8Page() {
		
		ModelAndView model = new ModelAndView();
		
		model.setViewName("plan_8");
		
		return model;
	}
	
	
}