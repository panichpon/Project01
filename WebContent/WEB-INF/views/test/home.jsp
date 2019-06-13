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
@SuppressWarnings("unchecked")
ArrayList<CowModel> cowList = (ArrayList<CowModel>)request.getAttribute("cowList");
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
			<%
			for (int i = 0; i < cowList.size(); i++ ){ 
				CowModel cowModel = cowList.get(i);
			%>
				<div class="menu-cart-item">
					<img class="preload-image" src="${pageContext.request.contextPath}/contents/images/empty.png" data-src="${pageContext.request.contextPath}/contents/images/placeholders/1.png" alt="img">
					<strong><%=cowModel.getCowName() %></strong>
					<span><%=cowModel.getZyanId() %></span>
					<span><%=cowModel.getCowId() %></span>
					<span><%=cowModel.getCowBirth() %></span>
					<span><%=cowModel.getCowSex() %></span>
					<span><%=cowModel.getMember().getMemberName() + " " +cowModel.getMember().getMemberSurname() %></span>
				</div>	
			<%} %>
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