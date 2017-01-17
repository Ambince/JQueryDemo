<%--
  Created by IntelliJ IDEA.
  User: Amence
  Date: 2017/1/17
  Time: 14:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<img src="images/zgl.jpg">
<input id="hide" type="button" value="隐藏" style="position: absolute;top: 250px;left: 50px;">
<input id="show" type="button" value="显示" style="position:absolute;top: 250px;left: 120px;"/>


<script>

    document.getElementById("hide").onclick = function () {
        //定位图片
        var img = document.images[0];
        img.style.visibility = "hidden";
    }

    document.getElementById("show").onclick = function () {
        //定位图片
        var img = document.images[0];
        img.style.visibility = "visible";
    }


</script>


</body>
</html>
