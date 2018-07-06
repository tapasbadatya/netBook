<%@ page import="java.io.InputStream" %>
<%@ page import="java.io.FileInputStream" %>
<%@ page import="java.io.File" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 06-07-2018
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>


<%

  String contextPath =  pageContext.getServletContext().getRealPath("/");
  String prefixPath = contextPath.split("out")[0];

  File file = new File(prefixPath+"web/nBUsers/tapas@gmail.com");
  String[] dirs = file.list();
  for(String dir : dirs){
    out.print(dir);
  }
%>
<link href="styles/MyDirectory.css" rel="stylesheet">

<body>

<div class="my-directory" align="left">

  <div class="dir-header">
    <div class="back"><i class="material-icons icon" title="Back">arrow_back</i></div>
    <div class="create"><i class="material-icons icon" title="Create Folder">create_new_folder</i></div>
  </div>
</div>

</body>
</html>
