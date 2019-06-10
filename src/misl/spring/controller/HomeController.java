package misl.spring.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import misl.spring.model.JsonResponseModel;

@Controller
public class HomeController {
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home(HttpSession session, HttpServletRequest resquest, HttpServletResponse response) {
		response.setContentType("text/html;charset=UTF-8");
		
		ModelAndView model = new ModelAndView("home");
		try {
			return model;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return model;
	}
	
	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public ModelAndView about(HttpSession session, HttpServletRequest resquest, HttpServletResponse response) {
		response.setContentType("text/html;charset=UTF-8");
		
		ModelAndView model = new ModelAndView();
		try {
			return model;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return model;
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView register(HttpSession session, HttpServletRequest resquest, HttpServletResponse response) {
		response.setContentType("text/html;charset=UTF-8");
		
		ModelAndView model = new ModelAndView();
		try {
			return model;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return model;
	}
	
	@RequestMapping(value = "/add_register", method = RequestMethod.POST)
	@ResponseBody
	public JsonResponseModel add_register(HttpSession session, HttpServletRequest request, HttpServletResponse response) {
		response.setContentType("text/html;charset=UTF-8");
		
		JsonResponseModel res = new JsonResponseModel();
		try {
			String name = request.getParameter("name");
			String surname = request.getParameter("surname");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String tel = request.getParameter("tel");
			
			System.out.println(name + ", " + surname + ", " + email + ", " + password + ", " + tel);
			
			if (email.contains("@")) {
				res.setResult("success");
				res.setStatus("200");
			} else {
				res.setResult("fail");
				res.setStatus("200");
			}
			
			
			return res;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return res;
	}
	
}
