<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.musclebeach.articleType.model.*"%>
<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="com.musclebeach.common.util.ApplicationContextUtil" %>
<%@ page import="com.musclebeach.articleType.model.ArticleTypeService" %>
<%@ page import="com.musclebeach.articleType.model.ArticleTypeVO" %>

<%
	ApplicationContext ctx = ApplicationContextUtil.getContext();
	assert ctx !=null;
	ArticleTypeService articleTypeSvc = ctx.getBean(ArticleTypeService.class) ;
	List<ArticleTypeVO> list = articleTypeSvc.getAll();
	pageContext.setAttribute("list",list);
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Muscle Beach 後台首頁</title>
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.3/examples/headers/" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css" />
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.3/examples/sidebars/" />
<link
	href="<%=request.getContextPath()%>/back-end/resources/assets/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<style type="text/css"></style>
<link
	href="<%=request.getContextPath()%>/back-end/resources/index/index.css"
	rel="stylesheet" />
<!-- Flaticon Font -->
<link
	href="<%=request.getContextPath()%>/back-end/resources/lib/flaticon/font/flaticon.css"
	rel="stylesheet" />
<!-- DataTables  -->
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css">


<!-- jq DataTables -->
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script
	src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
<title>所有文章類別</title>
<style>


td {
	max-width: 80%;
	/* 設置最大寬度 */
	overflow: hidden;
	/* 隱藏超出部分 */
	text-overflow: ellipsis;
	/* 添加省略號 */
	white-space: nowrap;
	/* 不換行 */
	color: maroon;
}

.showTd {
	max-width: none;
	overflow: visible;
	white-space: normal;
	/* 換行 */
}
</style>
<style>
        div#v-pills-article {
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;

        }

        table#table-2 {
            width: 100%;
            border: 2px solid black;
            text-align: center;
        }

        table {
            background-color: white;
            margin-top: 5px;
            margin-bottom: 5px;
        }

        th {
            background-color: #9D7553;
            color: #DABEA7;

        }

        #table-2 td {
            background-color: azure;
            color: silver;
            text-align: center;
            transition: all 0.5s ease-in-out;
        }

        #table-2 tr:hover td {
            background-color: lightblue;
            transition: all 0.5s ease-in-out;
        }

        #table-2 tr td {
            color: maroon;

            transition: all 0.5s ease-in-out;
        }

        #table-2 tr:hover td {
            color: blue;
            border-left: 5px solid rgba(79, 192, 210, 0.6);
            transition: all 0.5s ease-in-out;
        }



         #table-2 tr { 
             border-bottom: 1px solid #2a2a2a; 
         } 

         #table-2 tr:last-of-type { 
             border-bottom: none; 
        } 


        #show {
            cursor: pointer;
        }
    </style>
</head>
<body bgcolor='white'>
	<!-- ======================================== header 開始 ======================================== -->
	<header class="p-3 text-bg-dark">
		<div class="container">
			<div
				class="d-flex flex-wrap align-items-center justify-content-between">
				<div class="header_1">
					<i class="flaticon-barbell"></i> <span>Muscle Beach</span>
				</div>
				<div class="header_2">
					<span style="margin-right: 50px">Welcome, user !</span>
					<button type="button" class="btn btn-outline-light"
						style="margin-right: 5px">修改密碼</button>
					<button type="button" class="btn btn-outline-light">登出</button>
				</div>
			</div>
		</div>
	</header>
	<!-- ======================================== sidebar 開始 ======================================== -->
	<main class="d-flex flex-nowrap">
		<div class="d-flex flex-column flex-shrink-0 p-3"
			style="width: 220px; background-color: rgb(110, 109, 109)">
			<ul class="nav nav-pills flex-column mb-auto" id="v-pills-tab"
				role="tablist" aria-orientation="vertical"
				style="text-align: center">
				<li class="nav-item"><a class="nav-link text-white"
					id="v-pills-home-tab" data-bs-toggle="pill"
					data-bs-target="#v-pills-home" type="button" role="tab"
					aria-controls="v-pills-home" aria-selected="true"
					aria-current="page" style="font-size: 1.5rem">
						<i class="bi bi-house-door" style="margin-right: 8px"></i> 首頁
				</a></li>
				<hr />
				<li class="nav-item"><a class="nav-link text-white"
					id="v-pills-employee-tab" data-bs-toggle="pill"
					data-bs-target="#v-pills-employee" type="button" role="tab"
					aria-controls="v-pills-employee" aria-selected="false">
						<i class="bi bi-person" style="color: white; margin: 5px"></i>
						員工管理
				</a></li>
				<li><a class="nav-link text-white" id="v-pills-member-tab"
					data-bs-toggle="pill" data-bs-target="#v-pills-member"
					type="button" role="tab" aria-controls="v-pills-member"
					aria-selected="false"> <i
						class="bi bi-person-circle" style="color: white; margin: 5px"></i>
						會員管理
				</a></li>
				<li><a class="nav-link text-white" id="v-pills-shop-tab"
					data-bs-toggle="pill" data-bs-target="#v-pills-shop" type="button"
					role="tab" aria-controls="v-pills-shop" aria-selected="false">
						<i class="bi bi-shop" style="color: white; margin: 5px"></i> 商城管理
				</a></li>
				<li><a class="nav-link text-white" id="v-pills-coach-tab"
					data-bs-toggle="pill" data-bs-target="#v-pills-coach" type="button"
					role="tab" aria-controls="v-pills-coach" aria-selected="false">
						<i class="bi bi-universal-access"
						style="color: white; margin: 5px"></i> 教練管理
				</a></li>
				<li><a class="nav-link  text-white"
					id="v-pills-class-tab" data-bs-toggle="pill"
					data-bs-target="#v-pills-class" type="button" role="tab"
					aria-controls="v-pills-class" aria-selected="false"
					">
						<i class="bi bi-calendar2-week" style="color: white; margin: 5px"></i>
						課程管理
				</a></li>
				<li><a class="nav-link text-white" id="v-pills-room-tab"
					data-bs-toggle="pill" data-bs-target="#v-pills-room" type="button"
					role="tab" aria-controls="v-pills-room" aria-selected="false">
						<i class="bi bi-building" style="color: white; margin: 5px"></i>
						場地管理
				</a></li>
				<li><a class="nav-link  active text-white" id="v-pills-article-tab"
					data-bs-toggle="pill" data-bs-target="#v-pills-article"
					type="button" role="tab" aria-controls="v-pills-article"
					aria-selected="false"
					onclick="location.href='<%=request.getContextPath()%>/back-end/articleType/articleReport/listAllArticleType.jsp';"
					> <i
						class="bi bi-chat-right-text" style="color: white; margin: 5px"></i>
						論壇管理
				</a></li>
				<li><a class="nav-link text-white" id="v-pills-service-tab"
					data-bs-toggle="pill" data-bs-target="#v-pills-service"
					type="button" role="tab" aria-controls="v-pills-service"
					aria-selected="false"> <i
						class="bi bi-envelope" style="color: white; margin: 5px"></i> 客服管理
				</a></li>
			</ul>
			<hr />
			<div class="mx-auto d-flex mt-3 mb-3 text-muted">&copy; 2022</div>
		</div>
		<div class="tab-content" id="v-pills-tabContent">
			<!-- ============================================ 首頁 ============================================ -->
			<div class="tab-pane fade" id="v-pills-home" role="tabpanel"
				aria-labelledby="v-pills-home-tab" tabindex="0">
				<img src="/image/welcome.gif" style="width: 96%" alt="" />
			</div>

			<!-- ========================================= 論壇管理 ========================================= -->
			 <div
          class="tab-pane fade show active"
          id="v-pills-article"
          role="tabpanel"
          aria-labelledby="v-pills-article-tab"
          tabindex="0"
          style="border: 2px solid rgb(253, 250, 66)"
        >


				<table id="table-2">
					<thead>
						<tr>
							<th>類別編號</th>
							<th>類別名稱</th>
							
					
						
						</tr>
					</thead>
					<tbody>
						<c:forEach var="articleTypeVO" items="${list}">
							<tr>
								<td>${articleTypeVO.typeID}</td>
								<td>${articleTypeVO.typeName}</td>
	
							</tr>
						</c:forEach>
					</tbody>
				</table>
				
								
				<button onclick="location.href='<%=request.getContextPath()%>/back-end/article/articleType/addArticleType.jsp';">新增文章類別</button>
			</div>
				<script>
					$(document).ready(function() {
						$('#table-2').DataTable({
							"searching" : true,
							"ordering" : true,
							language : {
								"lengthMenu" : "顯示 _MENU_ 筆資料",
								"sProcessing" : "處理中...",
								"sZeroRecords" : "没有查詢到结果",
								"sInfo" : "目前有 _MAX_ 筆資料",
								"sInfoEmpty" : "目前共有 0 筆紀錄",
								"sInfoFiltered" : " ",
								"sInfoPostFix" : "",
								"sSearch" : "搜尋:",
								"sUrl" : "",
								"sEmptyTable" : "尚未有資料紀錄存在",
								"sLoadingRecords" : "載入資料中...",
								"sInfoThousands" : ",",
								"oPaginate" : {
									"sFirst" : "首頁",
									"sPrevious" : "上一頁",
									"sNext" : "下一頁",
									"sLast" : "末頁"
								},
								"order" : [ [ 0, "desc" ] ],
								"oAria" : {
									"sSortAscending" : ": 以升序排列此列",
									"sSortDescending" : ": 以降序排列此列"
								}
							},
						});
					});
				</script>
				

	</main>
	<script
		src="<%=request.getContextPath()%>/back-end/resources/js/popper.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/back-end/resources/js/bootstrap.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/back-end/resources/assets/dist/js/bootstrap.bundle.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/back-end/resources/index/sidebars.js"></script>


</body>
</html>