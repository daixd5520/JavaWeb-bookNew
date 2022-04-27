<%--
  Created by IntelliJ IDEA.
  User: dxd
  Date: 2022/4/28
  Time: 0:40
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html style="background-color: #666666;">
<head>
    <title>mao~~后台</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="description" content="d" />
    <meta name="keywords" content="喵" />
    <meta name="Author" content="dd" />
    <meta name="CopyRight" content="dd" />
</head>

<body>
<div class="container">
    <div class="box">
        <div id="nav">
            <table cellpadding="0" width="100%" height="64" >
                <tr valign="top">
                    <td width="70%"><a href="javascript:void(0)"></a></td>
                    <td width="30%" style="padding-top:13px;font:15px Arial,SimSun,sans-serif;color:#FFF"> 当前用户:<b>${user.name}</b>&nbsp;<a style="color:white" onclick="return confirm('确认退出');" href="user.let?type=exit">安全退出</a></td>
                </tr>
            </table>
            <div class="nav1">
                <ul class="nav2">
                    <li class="li"><a href="">首页</a></li>
                    <li class="li"><a href="javascript:void(0)">常用操作</a>
                        <ul class="nav3">
                            <li><a href="./book_rent2.jsp" target="main">借书</a></li>
                            <li><a href="./return_list.jsp" target="main">还书</a></li>
<%--                            <li><a href="./rent_list.jsp" target="main">借阅记录</a></li>--%>
                        </ul>
                    </li>
                    <li class="li"><a href="javascript:void(0)">账户操作</a>
                        <ul class="nav3">
                            <li><a href="./set_pwd.jsp" target="main">密码修改</a></li>
                            <!--				     <li><a href="###">吕</a></li>-->
                            <!--				     <li><a href="###">梅</a></li>		   -->
                        </ul>
                    </li>
                </ul>
            </div>
        </div>

    </div>

</div>

<div>
    <%--  <iframe id="left" src="left.jsp"></iframe>--%>
    <iframe id="right" src="main.jsp" name="main"></iframe>
</div>
</body>
<style>
    .container {
        width: 1234px;
        height: 200px;
        position: relative;
        margin: 0px;
    }
    .box {
        width: 120%;
        height: 20%;
        position: absolute;
        top: 0;
        left: 0;
        opacity: 1;
        background: #CCCCCC;
    }
    .overlay {
        z-index: 9;
        margin-left: 230px;
        width:1012px;
        margin-top: 30px;
        background: #E1E5EE;
        opacity: 0;
    }
    * {
        margin:0;
        padding:0;
    }
    li {
        list-style:none;
    }
    .nav1 {
        width:996px;
        height:60px;
        background:#2D3647;
        margin:0 auto;
    }
    #nav .nav1 ul li {
        width:166px;
        line-height:60px;
        text-align:center;
        background:#CCCCCC;
        float:left;
    }
    #nav .nav1 ul li a {
        color:#000;
        display:block;
        width:166px;
        height:60px;
        text-decoration:none;
    }
    #nav .nav1 ul li a:hover {
        background:#666666;
        color:#fff;
        transition:all 0.7s;
    }
    .nav2 .li {
        position:relative;
    }
    .nav3 {
        position:absolute;
        height:0px;
        overflow:hidden;
        transition:height 0.7s;
        -moz-transition:height 0.7s;
        /* Firefox 4 */ -webkit-transition:height 0.7s;
        /* Safari and Chrome */
    }
    /*就是当鼠标悬浮在li 上面的时候，让他子元素中的 nav3 显示可见*/
    .nav2 .li:hover .nav3 {
        height:180px;
    }
    .nav2 .li:nth-child(3):hover .nav3 {
        height:240px;
    }
    #nav {
        height:60px;
        background:#3d313f;
        position:fixed;
        z-index:100000;
        /* 必须设置最高层 */top:0px;
        width:100%;
    }
    #header {
        height:460px;
    }
    /*#content {*/
    /*  width:1200px;*/
    /*  height:1300px;*/
    /*  margin:0 auto;*/
    /*}*/
    /*#footer {*/
    /*  height:200px;*/
    /*  background:#1D1D1D;*/
    /*}*/
    #right
    {
        position: absolute;
        margin-left: 238px;
        top: 100px;
        height: 100%;
        width: 67%;
        /*right: 0;*/
        bottom: 0;
        overflow: hidden;
        background: #fff;
    }

</style>
</html>

