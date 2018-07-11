<%@ page language="java" contentType="text/html; charset=utf-8"

         pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>login</title>
    <link rel="stylesheet" type="text/css" href="css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="css/demo.css" />
    <!--必要样式-->
    <link rel="stylesheet" type="text/css" href="css/component.css" />
</head>
<body>
<div class="container demo-1">
    <div class="content">
        <div id="large-header" class="large-header">
            <canvas id="demo-canvas"></canvas>
            <div class="logo_box">.idea\workspace.xml
                <h3>登录</h3>.idea\workspace.xml
                <form id="form">
                    <div class="input_outer">
                        <span class="u_user"></span>
                        <input name="employee_id" class="text" id="employee_id" style="color: #FFFFFF !important" type="text" placeholder="请输入姓名">
                    </div>

                    <div class="input_outer">
                        <span class="u_user1"></span>
                        <input name="password" id="password" class="text" style="color: #FFFFFF !important; position:absolute; z-index:100;" value="" type="password" placeholder="请输入密码">
                    </div>
                    <button class="act-but submit mb2" id="btn" type="submit" ><a style="color: #FFFFFF">提交</a></button>
                    <button class="act-but submit mb2" type="reset" ><a  style="color: #FFFFFF">重置</a></button>
                </form>
            </div>
        </div>
    </div>
</div><!-- /container -->
<script src="js/TweenLite.min.js"></script>
<script src="js/EasePack.min.js"></script>
<script src="js/rAF.js"></script>
<script src="js/demo-1.js"></script>
<script type="text/javascript" src="js\jquery_md5\jquery.js"></script>
<script type="text/javascript" src="js\jquery_md5\jquery.md5.js"></script>

<script type="text/javascript">
    $(function() {
        $("#btn").click(function () {
            var md5 = $("#password");
            md5.val($.md5(md5.val()));
            var employee_id = $("#employee_id");
            $.ajax({
                type: "POST",
                dataType: "text/json",
                url: "loginServlet",
                async: false,
                data:{
                    employee_id:employee_id.val(),
                    password:md5.val()
                },
                success:function (data) {
                    json = JSON.parse(data);
                    if(json.success == '1' && json.user_id == employee_id.val()){
                        alert("success!");
                        window.location.href='http://www.baidu.com';
                        window.event.returnValue=false;
                    }
                    else{
                        window.location.href=location.href;
                        window.event.returnValue=false;
                    }
                }
            });
        })
    })
</script>


</body>
</html>