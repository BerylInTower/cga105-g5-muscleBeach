<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5" %>
<%@ page import="com.musclebeach.teamClass.model.*" %>
<%
    TeamClassVO teamClassVO = (TeamClassVO) request.getAttribute("teamClassVO"); //TeamClassServlet.java(Concroller), �s�Jreq��empVO����
%>
<html>
<head>
    <title>�ҵ{��� - listOneTeamClass.jsp</title>

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
            <h4><a href="<%=request.getContextPath()%>/back-end/teamClass/select_page.jsp"
                   width="100" height="32" border="0">�^����</a></h4>
        </td>
    </tr>
</table>

<table>
    <tr>
        <th>�ҵ{�s��</th>
        <th>���u�s��</th>
        <th>�ҵ{���O</th>
        <th>�ҵ{�W��</th>
        <th>�ҵ{�H�ƤW��</th>
        <th>�ҵ{���e</th>
        <th>�ҵ{���A</th>
    </tr>
    <tr>
        <td><%=teamClassVO.getClassID()%>
        </td>
        <td><%=teamClassVO.getEmpID()%>
        </td>
        <td><%=teamClassVO.getTypeID()%>
        </td>
        <td><%=teamClassVO.getClassName()%>
        </td>
        <td><%=teamClassVO.getPeopleMax()%>
        </td>
        <td><%=teamClassVO.getClassContent()%>
        </td>
        <td><%=teamClassVO.getClassStatus()%>
        </td>
    </tr>
</table>

</body>
</html>