<%@page import="misl.spring.model.MemberModel"%>
<%@page import="misl.spring.model.CowModel"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
<jsp:include page="/include/resources_css.jsp"></jsp:include>
<title>Test Page</title>
</head>
<%
MemberModel memberModel = (MemberModel)request.getAttribute("memberModel");
%>
<body>
	
<jsp:include page="/include/resources_preloader.jsp"></jsp:include>
	
<div id="page-transitions">
	<jsp:include page="/include/resources_header.jsp"></jsp:include>

	<jsp:include page="/include/resources_menu.jsp"></jsp:include>
	
	<div id="page-content" class="page-content">	
		<div id="page-content-scroll"><!--Enables this element to be scrolled --> 			
			
			<!-- Body -->
			<div class="content">
				<h4 class="uppercase ultrabold">Fields Modern Style</h4>
				<p class="half-bottom">
					Simple input fileds for text, passwords, numbers or dates, with placeholders and diferent style options.
				</p>
				
				<div class="input-simple-1 has-icon input-green full-bottom"><strong>Required Field</strong><em>Id</em><i class="fa fa-user"></i><input type="text" placeholder="1" value="<%=memberModel.getMemberId() %>"></div>
				<div class="input-simple-1 has-icon input-green full-bottom"><strong>Required Field</strong><em>Name</em><i class="fa fa-user"></i><input type="text" placeholder="Jonh" value="<%=memberModel.getMemberName() %>"></div>
				<div class="input-simple-1 has-icon input-blue full-bottom"><strong>Required Field</strong><em>Surname</em><i class="fa fa-envelope"></i><input type="text" placeholder="Doe" value="<%=memberModel.getMemberSurname() %>"></div>				
				<div class="input-simple-1 textarea has-icon full-bottom"><strong>Required Field</strong><i class="fa fa-edit"></i><em>Address</em> <textarea class="textarea-simple-1" placeholder="Address"><%=memberModel.getMemberAddr() %></textarea></div>
				<div class="input-simple-1 has-icon input-red full-bottom"><strong>Required Field</strong><em>Tel</em><i class="fa fa-lock"></i><input type="text" placeholder="0876412774" value="<%=memberModel.getMemberTel() %>"></div>
				
				<div class="clear"></div>

			</div>
			
			<jsp:include page="/include/resources_footer.jsp"></jsp:include>
			
		</div>  
	</div>
	
	<jsp:include page="/include/resources_notify.jsp"></jsp:include>
	
	<jsp:include page="/include/resources_profiles.jsp"></jsp:include>
	
	<a href="#" class="back-to-top-badge back-to-top-small"><i class="fa fa-angle-up"></i>Back to Top</a>
</div>

<jsp:include page="/include/resources_js.jsp"></jsp:include>

</body>