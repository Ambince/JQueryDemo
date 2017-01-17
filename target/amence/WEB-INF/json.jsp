<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript">
		function Person(id, name, sal) {
			this.id = id;
			this.name = name;
			this.sal = sal;
		}

		var p = new Person(1, "Amence", 7000);
		document.write("编号:" + p.id + "<br/>");
		document.write("姓名:" + p.name + "<br/>");
		document.write("salary:" + p.sal + "<br/>");
	</script>
	<hr />

	<script type="text/javascript">
		var p = {
			id : 1,
			name : "Amence",
			sal : 8000
		};
		document.write("编号:" + p.id + "<br/>");
		document.write("姓名:" + p.name + "<br/>");
		document.write("salary:" + p.sal + "<br/>");
	</script>
	//创建Json数组
	<script type="text/javascript">
		var ps = [

		{

			id : 1,
			name : '哈哈'

		}, {
			id : 2,
			name : 'hehe'
		} ];
	</script>
	<hr />

	<script type="text/javascript">
		document.write("共有" + ps.length + "个学生<br/>");
		for (var i = 0; i < ps.length; i++) {
			document.write("编号:" + ps[i].id + "<br/>");
			document.write("姓名:" + ps[i].name + "<br/>");
		}
	</script>
	
	<script type="text/javascript">
	
	var p = {
			id:1,
			name:'啊哈哈',
			home:['湘潭','长沙','决定立刻就']
			
	};
	for(var i=0;i<p.home.length;i++){
		document.write(p.home[i]+"  ");
	}
	
	</script>
	
	
	<script type="text/javascript">
	
	var p = {
			id:1,
			name:'哈哈哈',
			isLove:true,
			home:['广州','深圳'],
			show:function(str){
				alert("哈哈:"+str);
			}
	}
	
	p.show("Amence");
	
	</script>































</body>
</html>