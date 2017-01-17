<%--
  Created by IntelliJ IDEA.
  User: Amence
  Date: 2017/1/17
  Time: 14:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<img src="images/zgl.jpg">
<input id="hide" type="button" value="隐藏" style="position: absolute;top:250px;left: 50px;">
<input id="show" type="button" value="显示" style="position: absolute;top: 250px;left: 120px">

<script>
    //类
    function Photo() {
        var img = document.images[0];
        //方法
        this.hide = function () {
            img.style.visibility = "hidden";
        };

        this.show = function () {
            img.style.visibility = "visible";
        };
    }


</script>

<script>
    var p = new Photo();
    document.getElementById("hide").onclick = function () {
        p.hide();
    };
    document.getElementById("show").onclick = function () {

        p.show();
    }

</script>


</body>
</html>
