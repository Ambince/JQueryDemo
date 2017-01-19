<%--
  Created by IntelliJ IDEA.
  User: Amence
  Date: 2017/1/19
  Time: 10:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="js/jquery-1.8.2.min.js"></script>
</head>
<body>
<img src="images/zgl.jpg">
<script>
    //    //5秒的隐藏时间
    //    $("img").hide(5000);
    //    //1秒内显示
    //    window.setTimeout(function () {
    //        $("img").show(1000);
    //    })
    //淡入现实图片
    $("img").fadeIn(3000);
    //淡出隐蔽图片
    $("img").fadeOut(3000);


</script>


<div>
    中国0<br/>
    中国1<br/>
    中国2<br/>
    中国3<br/>
    中国4<br/>
    中国5<br/>
    中国6<br/>
    中国7<br/>
    中国8<br/>
    中国9<br/>

</div>

<input type="button" value="我的好友">

<script>
    $(":button").click(function () {
        //div上下移动
        $("div").slideToggle(1000);
    })


</script>


<script>
    function myclick() {
        //使用jquery弹出奇数的tr标签下的td里的值，即A1,A2,A3,C1,C2,C3
        var $tr = $("table tr:NOT(:last):even");
        //在每个tr标签中查询td
        $tr.each(function () {
            var $td = $(this).find("td");
            //迭代
            $td.each(function () {
                var content = $(this).text();
                alert(content);
            })
        });

    }


</script>

<table border="2" align="center" width="30%">
    <tr>
        <td>A1</td>
        <td>A2</td>
        <td>A3</td>
        <td>0</td>
    </tr>
    <tr>
        <td>B1</td>
        <td>B2</td>
        <td>B3</td>
        <td>1</td>
    </tr>
    <tr>
        <td>C1</td>
        <td>C2</td>
        <td>C3</td>
        <td>2</td>
    </tr>
    <tr>
        <td>D1</td>
        <td>D2</td>
        <td>D3</td>
        <td>3</td>
    </tr>
    <tr>
        <td colspan="3" align="center">
            <input type="button" value="  测  试  " onclick="myclick()"/>
        </td>
        <td>4</td>
    </tr>
</table>

<form>
    <table>
        <tr>
            <td>
                哈哈
            </td>
            <td>
                赵君
            </td>
        </tr>
        <tr>
            <td>
                细细
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td>
                笨笨
            </td>
        </tr>
    </table>
</form>


<script>

    var name = $("html body form table:first tr:first td:last").text();
    alert(name);

</script>


</body>
</html>
