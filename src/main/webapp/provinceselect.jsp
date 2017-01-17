<%--suppress JSAnnotator --%>
<%--suppress ALL --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <script src="js/ajax.js"></script>
    <script src="js/jquery-1.8.2.min.js"></script>

</head>
<body>

<select id="provinceID" style="width: 111px">
    <option>选择省份</option>
    <option>湖北</option>
    <option>湖南</option>
    <option>广东</option>

</select>

<select id="cityID" style="width: 111px">
    <option>选择城市</option>
</select>

<select id="areaID">
    <option>选择区域</option>

</select>

<%--suppress JSAnnotator --%>
<script type="text/javascript">

    document.getElementById("provinceID").onchange = function () {
        //清空城市的下拉框
        var province = $("#provinceID").find("option:selected").text();
        var cityElement = document.getElementById("cityID");
        //noinspection JSAnnotator
        cityElement.options.length = 1;
        var areaElement = document.getElementById("areaID");
        areaElement.options.length = 1;

        if ("选择省份" != province) {
            $.ajax({
                data: "province=" + province,
                type: "POST",
                dataType: 'json',
                url: "${pageContext.request.contextPath}/findCityByProvinceRequest.do",
                error: function (data) {
                    alert("出错了！！:" + data);
                },
                success: function (data) {
                    var size = data.length;
                    for (var i = 0; i < size; i++) {
                        var city = data[i];
                        var option = document.createElement("option");
                        option.innerHTML = city;
                        cityElement.appendChild(option);
                    }
                },
            });
        }

    };

    document.getElementById("cityID").onchange = function () {
        var areaElement = document.getElementById("areaID");
        areaElement.options.length = 1;
        var city = $("#cityID").find("option:selected").text();
        if ("选择城市" != city) {
            $.ajax({
                data: "city=" + city,
                type: "POST",
                dataType: 'json',
                url: "${pageContext.request.contextPath}/findAreaByCityRequest.do",
                error: function (data) {
                    alert(data)
                },
                success: function (data) {
                    var size = data.length;
                    for (var i = 0; i < size; i++) {
                        var area = data[i];
                        var option = document.createElement("option");
                        option.innerHTML = area;
                        areaElement.appendChild(option);
                    }
                },
            });
        }

    };


</script>

</body>
</html>