<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2019/5/27
  Time: 12:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page
        contentType="text/html;charset=UTF-8"
        language="java" %>
<html>
<head>
    <title>访问量统计</title>
</head>
<body>

<h1>
    当前网站访问次数：

    <%

        if (application.getAttribute("count") == null){

            application.setAttribute("count",1);

        }else{

            int currentCount = (int) application.getAttribute("count");

            currentCount = currentCount + 1;

            application.setAttribute("count",currentCount);

        }

        out.print(application.getAttribute("count"));

    %>
</h1>

</body>
</html>
