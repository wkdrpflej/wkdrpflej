<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>product purchase</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <link href="https://fonts.googleapis.com/css?family=Maven+Pro:400,500,700,900|Noto+Sans+KR:100,300,400,500,700,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<style >
@import url("https://fonts.googleapis.com/css?family=Roboto:400,300");

a {text-decoration: none;}
li {list-style: none;}

p{
text-align:center;
}

body, html {
	height: 100%;
	background-color: #f4f4f4;
	font-family: 'Maven Pro', 'Noto Sans KR';
}

th {
	text-align: center;
	border : thin;
 	border:1; 
 	border-color:#dddddd;
}
    
tr{
border : thin;
 	border:1; 
 	border-color:#dddddd;
 	}

td{
border : thin;
 	border:1; 
 	border-color:#dddddd;
 	border: 1px solid #dddddd;
}
.table {
	height: auto;
	display: table;
	margin: 0 auto;
	text-align: center;
 	border : thin;
 	border:1; 
 	border-style:solid; 
 	border-color:#dddddd;
 	
}

.table--title {
	width: 100%;
	text-align: center;
	font-size: 50px;
}


body {
	color: #2c3e50;
	font-family: 'Roboto', sans-serif;
	font-weight: 400;
}

h1 {
	text-align: center;
	font-size: 2.5rem;
	font-weight: 300;
}

.pagination-container {
	margin: 100px auto;
	text-align: center;
}

.pagination {
	position: relative;
}

.pagination a {
	position: relative;
	display: inline-block;
	color: #2c3e50;
	text-decoration: none;
	font-size: 1.2rem;
	padding: 8px 16px 10px;
}

.pagination a:before {
	z-index: -1;
	position: absolute;
	height: 100%;
	width: 100%;
	content: "";
	top: 0;
	left: 0;
	background-color: #2c3e50;
	border-radius: 24px;
	-webkit-transform: scale(0);
	transform: scale(0);
	transition: all 0.2s;
}

.pagination a:hover, .pagination a .pagination-active {
	color: #fff;
}

.pagination a:hover:before, .pagination a .pagination-active:before {
	-webkit-transform: scale(1);
	transform: scale(1);
}

.pagination .pagination-active {
	color: #fff;
}

.pagination .pagination-active:before {
	-webkit-transform: scale(1);
	transform: scale(1);
}

.pagination-newer {
	margin-right: 50px;
}

.pagination-older {
	margin-left: 50px;
}

</style>

</head>
<body>
<jsp:include page="../../view/top.jsp"/>


<h1> ???????????? </h1>
<table>
<tr><td>?????????</td><td>${userDTO.userName} | ${userDTO. } | ????????? ?????????</td></tr>
<tr><td>??????</td><td><input type="text">????????? ??????</td></tr>
<tr><td>?????????</td><td>????????? ??????</td></tr>
<tr><td>??????</td><td><input type="text">????????? ??????</td></tr>
</table>




<h1>product history</h1>
<form name="purchaseForm" method="post" id="purchaseForm">
<h2 class="table--title">????????????</h2>
    <table class="table" >
        <tr>
            <th>?????????</th>
            <th>??????</th>
            <th>?????????</th>
            <th>?????????</th>

        </tr>

        <c:choose>
            <c:when test="${empty userDTO}">
                <tr>
                    <td colspan="20">
                        <p align="center"><b><span style="font-size: 9pt">??????????????? ????????????</span></b></p>
                    </td>
                </tr>
            </c:when>
            <c:otherwise>
                    <tr>
                        <td>${userDTO.userName}</td>
                        <td>${userDTO.userPhone}</td>
                        <td>${userDTO.userEmail}</td>
                        <td>${userDTO.userAddr}</td>
                    </tr>
            </c:otherwise>
        </c:choose>
    </table>
     <h2 class="table--title">???????????? ??????</h2>
    <table class="table">
        <tr>
           
            <th>????????????</th>
            <th>??????</th>
            <th>???</th>
            <th>?????????</th>
            <th>??????</th>

        </tr>

        <c:choose>
            <c:when test="${empty productDTO}">
                <tr>
                    <td colspan="20">
                        <p align="center"><b><span style="font-size: 9pt">???????????? ????????? ????????????</span></b></p>
                    </td>
                </tr>
            </c:when>
            <c:otherwise>
                    <tr>
                        <td>${productDTO.productName}</td>
                        <td>${cartQty}</td>
                        <td>${productDTO.productColor}</td>
                        <td>${productDTO.productSize}</td>
                        <td>${productDTO.productPrice*cartQty}</td>

                    </tr>
            </c:otherwise>
        </c:choose>
    </table>
<<<<<<< HEAD
    <a href="${pageContext.request.contextPath}/user/purchase/api.jsp?name=${userDTO.userName}&email=${userDTO.userEmail}&phone=${userDTO.userPhone}&address=${userDTO.userAddr}&productName=${productDTO.productName}" >????????????</a><br>
=======
    <p>																																																																									
    <a href="${pageContext.request.contextPath}/user/purchase/api.jsp?name=${userDTO.userName}&email=${userDTO.userEmail}&phone=${userDTO.userPhone}&address=${userDTO.userAddr}&productName=${productDTO.productName}&productNo=${productDTO.productNo}&purchaseQty=${cartQty}&state=0" >????????????</a></p>
>>>>>>> 1cb320f5d40eb03a8fec3e1485103c997643314a
</form>

<jsp:include page="../../view/footer.jsp"/>
</body>
</html>
