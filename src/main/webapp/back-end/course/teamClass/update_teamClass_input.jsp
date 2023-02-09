<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.musclebeach.teamClass.model.*" %>

<%
    TeamClassVO teamClassVO = (TeamClassVO) request.getAttribute("teamClassVO");
%>
--<%= teamClassVO == null %> <!-- line 100 -->
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <title>�ҵ{��ƭק� - update_teamClass_input.jsp</title>

    <style>
        table#table-1 {
            background-color: #CCCCFF;
            border: 2px solid black;
            text-align: center;
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
    </style>

    <style>
        table {
            width: 450px;
            background-color: white;
            margin-top: 1px;
            margin-bottom: 1px;
        }

        table, th, td {
            border: 0px solid #CCCCFF;
        }

        th, td {
            padding: 1px;
        }
    </style>

</head>
<body bgcolor='white'>

<table id="table-1">
    <tr>
        <td>
            <h3>�ҵ{��ƭק� - update_teamClass_input.jsp</h3>
            <h4><a href="select_page.jsp" width="100" height="32" border="0">�^����</a></h4>
        </td>
    </tr>
</table>

<h3>��ƭק�:</h3>

<%-- ���~��C --%>
<c:if test="${not empty errorMsgs}">
    <font style="color:red">�Эץ��H�U���~:</font>
    <ul>
        <c:forEach var="message" items="${errorMsgs}">
            <li style="color:red">${message}</li>
        </c:forEach>
    </ul>
</c:if>

<FORM METHOD="post" ACTION="teamClass.do" name="form1">
    <table>
        <tr>
            <td>�ҵ{�s��:<font color=red><b>*</b></font></td>
            <td><%=teamClassVO.getClassID()%>
            </td>
        </tr>
        <tr>
            <td>���u�s��:</td>
            <td><input type="TEXT" name="empID" size="45" value="<%=teamClassVO.getEmpID()%>"/></td>
        </tr>
        <tr>
            <td>�ҵ{���O:</td>
            <td><input type="TEXT" name="typeID" size="45" value="<%=teamClassVO.getTypeID()%>"/></td>
        </tr>
        <tr>
            <td>�ҵ{�W��:</td>
            <td><input type="TEXT" name="className" size="45" value="<%=teamClassVO.getClassName()%>"/></td>
        </tr>
        <tr>
            <td>�ҵ{�H�ƤW��:</td>
            <td><input type="TEXT" name="peopleMax" size="45" value="<%=teamClassVO.getPeopleMax()%>"/></td>
        </tr>
        <tr>
            <td>�ҵ{���e:</td>
            <td><input type="TEXT" name="classContent" size="45" value="<%=teamClassVO.getClassContent()%>"/></td>
        </tr>


        <tr>
            <td>�ҵ{���A:</td>
            <td><input type="TEXT" name="classStatus" size="45" value="<%=teamClassVO.getClassStatus()%>"/></td>
        </tr>

    </table>
    <br>
    <input type="hidden" name="action" value="update">
    <input type="hidden" name="classID" value="<%=teamClassVO.getClassID()%>">
    <input type="submit" value="�e�X�ק�"></FORM>
</body>


</html>