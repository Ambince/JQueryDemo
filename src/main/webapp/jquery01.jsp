<%--
  Created by IntelliJ IDEA.
  User: Amence
  Date: 2017/1/17
  Time: 16:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="js/jquery-1.8.2.min.js"></script>
</head>
<body>
<input type="text" value="xx">
<input type="text" value="zz">
<input type="text" value="dd">
<input type="text" value="df">

<script>
    var input = $("input");
    document.write(input);

</script>
<script>

    var nameArray = [
        {
            name: "哈哈",
            sal: 4444,
        },
        {
            name: "heh",
            sal: 2343,
        }
        ,
        {
            name: "fdf",
            sal: 343435,
        }


    ];

    var $nameArray = $(nameArray);
    $nameArray.each(function () {
        document.write(this.name + ":" + this.sal + "<br/>");
    })


</script>

<ul>
    <li>第一项</li>
    <li>第尔项</li>
    <li>第fsd项</li>
</ul>

<hr/>

<div>这是子元素，要插入到父元素内</div>

<script>
    $("ul").before($("div"));
</script>





















</body>
</html>
