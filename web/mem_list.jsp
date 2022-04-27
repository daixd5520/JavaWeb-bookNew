<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html >
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="keywords"  content = "图书 java jsp"/>
    <meta http-equiv="author" content="phenix"/>
    <link rel="stylesheet" type="text/css" href="./Style/skin.css" />
</head>
    <body>
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <!-- 头部开始 -->
            <tr>
                <td width="17" valign="top" height=20 background=white>
<%--                    <img src="./Images/left_top_right.gif" width="17" height="29" />--%>
                </td>
                <td valign="top" background=white>
                    
                </td>
                <td width="16" valign="top" background=white></td>
            </tr>
            <!-- 中间部分开始 -->
            <tr>
                <!--第一行左边框-->
                <td valign="middle" >&nbsp;</td>
                <!--第一行中间内容-->
                <td valign="top" bgcolor="#F7F8F9">
                    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <!-- 空白行-->
                        <tr><td colspan="2" valign="top">&nbsp;</td><td>&nbsp;</td><td valign="top">&nbsp;</td></tr>
                        <tr>
                            <td colspan="4">
                                <table>
                                    <tr>
                                        <td width="100" align="center"><img src="./Images/cat.png"  height="60px"/></td>
                                        <td valign="bottom"><h3 style="letter-spacing:1px;font-size: large;">读者管理 >> 读者删改 </h3></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <!-- 一条线 -->
                        <tr>
                            <td height="40" colspan="4">
                                <table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
                                    <tr><td></td></tr>
                                </table>
                            </td>
                        </tr>
                        <!-- 产品列表开始 -->
                        <tr>
                            <td width="2%">&nbsp;</td>
                            <td width="96%">
                                <table width="100%" >
                                    <tr>
                                        <td colspan="2">
                                            <form action="" method="">
                                                <table id="table1" width="100%"  class="cont tr_color" bgcolor="#e6e6fa">
                                                    <tr>
                                                        <th>编号</th>
                                                        <th>读者名称</th>
                                                        <th>联系电话</th>
<%--                                                        <th>会员类型</th>--%>
                                                        <th>余额</th>
                                                        <th>办卡时间</th>
                                                        <th>身份证号</th>
                                                        <th>删改操作</th>
                                                    </tr>
                                                    <c:forEach items="${memberList}" var="m">
                                                        <tr align="center" class="d">
                                                            <td>${m.id}</td>
                                                            <td>${m.name}</td>
                                                            <td>${m.tel}</td>
<%--                                                            <td>${m.type.name}</td>--%>
                                                            <td>${m.balance}</td>
                                                            <td>${m.regdate}</td>
                                                            <td>${m.idNumber}</td>
                                                            <td>
                                                                <a onclick="return confirm('开始修改?');" href="member.let?type=modifypre&id=${m.id}">修改</a>&nbsp;&nbsp;
                                                                <a onclick="return confirm('确认是否删除?');" href="member.let?type=remove&id=${m.id}">删除</a>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>


                                                </table>
                                            </form>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td width="2%">&nbsp;</td>
                        </tr>
                        <!-- 产品列表结束 -->
                        <tr>
                            <td height="40" colspan="4">
                                <table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
                                    <tr><td></td></tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td width="2%">&nbsp;</td>
                            <td width="51%" class="left_txt">
<%--                                <img src="./Images/icon_mail.gif" width="16" height="11"> 客户服务邮箱：2087924818@qq.com<br />--%>
                            </td>
                            <td>&nbsp;</td><td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
                <td background=white>&nbsp;</td>
            </tr>
            <!-- 底部部分 -->
            <tr>
                <td valign="bottom" background=white>
<%--                    <img src="./Images/buttom_left.gif" width="17" height="17" />--%>
                </td>
                <td background=white>
<%--                    <img src="./Images/buttom_bgs.gif" width="17" height="17">--%>
                </td>
                <td valign="bottom" background=white>
<%--                    <img src="./Images/buttom_right.gif" width="16" height="17" />--%>
                </td>           
            </tr>
        </table>
    </body>
<style type="text/css">
    #table1
    {
        border-collapse: collapse;
        margin: 0 auto;
        text-align: center;
    }
    #table1 td, #table1 th
    {
        border: 1px solid #cad9ea;
        color: #666;
        height: 40px;
    }
    #table1 thead th
    {
        background-color: #CCE8EB;
        width: 100px;
    }
    #table1 tr:nth-child(odd)
    {
        background: #fff;
    }
    #table1 tr:nth-child(even)
    {
        background: #F5FAFA;
    }
</style>

</html>