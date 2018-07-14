<%@ page language="java" contentType="text/html; charset=utf-8"

         pageEncoding="utf-8"%>
<%
    String EID = (String)request.getAttribute("EID");
    String path = request.getContextPath() + "/ert/";
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
    request.setAttribute("path", basePath);
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="refresh" content="0;url=ert/pages/index.jsp?employee_id="<%=EID%>>
<title>SB Admin 2</title>
<base href="<%=basePath %>">
<script language="javascript">
    window.location.href = "pages/index.jsp?employee_id=" + <%=EID%>;
    window.event.returnValue=false;
</script>
</head>
<body>
Go to <a href="pages/index.jsp?employee_id="<%=EID%>>/pages/index.jsp?employee_id=<%=EID%></a>
</body>
</html>
