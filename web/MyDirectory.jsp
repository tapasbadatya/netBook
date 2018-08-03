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

<%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>--%>
<%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>

<%--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">--%>
<%--<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">--%>

<%--<link href="styles/bootstrap.min.css" rel="stylesheet">--%>
<%--<script src="scripts/bootstrap.min.js"></script>--%>
<%--<script src="scripts/jquery-2.0.3.js"></script>--%>

<link href="styles/MyDirectory.css" rel="stylesheet">

<%

  String contextPath =  pageContext.getServletContext().getRealPath("/");
  String prefixPath = contextPath.split("out")[0];


  File file = new File(prefixPath+"web/nBUsers/tapas@gmail.com");
  String[] dirs = file.list();
%>

<%--<body>--%>

<div class="my-directory" align="left">

  <div class="dir-header">
    <div class="back"><i class="material-icons icon" title="Back">arrow_back</i></div>
    <div class="create"><i class="material-icons icon" title="Create Folder">create_new_folder</i></div>
  </div>
  <%--<div class="h-line"></div>--%>
  <div id="directory-area">

    <%
      for(String dir : dirs){
    %>

    <div class="dir-box" align="center">
      <div class="delete-dir" align="right"><i class="fa fa-close"></i> </div>
      <div class="dir-icon"><i class="fa fa-folder-open-o"></i> </div>
      <div class="dir-name"><span id="dir-<%=dir%>" onclick="Directory.applyRename('dir-<%=dir%>')"><%=dir%></span></div>
    </div>


    <%
      }
    %>




  </div>
</div>

<%--</body>--%>

<script src="scripts/MyDirectory.js"></script>
<%--</html>--%>
