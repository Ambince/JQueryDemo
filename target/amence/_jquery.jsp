<%--
  Created by IntelliJ IDEA.
  User: Amence
  Date: 2017/1/17
  Time: 15:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>jquery使用</title>、

    <script src="js/jquery-1.8.2.min.js"></script>
</head>
<body>
<div id="divID">Amence</div>
<script>
    //获取控件
    var $div = $("#divID");
    var div = $div.html();
    alert(div);

</script>


</body>
</html>
