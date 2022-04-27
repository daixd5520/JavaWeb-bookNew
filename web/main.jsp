<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="keywords"  content = "图书 java jsp"/>
    <meta http-equiv="author" content="phenix"/>
    <link rel="stylesheet" type="text/css" href="./Style/skin.css" />
    <script src="Js/echarts.js"></script>
<%--    <script type="text/javascript">--%>
<%--        // 基于准备好的dom，初始化echarts实例--%>
<%--        var myChart = echarts.init(document.getElementById('char1'));--%>
<%--        console.log(myChart)--%>

<%--        // 指定图表的配置项和数据--%>
<%--        var option = {--%>
<%--            title: {--%>
<%--                text: 'ECharts 入门示例'--%>
<%--            },--%>
<%--            tooltip: {},--%>
<%--            legend: {--%>
<%--                data: ['销量']--%>
<%--            },--%>
<%--            xAxis: {--%>
<%--                data: ['衬衫', '羊毛衫', '雪纺衫', '裤子', '高跟鞋', '袜子']--%>
<%--            },--%>
<%--            yAxis: {},--%>
<%--            series: [--%>
<%--                {--%>
<%--                    name: '销量',--%>
<%--                    type: 'bar',--%>
<%--                    data: [5, 20, 36, 10, 10, 20]--%>
<%--                }--%>
<%--            ]--%>
<%--        };--%>

<%--        // 使用刚指定的配置项和数据显示图表。--%>
<%--        myChart.setOption(option);--%>


<%--    </script>--%>
</head>
<%--    <body>--%>
<%--    <table width="100%" border="0" cellpadding="0" cellspacing="0">--%>
<%--        <tr>--%>
<%--            <td valign="top" bgcolor="#F7F8F9">--%>
<%--                <img src="./Images/bookmain.jpeg" width="1000" height="600">--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--    </table>--%>
<%--    </body>--%>
<div class="container">
    <div class="box">
        <img src="imgs/book100.jpg" alt="">
<%--        <h2>你好啊！1</h2>--%>
<%--        <p>hahahahah</p>--%>
    </div>
    <div class="box">
        <img src="imgs/book99.jpg" alt="">
<%--        <h2>你好啊！6</h2>--%>
<%--        <p>hahahahah</p>--%>
    </div>
    <div class="box">
        <img src="imgs/img_6.jpg" alt="">
<%--        <h2>你好啊！2</h2>--%>
<%--        <p>hahahahah</p>--%>
    </div>
    <div class="box">
        <img src="imgs/img_3.jpg" alt="">
<%--        <h2>你好啊！1</h2>--%>
<%--        <p>hahahahah</p>--%>
    </div>
    <div class="box">
        <img src="imgs/book98.jpg" alt="">
<%--        <h2>你好啊！6</h2>--%>
<%--        <p>hahahahah</p>--%>
    </div>
    <div class="box">
        <img src="imgs/img_27.jpg" alt="">
<%--        <h2>你好啊！2</h2>--%>
<%--        <p>hahahahah</p>--%>
    </div>
    <div class="box">
        <img src="imgs/img_5.jpg" alt="">
<%--        <h2>你好啊！1</h2>--%>
<%--        <p>hahahahah</p>--%>
    </div>
    <div class="box">
        <img src="imgs/img_8.jpg" alt="">
<%--        <h2>你好啊！6</h2>--%>
<%--        <p>hahahahah</p>--%>
    </div>
    <div class="box">
        <img src="imgs/img_9.jpg" alt="">
<%--        <h2>你好啊！2</h2>--%>
<%--        <p>hahahahah</p>--%>
    </div>
    <div class="box">
        <img src="imgs/img_10.jpg" alt="">
        <%--        <h2>你好啊！2</h2>--%>
        <%--        <p>hahahahah</p>--%>
    </div>
    <div class="box">
        <img src="imgs/img_11.jpg" alt="">
        <%--        <h2>你好啊！2</h2>--%>
        <%--        <p>hahahahah</p>--%>
    </div>
    <div class="box">
        <img src="imgs/img_12.jpg" alt="">
        <%--        <h2>你好啊！2</h2>--%>
        <%--        <p>hahahahah</p>--%>
    </div>
    <div class="box">
        <img src="imgs/img_13.jpg" alt="">
        <%--        <h2>你好啊！2</h2>--%>
        <%--        <p>hahahahah</p>--%>
    </div>
    <div class="box">
        <img src="imgs/img_14.jpg" alt="">
        <%--        <h2>你好啊！2</h2>--%>
        <%--        <p>hahahahah</p>--%>
    </div>
</div>
<style>
    .body {
        margin:0;
        padding:0;
        background:#333;
    }
    .container {
        width:1200px;
        margin:20px auto;
        columns:4;
        column-gap:40px;
    }
    .container .box {
        width:100%;
        margin:0 0 20px;
        padding:10px;
        background:#E1E5EE;
        overflow:hidden;
        break-inside:avoid;
    }
    .container .box img {
        max-width:100%;
    }
    @media(max-width:1200px) {
        .container {
            columns:3;
            width:calc(100% - 40px);
            box-sizing:border-box;
            padding:20px 20px 20px 0;
        }
    }@media(max-width:768px) {
        .container {
            columns:2;
        }
    }@media(max-width:480px) {
        .container {
            columns:1;
        }
    }
</style>
</html>