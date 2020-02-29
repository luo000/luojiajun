<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2019/6/3
  Time: 16:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page
        contentType="text/html;charset=UTF-8"
        language="java" %>
<%request.setCharacterEncoding("UTF-8");%>
<html>
<head>
    <title>注册</title>
</head>
<style type="text/css">
    body{
        background-image: url("static/images/book.jpg");
    }
    #box{
        border: 1px solid red;
        height:400px;
        width: 520px;
        margin: 130px auto;
    }
    form{
        color: white;
        font-size: 20px;
        padding: 100px 120px;
    }
    input{
        height: 30px;
        width: 210px;
        border-radius: 13px;
        outline: none;
        font-size: 17px;
        margin-top: 15px;
    }
    #select{
        margin-top: 15px;
        font-size: 17px;
        width: 210px;
        border-radius: 13px;
        outline: none;
        height: 30px;
    }
    #register{
        font-size: 20px;
        height: 30px;
        width: 180px;
        margin-left: 75px;
        margin-top: 30px;
    }
    #return{
        color: orchid;
        text-decoration: none;
        font-size: 17px;
    }
</style>
<body>

<div id="box">

    <a href="login.jsp" id="return">返回登录</a>

    <form method="post" action="/register">
        用户名:<input type="text" name="username" placeholder=""><br>
        密&nbsp;&nbsp;&nbsp;码:<input type="password" name="password" placeholder=""><br>
        年&nbsp;&nbsp;&nbsp;龄:<input type="text" name="age" placeholder=""><br>
        性&nbsp;&nbsp;&nbsp;别:<select name="gender" id="select">
        <option>男</option>
        <option>女</option>
    </select><br>
        <input type="submit" value="注册" id="register"><br>
    </form>
</div>

</body>
</html>
