<%--
  Created by IntelliJ IDEA.
  User: Amence
  Date: 2017/1/17
  Time: 14:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>使用JS库</title>
    <script src="js/photo.js"></script>
</head>
<body>
<img src="images/zgl.jpg"/>

<input id="hided" type="button" value="隐藏" style="position: absolute;top:250px;left: 50px;">
<input id="shows" type="button" value="显示" style="position: absolute;top:250px;left: 120px;">


<script>

    var p = new Photo();
    $("#hided").onclick = function () {
        p.hide()
    }
    $("#shows").onclick = function () {
        p.show();
    }


</script>


</body>
</html>
