<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2019/6/2
  Time: 22:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page
        contentType="text/html;charset=UTF-8"
        language="java" %>
<html>
<head>
    <title>登录</title>
    <style type="text/css">
        #box{
            width: 520px;
            height: 370px;
            border: 1px solid red;
            margin: 165px auto;
        }
        .box1{
            padding: 100px;
            font-size: 20px;
            color: white;
        }
        .box2{
            margin-top: 20px;
            font-size: 15px;
        }
        #box .box1 .cl{
            color: white;
            font-size: 17px;
            text-decoration: none;
        }
        .inp{
            height: 28px;
            width: 250px;
            border-radius: 20px;
            outline: none;
            margin-bottom: 15px;
            font-size: 16px;
        }
        .box2{
            height: 40px;
            width: 140px;
            font-size: 18px;
            border-radius: 20px;
            outline: none;
            margin-left: 100px;
            margin-right: 40px;
        }
        input::-webkit-input-placeholder{
            font-size: 15px;
        }
        body{
            background-image: url("static/images/game.jpg");

        }

        .vintage1{
            background: #EEE url(data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAQAAAAECAIAAAAmkwkpAAAAHklEQVQImWNkYGBgYGD4//8/A5wF5SBYyAr+//8PAPOCFO0Q2zq7AAAAAElFTkSuQmCC) repeat;
            text-shadow: 5px -5px black, 4px -4px white;
            font-weight: bold;
            -webkit-text-fill-color: transparent;
            -webkit-background-clip: text }
        .vintage2{
            color: transparent;
            -webkit-text-stroke: 1px red;
            letter-spacing: 0.04em;}
        .vintage3 {
            color: transparent;
            background-color : blue;
            text-shadow : rgba(255,255,255,0.5) 0 5px 6px, rgba(255,255,255,0.2) 1px 3px 3px;
            -webkit-background-clip : text;
        }
        .vintage4{
            color: gold;
            letter-spacing: 0;
            text-shadow: 0px 1px 0px #999, 0px 2px 0px #888, 0px 3px 0px #777, 0px 4px 0px #666, 0px 5px 0px #555, 0px 6px 0px #444, 0px 7px 0px #333, 0px 8px 7px #001135 }
        .vintage5{
            font-family:cursive;text-shadow:6px 2px 2px #333;color:deeppink
        }
        .text-reflect-base{
            color: palegreen;
            -webkit-box-reflect:below 10px;
        }
        .text{
            width: 300px;
            height: 200px;
            position: absolute;
            left: 50%;
            margin-left: -142px;
            margin-top: -85px;
            background-image: -webkit-linear-gradient(left,blue,#66ffff 10%,#cc00ff 20%,#CC00CC 30%, #CCCCFF 40%, #00FFFF 50%,#CCCCFF 60%,#CC00CC 70%,#CC00FF 80%,#66FFFF 90%,blue 100%);
            -webkit-text-fill-color: transparent;/* 将字体设置成透明色 */
            -webkit-background-clip: text;/* 裁剪背景图，使文字作为裁剪区域向外裁剪 */
            -webkit-background-size: 200% 100%;
            -webkit-animation: masked-animation 4s linear infinite;
            font-size: 27px;
        }
        @keyframes masked-animation {
            0% {
                background-position: 0  0;
            }
            100% {
                background-position: -100%  0;
            }
        }
    </style>
</head>
<body>

<div id="box">
    <form method="post" action="/login" class="box1">
        用户名:<input type="text" name="username" placeholder="请输入用户名" class="inp"/><br/>
        密&nbsp&nbsp&nbsp码:<input type="password" name="password" placeholder="请输入密码" class="inp"/><br/>
        <input type="submit" value="登录" class="box2"/>
        <a href="register.jsp" class="cl">注册</a>
    </form>

    <div class="text">
        <p>愿得一人心，白首不分离</p>
    </div>

</div>

</body>
</html>
