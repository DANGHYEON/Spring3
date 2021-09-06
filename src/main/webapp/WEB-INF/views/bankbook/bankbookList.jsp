<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<c:import url="../temp/boot_head.jsp"></c:import>

</head>
<body>
<c:import url="../temp/boot_nav.jsp"></c:import>
	<h1>List Renewal</h1>
	
	<div class="container-fluid">
		<div class="col-md-7 mx-auto my-2">
		<!-- search Form Start -->
	<form action="./bankbookList" method="get">
		
		 <div class="input-group mb-3" >
		  <select name="kind" class="form-select form-select-sm" aria-label=".form-select-sm example">
			  <option value="num">Num</option>
			  <option value="name">Name</option>
			  <option value="rate">Rate</option>
			</select>
		  
		  <input type="text" name="search" class="form-control" aria-label="Text input with dropdown button">
		  <button type="submit" class="btn btn-outline-secondary">Search</button>
		</div>
			
		</form>
		<!-- search Form Finish  -->

		<table class="table table-striped">
			<tr>
				<th>BookNumber</th> <th>BookName</th> <th>BookRate</th> <th>BookSale</th>
			</tr>
		<c:forEach items="${ar}" var="dto">
			<tr>
				<td>${dto.bookNumber}</td>
				<td><a href="./bankbookSelect?bookNumber=${dto.bookNumber}">${dto.bookName}</a></td>
				<td>${dto.bookRate}</td>
				<td>${dto.bookSale}</td>
			</tr>
		</c:forEach>
	
		</table>
		
		<!-- Paging -->
		<nav aria-label="Page navigation example">
  			<ul class="pagination">
   			 <li class="page-item">
   			  <a class="page-link" href="./bankbookList" aria-label="Previous">
      	  <span aria-hidden="true">&laquo;</span>
     	 </a>
      	</li>
      	<li class="page-item">
   			  <a class="page-link" href="./bankbookList?pn=${pager.startNum-1}" aria-label="Previous">
      	  <span aria-hidden="true">&lt;</span>
     	 </a>
      	</li>
		<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="n">
		 <li class="page-item"><a class="page-link" href="./bankbookList?pn=${n}">${n}</a></li>
		</c:forEach>
		<li class="page-item">
     	 <a class="page-link" href="./bankbookList?pn=${pager.lastNum+1}" aria-label="Next">
      	  <span aria-hidden="true">&gt;</span>
      		</a>
    		</li>
    		<li class="page-item">
     	 <a class="page-link" href="./bankbookList?pn=${pager.totalPage}" aria-label="Next">
      	  <span aria-hidden="true">&raquo;</span>
      		</a>
    		</li>
  			</ul>
		</nav>
		
		
		
		
		<a href="./bankbookInsert" class="btn btn-primary">ADD</a>
		</div>
	</div>


</body>
</html>