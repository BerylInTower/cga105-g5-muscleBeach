<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="com.musclebeach.common.util.ApplicationContextUtil" %>
<%@ page import="com.musclebeach.coachtime.model.CoachTimeService" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>�нm�޲z</title>
    <link href="css/index.css" rel="stylesheet"/>
    <link href="css/flaticon.css" rel="stylesheet"/>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css"
            rel="stylesheet"/>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
            rel="stylesheet"/>
    <link rel="canonical"
          href="https://getbootstrap.com/docs/5.3/examples/headers/"/>
    <link rel="canonical"
          href="https://getbootstrap.com/docs/5.3/examples/sidebars/"/>
</head>

<style>
    table#table-1 {
        background-color: #CCCCFF;
        border: 2px solid black;
        text-align: center;
        width: 100%;
    }

    table#table-2 {
        background-color: cyan;
        border: 3px solid black;
        text-align: center;
        width: 100%;
    }

    table#table-1 h4 {
        color: red;
        display: block;
        margin-bottom: 1px;
    }

    h4 {
        color: blue;
        display: inline;
    }

    #v-pills-coach {
        background-image: url("");
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-position: center;
        background-size: cover;
    }
</style>


<body>
<%@ include file="/back-end/header_sidebar.jsp" %>
<div class="tab-content" id="v-pills-tabContent"
     style="width: 100%; height: calc(100vh - 70px);">
    <%
        CoachTimeService coachTimeService = context.getBean(CoachTimeService.class);
        pageContext.setAttribute("coachtimeSvc", coachTimeService);
    %>
    <!-- ============================================ ���� ============================================ -->
    <div class="tab-pane fade " id="v-pills-home" role="tabpanel"
         aria-labelledby="v-pills-home-tab" tabindex="0">
        <img
                src="<%=request.getContextPath()%>/back-end/allcss/image/welcome.gif"
                style="width: 96%" alt=""/>
    </div>
    <!-- ========================================= ���u�޲z ========================================= -->
    <div class="tab-pane fade" id="v-pills-employee" role="tabpanel"
         aria-labelledby="v-pills-employee-tab" tabindex="0"
         style="border: 2px solid green">employee section
    </div>
    <!-- ========================================= �|���޲z ========================================= -->
    <div class="tab-pane fade" id="v-pills-member" role="tabpanel"
         aria-labelledby="v-pills-member-tab" tabindex="0">member
        section
    </div>
    <!-- ========================================= �ӫ��޲z ========================================= -->
    <div class="tab-pane fade " id="v-pills-shop" role="tabpanel"
         aria-labelledby="v-pills-shop-tab" tabindex="0"
         style="border: 2px solid brown">shop section
    </div>
    <!-- ========================================= �нm�޲z ========================================= -->
    <div class="tab-pane fade show active" id="v-pills-coach"
         role="tabpanel" aria-labelledby="v-pills-coach-tab" tabindex="0"
         style="border: 2px solid rgb(214, 122, 122); height: 100%; width: 100%">


        <table id="table-1">
            <!-- 					<tr> -->
            <%-- 						<td> <a href="<%=request.getContextPath()%>/back-end/coachclassorder/selectCoachClassOrderPage.jsp"  style="float: right;text-decoration: none"><br>�����ܱнm�ҵ{�q��޲z<br></a></td>  --%>
            <!-- 					</tr> -->
            <tr>
                <td><h3 style="position: relative; left: 13%;">
                    �нm�ӤH�ɬq�޲z:<a
                        href="<%=request.getContextPath()%>/back-end/coachclassorder/selectCoachClassOrderPage.jsp"
                        style="text-decoration: none; display: inline-block; position: relative; left: 13%"><br>�����ܱнm�ҵ{�q��޲z<br></a>
                </h3></td>
            </tr>

        </table>


        <%-- ���~��C --%>
        <c:if test="${not empty errorMsgs}">
            <font style="color: red">�Эץ��H�U���~:</font>
            <ul>
                <c:forEach var="message" items="${errorMsgs}">
                    <li style="color: red">${message}</li>
                </c:forEach>
            </ul>
        </c:if>

        <ul style="text-align: center; list-style-type: none;">


            <li>
                <FORM METHOD="post" ACTION="coach.do" style="margin-bottom: 0px;">

                    <select size="0" name="empid" style="display: none;">
                        <option value="7">
                    </select>

                    <table style="position: relative; Left: 43%;">
                        <tr>
                            <td style="font-size: 25px;">�нm�ɬq <input type="hidden"
                                                                         name="action" value="getOneEmpid"> <input
                                    type="submit"
                                    value="�s�W"
                                    style="list-style: none; text-decoration: none; font-size: 16px;">
                                <!-- 			    	 <a style="list-style: none; text-decoration: none; position: relative; right: 88%; font-size: 25px;" href="#"><b>��^</b></a>  -->
                            </td>

                        </tr>
                    </table>

                </FORM>

                <ul style="text-align: center; list-style-type: none;">

                    <li>
                        <FORM METHOD="post" ACTION="coach.do">
                            <br> <b>��J�нm�s���d�߱нm�Ҧ��i�w���ɬq��� :</b> <input type="text"
                                                                                        name="empid"> <input
                                type="hidden" name="action"
                                value="getAll_For_DisplaybyEMP"> <input type="submit"
                                                                        value="�e�X">
                        </FORM>
                    </li>

                </ul>
            </li>
        </ul>
        <table id="table-1">
            <tr>
                <td><h3>�ɶ��޲z</h3></td>
            </tr>
        </table>

        <ul style="text-align: center; list-style-type: none;">

            <li><a href='listAllCoachTime.jsp'><br>�Ҧ��нm�ɬq���<br></a></li>

        </ul>


    </div>
    <!-- ========================================= �ҵ{�޲z ========================================= -->
    <div class="tab-pane fade" id="v-pills-class" role="tabpanel"
         aria-labelledby="v-pills-class-tab" tabindex="0"
         style="border: 2px solid purple">class section
    </div>
    <!-- ========================================= ���a�޲z ========================================= -->
    <div class="tab-pane fade" id="v-pills-room" role="tabpanel"
         aria-labelledby="v-pills-room-tab" tabindex="0"
         style="border: 2px solid greenyellow">room section
    </div>
    <!-- ========================================= �׾º޲z ========================================= -->
    <div class="tab-pane fade" id="v-pills-article" role="tabpanel"
         aria-labelledby="v-pills-article-tab" tabindex="0"
         style="border: 2px solid rgb(253, 250, 66)">article
    </div>
    <!-- ========================================= �ȪA�޲z ========================================= -->
    <div class="tab-pane fade" id="v-pills-service" role="tabpanel"
         aria-labelledby="v-pills-service-tab" tabindex="0"
         style="border: 2px solid rgb(15, 198, 42)">service section
    </div>
</div>


<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>
<script src="sidebars.js"></script>
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script>
    $(function () {
        $("#toCoach").addClass("active");
        $("#toCoach").attr("aria-selected", "true");
    })
</script>
</body>

<script>
    const a = document.getElementsByClassName("coachclassperiod");

    const b = document.getElementsByClassName("orderstauts");

    const c = document.getElementsByClassName("update");

    const d = document.getElementsByClassName("delete");

    for (let i = 0; i < a.length; i++) {
        if (a[i].innerHTML === "222222222222222222222222") {
            a[i].textContent = ("�w����")
        }
        for (let j = 0; j < 24; j++) {
            //			console.log(a[i].innerHTML.charAt(j));
            if (a[i].innerHTML.charAt(j) === '0') {
                console.log("��m�b" + j);
                if (j >= 12) {
                    a[i].textContent = ("�U��" + (j - 12) + "�I-" + (j + 1 - 12) + "�I");
                    break;
                } else {
                    a[i].textContent = ("�W��" + j + "�I-" + (j + 1) + "�I");
                    break;
                }
            }
        }

        if (b[i].innerHTML === "�����w��") {
            c[i].setAttribute("disabled", "disabled")
            d[i].setAttribute("disabled", "disabled")
        }
    }
</script>
</html>