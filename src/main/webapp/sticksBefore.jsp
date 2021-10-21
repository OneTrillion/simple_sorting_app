<%--
  Created by IntelliJ IDEA.
  User: loveh
  Date: 2021-10-20
  Time: 22:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" %>
<html>
<head>
    <title>Visual QuickSort</title>
    <link rel="stylesheet" href="Stylesheet.css">
</head>
<body>
    <div class="allStyles">
        <h1>Unsorted array</h1>
        <%
            List result= (List) request.getAttribute("StickArray");
            Iterator it = result.iterator();

            while(it.hasNext()){
                out.print(it.next()+"<br>");
            }
        %>

        <h2>press the button for quickSort</h2>

        <form method="post" action="sticksAfter">
            <input type="submit" value="Sort">
        </form>
    </div>
</body>
</html>
