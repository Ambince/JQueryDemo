function Photo() {
    var img = document.images[0];
    this.hide = function () {
        img.style.visibility = "hidden";
    }
    this.show = function () {
        img.style.visibility = "visible";
    }
}

为库函数来找到标签
//作
function $(str) {
    var type = typeof (str);
    if(type == "string"){
        var first = str.substring(0,1);
        if ("#"==first){
            var end = str.substring(1,str.length);
            var element = document.getElementById(end);
            if(element !=null){
                return element;
            }else
            {
                alert("没有标签");
            }


        }else{
            alert("参数必须是字符串类型");
        }
    }
}
