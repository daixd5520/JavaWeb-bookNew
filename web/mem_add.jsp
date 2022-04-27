<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html >
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="keywords"  content = "图书 java jsp"/>
    <meta http-equiv="author" content="phenix"/>
    <link rel="stylesheet" type="text/css" href="./Style/skin.css" />
    <script src="Js/jquery-3.3.1.min.js"></script>
   <script language="JavaScript">
         $(function(){
             //为每个radio绑定事件
             $(":radio").each(function(index,element){
                  $(this).click(function(){
                      //radio的下一个元素(hidden)的 value
                      var value = $(this).next().val();
                      //赋值给balance的text
                      $("#balance").val(value);
                      console.log(value);
                  });
             });

         });

   </script>
</head>
    <body>
        <table width="100%" border="0" cellpadding="0" cellspacing="0" rules="none">
            <!-- 头部开始 -->
            <tr>
                <td width="17" valign="top" height="20" >
<%--                    <img src="./Images/left_top_right.gif" width="17" height="29" />--%>
                </td>
                <td valign="top" background=white>
                </td>
                <td width="16" valign="top" background=white></td>
            </tr>
            <!-- 中间部分开始 -->
            <tr>
                <!--第一行左边框-->
                <td valign="middle" background=white>&nbsp;</td>
                <!--第一行中间内容-->
                <td valign="top" bgcolor="#F7F8F9">
                    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <!-- 空白行-->
                        <tr><td colspan="2" valign="top">&nbsp;</td><td>&nbsp;</td><td valign="top">&nbsp;</td></tr>
                        <tr>
                            <td colspan="4">
                                <table>
                                    <tr>
                                        <td width="100" align="center"><img src="./Images/cat.png" height="60px"/></td>
                                        <td valign="bottom"><h3 style="letter-spacing:1px;font-size: large;">读者管理 >> 读者开卡 </h3></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <!-- 一条线 -->
                        <tr>
                            <td height="60" colspan="4">
                                <table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" bgcolor=#f5f5f5>
                                    <tr><td></td></tr>
                                </table>
                            </td>
                        </tr>
                        <!-- 添加栏目开始 -->
                        <tr>
                            <td width="2%">&nbsp;</td>
                            <td width="96%">
                                <table width="100%">
                                    <tr>
                                        <td colspan="2" style="border:0px;">
                                            <form action="member.let?type=add" method="post">
                                                <table width="100%" class="cont" style="text-align:center;border:0px;" >
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td width="10%">用户名</td>
                                                        <td width="20%"><input class="text" type="text" name="name" value="" required style="height:30px;border-radius:0.7rem 0.7rem 0.7rem 0.7rem ;"/></td>
                                                        <td class="err">长度6~15个字符</td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    </tr>
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td>密码</td>
                                                        <td><input class="text" type="password" name="pwd" value="" required style="height:30px;border-radius:0.7rem 0.7rem 0.7rem 0.7rem ;"/></td>
                                                        <td class="err">必须包含字母和数字，长度6~15位</td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    </tr>
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td>确认密码</td>
                                                        <td><input class="text" type="password" name="pwd2" value="" required style="height:30px;border-radius:0.7rem 0.7rem 0.7rem 0.7rem ;"/></td>
                                                        <td class="err">两次密码必须一致</td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    </tr>
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td>电话号码</td>
                                                        <td>
                                                            <input class="text" type="tel" name="tel" required style="height:30px;border-radius:0.7rem 0.7rem 0.7rem 0.7rem ;"/>
                                                        </td>
                                                        <td></td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td>身份证号</td>
                                                        <td>
                                                            <input class="text" type="text" name="idNumber" required style="height:30px;border-radius:0.7rem 0.7rem 0.7rem 0.7rem ;"/>
                                                        </td>
                                                        <td></td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td>会员类型</td>
                                                        <td>
                                                            <c:forEach items="${memberTypes}" var="mt">
                                                                <c:if test="${mt.id==1}">
                                                                    <input  type="radio" name="memberType" value="${mt.id}" checked/> ${mt.name}&nbsp;&nbsp;
                                                                    <input type="hidden" value="${mt.recharge}"/>
                                                                </c:if>
                                                                <c:if test="${mt.id!=1}">
                                                                    <input  type="radio" name="memberType" value="${mt.id}" /> ${mt.name}&nbsp;&nbsp;
                                                                    <input type="hidden" value="${mt.recharge}"/>
                                                                </c:if>
                                                            </c:forEach>
                                                        </td>
                                                        <td></td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    </tr>
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td>充值金额</td>
                                                        <td>
                                                           <input class="text" id="balance" type="number" name="balance" value="100" readonly style="height:30px;border-radius:0.7rem 0.7rem 0.7rem 0.7rem ;"/>
                                                        </td>
                                                        <td></td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>

                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td></td>
<%--                                                        <td><button class="btn5"  type="submit" value="提交" style="width: 85px;height:40px;"></td>--%>
                                                        <td><input class="btn" type="submit" value="提交" style="width:90px;height:40px;border-radius:0.9rem 0.9rem 0.9rem 0.9rem ;"/></td>
                                                        <td></td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                </table>
                                            </form>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td width="2%">&nbsp;</td>
                        </tr>
                        <!-- 添加栏目结束 -->
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
                                <br /><br /><br />
                            </td>
                            <td>&nbsp;</td><td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
                <td >&nbsp;</td>
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
<style>
    body{
        background-color: #332333;
    }
    table
    {
        border-collapse: collapse;
        margin: 0 auto;
        /*text-align: center;*/
        border:1px;
    }
    table tr{
        /*text-align: center;*/
        border:1px;
    }
</style>
</html>