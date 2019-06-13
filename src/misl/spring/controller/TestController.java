package misl.spring.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import misl.spring.model.CowModel;
import misl.spring.model.MemberModel;

@Controller
@RequestMapping("/test")
public class TestController {
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView home(HttpSession session, HttpServletRequest request, HttpServletResponse response) {
		response.setContentType("text/html;charset=UTF-8");
		
		ModelAndView model = new ModelAndView();
		try {
			//Database query here
			MemberModel memberModel = new MemberModel();
			memberModel.setMemberId(1);
			memberModel.setMemberName("PoN");
			memberModel.setMemberSurname("PoN[L]");
			memberModel.setMemberAddr("224 หมู่ 20");
			memberModel.setMemberTel("0830364720");
			
			ArrayList<CowModel> cowList = new ArrayList<CowModel>();
			
			for (int i = 0; i < 10; i++) {
				CowModel cowModel = new CowModel();
				cowModel.setCowId(i);
				cowModel.setCowName("Cow"+i);
				cowModel.setCowBirth("10-03-2019");
				cowModel.setCowImg("cowDemo.jpg");
				cowModel.setCowSex("F");
				cowModel.setZyanId("1237049812734981273487213847");
				cowModel.setMember(memberModel);
				
				cowList.add(cowModel);
			}
			// End Database
			
			request.setAttribute("cowList", cowList);
			
			return model;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return model;
	}
	
	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public ModelAndView profile(HttpSession session, HttpServletRequest request, HttpServletResponse response) {
		response.setContentType("text/html;charset=UTF-8");
		
		ModelAndView model = new ModelAndView();
		try {
			//Database query here
			MemberModel memberModel = new MemberModel();
			memberModel.setMemberId(1);
			memberModel.setMemberName("PoN");
			memberModel.setMemberSurname("PoN[L]");
			memberModel.setMemberAddr("224 หมู่ 20");
			memberModel.setMemberTel("0830364720");
			
			// End Database
			
			request.setAttribute("memberModel", memberModel);
			
			return model;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return model;
	}
}
