<%--
  Created by IntelliJ IDEA.
  User: loveh
  Date: 2021-10-20
  Time: 22:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*"%>
<html>
<head>
    <title>Visual QuickSort</title>
    <link rel="stylesheet" href="Stylesheet.css">
</head>
<body>
    <div class="allStyles">
        <h1>Sorted array</h1>

        <%
            List result= (List) request.getAttribute("StickArray2");
            Iterator it = result.iterator();

            while(it.hasNext()){
                out.print(it.next()+"<br>");
            }
        %>

        <h2>Try again?</h2>

        <form method="post" action="sticksBefore">
            <input type="submit" value="Go again!">
        </form>
    </div>
</body>
</html>
