<%@ page language="java" contentType="text/html; charset=utf-8"

         pageEncoding="utf-8"%>

<%
    String baseDir = request.getRequestURI();
%>
<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <title>登录页面</title>

    <script src="js/jrj6out.js"></script>
    <script>try{Typekit.load({ async: false });}catch(e){}</script>

    <style>
        body {
            position: relative;
            margin: 0;
            overflow: hidden;
        }

        .intro-container {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            color: white;
            text-align: center;
            margin: 0 auto;
            right: 0;
            left: 0;
        }

        h1 {
            font-family: 'brandon-grotesque', sans-serif;
            font-weight: bold;
            margin-top: 0px;
            margin-bottom: 0;
            font-size: 20px;
        }
        @media screen and (min-width: 860px) {
            h1 {
                font-size: 40px;
                line-height: 52px;
            }
        }

        .fancy-text {
            font-family: "adobe-garamond-pro",sans-serif;
            font-style: italic;
            letter-spacing: 1px;
            margin-bottom: 17px;
        }

        .button {
            position: relative;
            cursor: pointer;
            display: inline-block;
            font-family: 'brandon-grotesque', sans-serif;
            text-transform: uppercase;
            min-width: 200px;
            margin-top: 30px;
        }
        .button:hover .border {
            box-shadow: 0px 0px 10px 0px white;
        }
        .button:hover .border .left-plane, .button:hover .border .right-plane {
            transform: translateX(0%);
        }
        .button:hover .text {
            color: #121212;
        }
        .button .border {
            border: 1px solid white;
            transform: skewX(-20deg);
            height: 32px;
            border-radius: 3px;
            overflow: hidden;
            position: relative;
            transition: .10s ease-out;
        }
        .button .border .left-plane, .button .border .right-plane {
            position: absolute;
            background: white;
            height: 32px;
            width: 100px;
            transition: .15s ease-out;
        }
        .button .border .left-plane {
            left: 0;
            transform: translateX(-100%);
        }
        .button .border .right-plane {
            right: 0;
            transform: translateX(100%);
        }
        .button .text {
            position: absolute;
            left: 0;
            right: 0;
            top: 50%;
            transform: translateY(-50%);
            transition: .15s ease-out;
        }

        .x-mark {
            right: 10px;
            top: 10px;
            position: absolute;
            cursor: pointer;
            opacity: 0;
        }
        .x-mark:hover .right {
            transform: rotate(-45deg) scaleY(1.2);
        }
        .x-mark:hover .left {
            transform: rotate(45deg) scaleY(1.2);
        }
        .x-mark .container {
            position: relative;
            width: 20px;
            height: 20px;
        }
        .x-mark .left, .x-mark .right {
            width: 2px;
            height: 20px;
            background: white;
            position: absolute;
            border-radius: 3px;
            transition: .15s ease-out;
            margin: 0 auto;
            left: 0;
            right: 0;
        }
        .x-mark .right {
            transform: rotate(-45deg);
        }
        .x-mark .left {
            transform: rotate(45deg);
        }

        .sky-container {
            position: absolute;
            color: white;
            text-transform: uppercase;
            margin: 0 auto;
            right: 0;
            left: 0;
            top: 1%;
            text-align: center;
            opacity: 0;
            margin-bottom: 20px;
        }
        @media screen and (min-width: 860px) {
            .sky-container {
                top: 11%;
                right: 12%;
                left: auto;
            }
        }
        .sky-container__left, .sky-container__right {
            display: inline-block;
            vertical-align: top;
            font-weight: bold;
        }
        .sky-container__left h2, .sky-container__right h2 {
            font-family: 'brandon-grotesque', sans-serif;
            font-size: 26px;
            line-height: 26px;
            margin: 0;
        }
        @media screen and (min-width: 860px) {
            .sky-container__left h2, .sky-container__right h2 {
                font-size: 72px;
                line-height: 68px;
            }
        }
        .sky-container__left {
            margin-right: 5px;
        }
        .sky-container .thirty-one {
            letter-spacing: 4px;
        }

        .text-right {
            text-align: right;
        }

        .text-left {
            text-align: left;
        }

        .twitter:hover a {
            transform: rotate(-45deg) scale(1.05);
        }
        .twitter:hover i {
            color: #21c2ff;
        }
        .twitter a {
            bottom: -40px;
            right: -75px;
            transform: rotate(-45deg);
        }
        .twitter i {
            bottom: 7px;
            right: 7px;
            color: #00ACED;
        }

        .social-icon a {
            position: absolute;
            background: white;
            color: white;
            box-shadow: -1px -1px 20px 0px rgba(0, 0, 0, 0.3);
            display: inline-block;
            width: 150px;
            height: 80px;
            transform-origin: 50% 50%;
            transition: .15s ease-out;
        }
        .social-icon i {
            position: absolute;
            pointer-events: none;
            z-index: 1000;
            transition: .15s ease-out;
        }

        .youtube:hover a {
            transform: rotate(45deg) scale(1.05);
        }
        .youtube:hover i {
            color: #ec4c44;
        }
        .youtube a {
            bottom: -40px;
            left: -75px;
            transform: rotate(45deg);
        }
        .youtube i {
            bottom: 7px;
            left: 7px;
            color: #E62117;
        }
        //////////////////////////////////////////////////////
        .logo_box{
            width: 400px;
            height: 500px;
            padding: 35px;
            color: #EEE;
            position: absolute;
            left: 50%;
            top:50%;
            margin-left: -200px;
            margin-top: -250px;
        }
        .logo_box h3{
            text-align: center;
            height: 20px;
            font: 20px "microsoft yahei",Helvetica,Tahoma,Arial,"Microsoft jhengHei",sans-serif;
            color: #FFFFFF;
            height: 20px;
            line-height: 20px;
            padding:0 0 10px 0;
        }
        .forms{
            width: 280px;
            height: 485px;
        }

        .input_outer{
            height: 46px;
            padding: 0 5px;
            margin-bottom: 30px;
            border-radius: 5px;
            position: relative;
            border: rgba(255,255,255,0.2) 2px solid !important;
            display: block;
        }

        .u_user{
            width: 25px;
            height: 25px;
            background: url(img/login_ico.png);
            background-position:  -125px 0px;
            position: absolute;
            margin: 10px 13px;
        }
        .u_user1{
            width: 25px;
            height: 25px;
            background: url(img/login_ico.png);
            background-position:  -125px -33px;
            position: absolute;
            margin: 10px 13px;
        }


        .text1{
            width: 220px;
            height: 46px;
            outline: none;
            display: inline-block;
            font: 14px "microsoft yahei",Helvetica,Tahoma,Arial,"Microsoft jhengHei";
            margin-left: 50px;
            border: none;
            background: none;
            line-height: 46px;
        }
        .mb2{
            margin-bottom: 20px;
            margin-top: 20px;
            border: 0px;
        }
        .mb2 a{
            text-decoration: none;
            outline: none;
        }
        .submit {
            padding: 15px;
            display: block;
            width: 100%;
        }
        .act-but{
            line-height: 20px;
            text-align: center;
            font-size: 20px;
            border-radius: 30px;
            background: #174ea1;
            padding: 5px;
        }
    </style>

    <script src="js/prefixfree.min.js"></script>

</head>

<body>
<div class="x-mark">
    <div class="container">
        <div class="left"></div>
        <div class="right"></div>
    </div>
</div>
<div class="intro-container">

    <h1>WELCOME TO HUMAN RESOURCE<br> MANAGEMENT SYSTEM</h1>

    <div class="button shift-camera-button">
        <div class="border">
            <div class="left-plane"></div>
            <div class="right-plane"></div>
        </div>
        <div class="text">To LOGIN</div>
    </div>
</div>
<div class="sky-container">
    <div class="logo_box">
        <h3>登录</h3>
        <form action="#" name="f" method="post">
            <div class="input_outer">
                <span class="u_user"></span>
                <input name="employee_id" id="employee_id" class="text1" style="color: #FFFFFF !important" type="text" placeholder="请输入员工号">
            </div>

            <div class="input_outer">
                <span class="u_user1"></span>
                <input name="password" id="password" class="text1" style="color: #FFFFFF !important;  z-index:100;" value="" type="password" placeholder="请输入密码">
            </div>
            <button class="act-but submit mb2" id="btn" type="reset" ><a style="color: #FFFFFF">提交</a></button>
            <button class="act-but submit mb2" type="reset" ><a  style="color: #FFFFFF">重置</a></button>
        </form>
    </div>
</div>


<script src='js/jquery.min.js'></script>
<script src='js/TweenMax.min.js'></script>
<script src='js/three.min.js'></script>
<script src="js/index.js"></script>
<script type="text/javascript" src="js/jquery_md5/jquery.js"></script>
<script type="text/javascript" src="js/jquery_md5/jquery.md5.js"></script>

<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
</div>

<script type="text/javascript">
    $(function() {
        $("#btn").click(function () {
            var md5 = $("#password");
            md5.val($.md5(md5.val()));
            var employee_id = $("#employee_id");
            $.ajax({
                type: "POST",
                dataType: "text/json",
                url: "login",
                async: false,
                data:{
                    employee_id:employee_id.val(),
                    password:md5.val()
                },
                success:function (data) {
                    json = JSON.parse(data);
                    if(json.success == '1' && json.user_id == employee_id.val()){
                        window.location.href="management?employee_id="+ json.user_id;
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