<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<nav aria-label="Page navigation">
			  <ul class="pagination">
			  		<a href="javascript:page(1);" aria-label="Previous">
			        <span aria-hidden="true">首页</span>
			      </a>
			      <a href="javascript:page(${page.page.currentPage } - 1);" aria-label="Previous">
			        <span aria-hidden="true">&laquo;</span>
			      </a>
			    
			    <a href="javascript:page(${page.page.currentPage });">${ page.page.currentPage}</a>
			    <c:if test="${page.page.currentPage + 1 <= page.page.totalPage}">
				    <a href="javascript:page(${page.page.currentPage } + 1);">${ page.page.currentPage + 1}</a>
			    </c:if>
			    <c:if test="${page.page.currentPage + 2 <= page.page.totalPage}">
				    <a href="javascript:page(${page.page.currentPage } + 2);">${ page.page.currentPage + 2}</a>
			    </c:if>
			    <c:if test="${page.page.currentPage + 3 <= page.page.totalPage}">
				   <a href="javascript:page(${page.page.currentPage } + 3);">${ page.page.currentPage + 3}</a>
			    </c:if>
			    <c:if test="${page.page.currentPage + 4 <= page.page.totalPage}">
				    <a href="javascript:page(${page.page.currentPage } + 4);">${ page.page.currentPage + 4}</a>
			    </c:if>
			      <a href="javascript:page(${page.page.currentPage } + 1);" aria-label="Next">
			        <span aria-hidden="true">&raquo;</span>
			      </a>
					<a href="javascript:page(${page.page.totalPage});" aria-label="Previous">
			        <span aria-hidden="true">末页</span>
			      </a>
			  </ul>
			</nav>
</body>
</html>