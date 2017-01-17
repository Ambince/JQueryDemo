<%--
  Created by IntelliJ IDEA.
  User: Amence
  Date: 2017/1/17
  Time: 16:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style type="text/css">
        .myClass {
            font-size: 30px;
            color: red;
        }
    </style>


    <script src="js/jquery-1.8.2.min.js"></script>
</head>
<body>
<form>
    <table>

        <tr>
            <td>
                <input type="text" name="username" value="Amence"/>


            </td>
            <td>
                <input type="password" name="password" value="123">

            </td>


        </tr>


    </table>


</form>

<script>
    //取得form里第一个input的type属性
    //alert( $("form input:first").attr("name") );

    //设置form里面最后一个input元素的为只读文本框
    //    $("form input:last").attr("readonly", "readonly");
    $(":password").attr("readonly", "readonly");
</script>

<div id="2015">fjdfjdlf</div>


<script>
    var divElement = document.createElement("div");
    divElement.innerHTML = "fdjkfj";
    divElement.setAttribute("id", "22323");
    divElement.id = "22323";
    document.body.appendChild(divElement);
</script>

<script>
    var $div = $("<div id='fdf'>的合法的回复</div>");
    $(document.body).append($div);


</script>

<ul id="a">
    <li>第一项</li>
    <li id="secondID">第二项</li>
    <li>第三项</li>
</ul>

<ul id="b">
    <li>第一条</li>
    <li id="secondID">第二条</li>
    <li>第三条</li>
</ul>

<div> 这是div元素</div>
<script>
    //    $("#secondID").remove();
    //删除所有的LI元素
    //    $("#a li").remove();
    //删除UL元素
    $("#b").remove();


</script>


<div>哈哈</div>

<select id="city">
    <option value="尘都">成都</option>

</select>

<script>
    //获取<div>的内容
    alert($("div").text());

    //获取<option>的值和描述
    var $option = $("#city option");
    var value = $option.val();
    var html = $option.text();
    alert(value + ":" + html);
</script>

<input type="button" value="原按钮" onclick="alert('静态时间')"/>
<script>
    //复制input元素，添加到原input元素后与其同级
    var $old = $(":button");
    var $new = $old.clone();
    $new.val("新按钮");
    $old.after($new);

    //    //为原来input元素动态添加点击事件，且复制原input元素
    var $old = $(":button");
    $old.click(function () {
        alert("动态点击事件");
    });

    //添加到原input元素后，与其同级，且和原按钮有一样的行为
    var $new = $old.clone(true);
    $new.val("新按钮");
    $old.after($new)


</script>

<table border="1" align="center">
    <tr>
        <td>
            <div style="width:165px;height: 23px">
                双击被替换的文本框


            </div>


        </td>

        <td>
            不会变
        </td>

    </tr>


</table>

<script>

    //双击<div>中的文本，用文本框替换文本
    $("div").dblclick(function () {
        var $text = $("<input type='text' style='width:165px;height:23px'/>");
        //文本框替代div标签
        $(this).replaceWith($text);
    });

</script>

<table>
    <tr>
        <td>
            添加属性border/align/width
        </td>

        <td>
            删除属性align
        </td>


    </tr>


</table>


<script>
    //为<table>元素添加属性border/align/width
    var $table = $("table").attr("border", 2).attr("align", "right").attr("width", "60%");
    //将<table>元素的align属性删除
    $table.remove("align");
</script>



<div class="myClass">有样式</div>
<div>无样式</div>
<script>

    //无样式的DIV添加样式
   $("div").toggleClass("myClass");

   var flag = $("div:last").hasClass("myClass");
   alert(flag?"有样式":"无样式")



</script>


</body>
</html>
