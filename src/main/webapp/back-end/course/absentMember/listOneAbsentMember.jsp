<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5" %>
<%@ page import="com.musclebeach.absentMember.model.*" %>
<%
    AbsentMemberVO absentMemberVO = (AbsentMemberVO) request.getAttribute("absentMemberVO");
%>
<html>
<head>
    <title>�ʮu��T - listOneTeamClass.jsp</title>
    absentMember.do
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
            width: 600px;
            background-color: white;
            margin-top: 5px;
            margin-bottom: 5px;
        }

        table, th, td {
            border: 1px solid #CCCCFF;
        }

        th, td {
            padding: 5px;
            text-align: center;
        }
    </style>

</head>
<body bgcolor='white'>


<table id="table-1">
    <tr>
        <td>
            <h3>�ҵ{��� - ListOneTeamClass.jsp</h3>
            <h4><a href="<%=request.getContextPath()%>/back-end/course/teamClass/select_page.jsp" width="100"
                   height="32" border="0">�^����</a></h4>
        </td>
    </tr>
</table>

<table>
    <tr>
        <th>��@�|���ʽҦ���</th>

    </tr>
    <tr>
        <td><%=absentMemberVO.getCount()%>
        </td>


    </tr>
</table>

</body>
</html>