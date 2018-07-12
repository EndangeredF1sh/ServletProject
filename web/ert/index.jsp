<%@ page language="java" contentType="text/html; charset=utf-8"

         pageEncoding="utf-8"%>
<%
    String EID = (String)request.getAttribute("EID");
    String path = request.getContextPath() + "/ert/";
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
    request.setAttribute("path", basePath);
%>
<!doctype html>
<html lang="ch">

<head>
    <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="左右结构项目，属于大人员的社交工具">
    <meta name="keywords" content="左右结构项目 社交 占座 ">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="format-detection" content="telephone=no">
    <title><%=EID%> -- <%=basePath%></title>
    <base href="<%=basePath %>">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>
        $(function() {
            $(".meun-item").click(function() {
                $(".meun-item").removeClass("meun-item-active");
                $(this).addClass("meun-item-active");
                var itmeObj = $(".meun-item").find("img");
                itmeObj.each(function() {
                    var items = $(this).attr("src");
                    items = items.replace("_grey.png", ".png");
                    items = items.replace(".png", "_grey.png")
                    $(this).attr("src", items);
                });
                var attrObj = $(this).find("img").attr("src");
                ;
                attrObj = attrObj.replace("_grey.png", ".png");
                $(this).find("img").attr("src", attrObj);
            });
            $("#topAD").click(function() {
                $("#topA").toggleClass(" glyphicon-triangle-right");
                $("#topA").toggleClass(" glyphicon-triangle-bottom");
            });
            $("#topBD").click(function() {
                $("#topB").toggleClass(" glyphicon-triangle-right");
                $("#topB").toggleClass(" glyphicon-triangle-bottom");
            });
            $("#topCD").click(function() {
                $("#topC").toggleClass(" glyphicon-triangle-right");
                $("#topC").toggleClass(" glyphicon-triangle-bottom");
            });
            $(".toggle-btn").click(function() {
                $("#leftMeun").toggleClass("show");
                $("#rightContent").toggleClass("pd0px");
            })
        })

    </script>
    <!--[if lt IE 9]>
    <script src="js/html5shiv.min.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/slide.css" />
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="css/flat-ui.min.css" />
    <link rel="stylesheet" type="text/css" href="css/jquery.nouislider.css">
    <link rel="stylesheet" type="text/css" href="css/common.css" />
</head>

<body>
<div id="wrap">
    <!-- 左侧菜单栏目块 -->
    <div class="leftMeun" id="leftMeun">
        <div id="logoDiv">
            <p id="logoP"><img id="logo" alt="左右结构项目" src="images/logo.png"></p>
            <p id="userName">未登录</p>
        </div>
        <div id="personInfor">
            <p id="userDepart">部门</p>
            <p id="userPost">职位</p>
            <p><a href="http://www.？？？.com/" target="_blank" title="？？？">邮箱</a> </p>

            <p><a href="../登录页面/login.html target="_blank" title="？？？">退出登录</a> </p>
        </div>
        <div class="meun-title">信息中心</div>
        <div class="meun-item meun-item-active" href="#geren" aria-controls="geren" role="tab" data-toggle="tab"><img src="images/icon_source.png">个人信息</div>
        <div class="meun-item" href="#yuangong" aria-controls="yuangong" role="tab" data-toggle="tab"><img src="images/icon_chara_grey.png">员工信息</div>
        <div class="meun-item" href="#baobiao" aria-controls="baobiao" role="tab" data-toggle="tab"><img src="images/icon_user_grey.png">报表信息</div>
        <div class="meun-item" href="#xiugai" aria-controls="xiugai" role="tab" data-toggle="tab"><img src="images/icon_change_grey.png">修改密码</div>
        <div class="meun-title">调动管理</div>
        <div class="meun-item" href="#bumen" aria-controls="bumen" role="tab" data-toggle="tab"><img src="images/icon_house_grey.png">部门调动</div>
        <div class="meun-item" href="#gangwei" aria-controls="gangwei" role="tab" data-toggle="tab"><img src="images/icon_rule_grey.png">岗位调动</div>
        <div class="meun-item" href="#shixi" aria-controls="shixi" role="tab" data-toggle="tab"><img src="images/icon_card_grey.png">实习调动</div>
        <div class="meun-item" href="#diaodong" aria-controls="diaodong" role="tab" data-toggle="tab"><img src="images/icon_char_grey.png">调动实况</div>
    </div>
    <!-- 右侧具体内容栏目 -->
    <div id="rightContent">
        <a class="toggle-btn" id="nimei">
            <i class="glyphicon glyphicon-align-justify"></i>
        </a>
        <!-- Tab panes -->
        <div class="tab-content">
            <!-- 个人信息模块 -->
            <div role="tabpanel" class="tab-pane active" id="geren">
                <div class="check-div form-inline">
                    <button class="btn btn-yellow btn-xs" data-toggle="modal" data-target="#addSource">切换账号</button>
                    <div id="xiugaiQAQ" class="btn btn-yellow btn-xs"  href="#xiugaixinxi" role="tab" aria-controls="xiugaixinxi" data-toggle="tab">修改信息</div>
                    <span style="font-size: 2.0em;padding-left:50px">西硬人力资源管理系统</span>
                </div>
                <div class="data-div">
                    <div class="row tableHeader">
                        <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 ">
                            我的信息
                        </div>
                    </div>
                    <div class="tablebody">
                        <div style="padding: 30px 0;background-color: #fff; text-align: left;width: 450px;margin: 50px 20px auto;display: inline-block;border-radius: 10px;margin-top: 20px;position: relative;">
                            <form class="form-horizontal">
                                <img id="logo" class="right " style="margin-right: 10px" src="images/logo.png" >
                                <p id="UserID"style="margin-left: 30px;">账户ID：</p>
                                <p id="Username"style="margin-left: 30px;">姓名：</p>
                                <p id="Usersex"style="margin-left: 30px;">性别：</p>
                                <p id="Userbirthday" style="margin-left: 30px;">出生日期：</p>
                                <p id="Userphone" style="margin-left: 30px;">电话号码：</p>
                                <p>
                                    <a id="Useremail" herf="#" target="_blank" style="margin-left: 30px;">email：</a></p>

                            </form>
                        </div>
                        <div id="you"style="padding: 30px 0;background-color: #fff; text-align: left;width: 450px;margin: 50px 20px;display: inline-block;border-radius: 10px;margin-top: 20px;position: relative; ">
                            <form class="form-horizontal">
                                <p id="Userposition" style="margin-left: 30px;">岗位：</p>
                                <p id="Userdepartment" style="margin-left: 30px;">部门：</p>
                                <p id="Usereducation_level" style="margin-left: 30px;">教育程度：</p>
                                <p id="Usersalary"style="margin-left: 30px;">薪水：</p>
                                <p id="Useraddress"style="margin-left: 30px;">家庭地址：</p>
                                <p id="Userhire_date" style="margin-left: 30px;">入职时间：</p>
                            </form>
                        </div>
                    </div>
                </div>
                <!--页码块-->

                <!--弹出窗口 添加资源-->
                <div class="modal fade" id="addSource" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">切换用户</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">姓名：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="请输入姓名">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="sPassword" class="col-xs-3 control-label">密码：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sKnot" placeholder="请输入密码">
                                            </div>
                                        </div>

                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-xs btn-green">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
            </div>
            <!-- 修改信息模块 -->
            <div role="tabpanel" class="tab-pane " id="xiugaixinxi">
                <div class="check-div form-inline">
                    <button class="btn btn-yellow btn-xs" data-toggle="modal" data-target="#addxinxi">提交信息</button>

                    <span style="font-size: 2.0em;padding-left:50px">西硬人力资源管理系统</span>
                </div>
                <div class="data-div">
                    <div class="row tableHeader">
                        <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 ">
                            我的信息
                        </div>
                    </div>
                    <div class="tablebody">
                        <div style="padding: 30px 0;background-color: #fff; text-align: left;width: 450px;margin: 50px 20px auto;display: inline-block;border-radius: 10px;margin-top: 20px;position: relative;">
                            <form class="form-horizontal">
                                <img id="logo" class="right " style="margin-right: 10px" src="images/logo.png" >
                                <p id="userID"style="margin-left: 30px;">账户ID：</p>
                                <p><span style="margin-left: 30px;margin-right: 5px;">姓名：</span><input style="width:190px;" id="username" ><p>
                                <p><span style="margin-left: 30px;margin-right: 5px;">性别：</span>
                                    <input id="nan" type="radio" name="radio" value="1">男
                                    <input id="nv" style="margin-left: 20px;"type="radio" name="radio" value="2">女</p>
                                <p id="userbirthday" style="margin-left: 30px;">出生日期：</p>
                                <p><span style="margin-left: 30px;margin-right: 5px;">电话号码：</span><input style="width:160px;" id="userphone" ><p>
                                <p><span style="margin-left: 30px;margin-right: 5px;">email：</span><input style="width:183px;"id="useremail" ><p>
                            </form>
                        </div>
                        <div id="you"style="padding: 30px 0;background-color: #fff; text-align: left;width: 450px;margin: 50px 20px;display: inline-block;border-radius: 10px;margin-top: 20px;position: relative; ">
                            <form class="form-horizontal">
                                <p id="userposition" style="margin-left: 30px;">岗位：</p>
                                <p id="userdepartment" style="margin-left: 30px;">部门：</p>
                                <p><span style="margin-left: 30px;margin-right: 5px;">教育程度：</span><input style="width:230px;" id="usereducation_level" ><p>
                                <p id="usersalary"style="margin-left: 30px;">薪水：</p>
                                <p><span style="margin-left: 30px;margin-right: 5px;">家庭地址：</span><input style="width:250px;" id="useraddress" ><p>
                                <p id="userhire_date" style="margin-left: 30px;">入职时间：</p>
                            </form>
                        </div>
                    </div>
                </div>
                <!--页码块-->

                <!--弹出窗口 添加资源-->
                <div class="modal fade" id="addSource" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">切换用户</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">姓名：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="请输入姓名">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="sPassword" class="col-xs-3 control-label">密码：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sKnot" placeholder="请输入密码">
                                            </div>
                                        </div>

                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-xs btn-green">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
            </div>
            <!-- 权限管理模块 -->
            <div role="tabpanel" class="tab-pane" id="yuangong">
                <div class="check-div form-inline">
                    <div class="col-xs-3">
                        <button class="btn btn-yellow btn-xs" data-toggle="modal" data-target="#addUser">添加用户 </button>
                    </div>
                    <div class="col-xs-4">
                        <input type="text" class="form-control input-sm" placeholder="输入文字搜索">
                        <button class="btn btn-white btn-xs ">查 询 </button>
                    </div>
                    <div class="col-lg-3 col-lg-offset-2 col-xs-4" style=" padding-right: 40px;text-align: right;">
                        <label for="paixu">排序:&nbsp;</label>
                        <select class=" form-control">
                            <option>地区</option>
                            <option>地区</option>
                            <option>班期</option>
                            <option>性别</option>
                            <option>年龄</option>
                            <option>份数</option>
                        </select>
                    </div>
                </div>
                <div class="data-div">
                    <div class="row tableHeader">
                        <div class="col-xs-2 ">
                            用户名
                        </div>
                        <div class="col-xs-2">
                            地区
                        </div>
                        <div class="col-xs-2">
                            真实姓名
                        </div>
                        <div class="col-xs-2">
                            电话
                        </div>
                        <div class="col-xs-2">
                            状态
                        </div>
                        <div class="col-xs-2">
                            操作
                        </div>
                    </div>
                    <div class="tablebody">

                        <div class="row">
                            <div class="col-xs-2 ">
                                goodmoning
                            </div>
                            <div class="col-xs-2">
                                国际关系地区
                            </div>
                            <div class="col-xs-2">
                                李豆豆
                            </div>
                            <div class="col-xs-2">
                                13688889999
                            </div>
                            <div class="col-xs-2">
                                状态
                            </div>
                            <div class="col-xs-2">
                                <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#reviseUser">修改</button>
                                <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteUser">删除</button>
                            </div>
                        </div>

                    </div>
                    <div class="tablebody">

                        <div class="row">
                            <div class="col-xs-2 ">
                                goodmoning
                            </div>
                            <div class="col-xs-2">
                                国际关系地区
                            </div>
                            <div class="col-xs-2">
                                李豆豆
                            </div>
                            <div class="col-xs-2">
                                13688889999
                            </div>
                            <div class="col-xs-2">
                                状态
                            </div>
                            <div class="col-xs-2">
                                <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#reviseUser">修改</button>
                                <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteUser">删除</button>
                            </div>
                        </div>

                    </div>
                    <div class="tablebody">

                        <div class="row">
                            <div class="col-xs-2 ">
                                goodmoning
                            </div>
                            <div class="col-xs-2">
                                国际关系地区
                            </div>
                            <div class="col-xs-2">
                                李豆豆
                            </div>
                            <div class="col-xs-2">
                                13688889999
                            </div>
                            <div class="col-xs-2">
                                状态
                            </div>
                            <div class="col-xs-2">
                                <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#reviseUser">修改</button>
                                <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteUser">删除</button>
                            </div>
                        </div>

                    </div>
                    <div class="tablebody">

                        <div class="row">
                            <div class="col-xs-2 ">
                                goodmoning
                            </div>
                            <div class="col-xs-2">
                                国际关系地区
                            </div>
                            <div class="col-xs-2">
                                李豆豆
                            </div>
                            <div class="col-xs-2">
                                13688889999
                            </div>
                            <div class="col-xs-2">
                                状态
                            </div>
                            <div class="col-xs-2">
                                <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#reviseUser">修改</button>
                                <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteUser">删除</button>
                            </div>
                        </div>

                    </div>


                </div>
                <!--页码块-->
                <footer class="footer">
                    <ul class="pagination">
                        <li>
                            <select>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                            </select>
                            页
                        </li>
                        <li class="gray">
                            共20页
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-left">
                            </i>
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-right">
                            </i>
                        </li>
                    </ul>
                </footer>
                <!--增加权限弹出窗口-->
                <div class="modal fade" id="addChar" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">添加权限</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">权限名：</label>
                                            <div class="col-xs-6 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sLink" class="col-xs-3 control-label">描述：</label>
                                            <div class="col-xs-6 ">
                                                <textarea class="form-control input-sm duiqi"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sOrd" class="col-xs-3 control-label">系统资源：</label>
                                            <div class="col-xs-6">
                                                <input type="" class="form-control input-sm duiqi" id="sOrd" placeholder="">
                                            </div>
                                        </div>

                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

                <!--修改权限弹出窗口-->
                <div class="modal fade" id="changeChar" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">修改权限</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">权限名：</label>
                                            <div class="col-xs-6 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sLink" class="col-xs-3 control-label">描述：</label>
                                            <div class="col-xs-6 ">
                                                <textarea class="form-control input-sm duiqi"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sOrd" class="col-xs-3 control-label">系统资源：</label>
                                            <div class="col-xs-6">
                                                <input type="" class="form-control input-sm duiqi" id="sOrd" placeholder="">
                                            </div>
                                        </div>

                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

                <!--弹出删除权限警告窗口-->
                <div class="modal fade" id="deleteChar" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    确定要删除该权限？删除后不可恢复！
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-danger">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

            </div>
            <!--用户管理模块-->
            <div role="tabpanel" class="tab-pane" id="baobiao">
                <div class="check-div form-inline">
                    <div class="col-xs-3">
                        <button class="btn btn-yellow btn-xs" data-toggle="modal" data-target="#addUser">添加用户 </button>
                    </div>
                    <div class="col-xs-4">
                        <input type="text" class="form-control input-sm" placeholder="输入文字搜索">
                        <button class="btn btn-white btn-xs ">查 询 </button>
                    </div>
                    <div class="col-lg-3 col-lg-offset-2 col-xs-4" style=" padding-right: 40px;text-align: right;">
                        <label for="paixu">排序:&nbsp;</label>
                        <select class=" form-control">
                            <option>地区</option>
                            <option>地区</option>
                            <option>班期</option>
                            <option>性别</option>
                            <option>年龄</option>
                            <option>份数</option>
                        </select>
                    </div>
                </div>
                <div class="data-div">
                    <div class="row tableHeader">
                        <div class="col-xs-2 ">
                            用户名
                        </div>
                        <div class="col-xs-2">
                            地区
                        </div>
                        <div class="col-xs-2">
                            真实姓名
                        </div>
                        <div class="col-xs-2">
                            电话
                        </div>
                        <div class="col-xs-2">
                            状态
                        </div>
                        <div class="col-xs-2">
                            操作
                        </div>
                    </div>
                    <div class="tablebody">

                        <div class="row">
                            <div class="col-xs-2 ">
                                goodmoning
                            </div>
                            <div class="col-xs-2">
                                国际关系地区
                            </div>
                            <div class="col-xs-2">
                                李豆豆
                            </div>
                            <div class="col-xs-2">
                                13688889999
                            </div>
                            <div class="col-xs-2">
                                状态
                            </div>
                            <div class="col-xs-2">
                                <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#reviseUser">修改</button>
                                <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteUser">删除</button>
                            </div>
                        </div>

                    </div>

                </div>
                <!--页码块-->
                <footer class="footer">
                    <ul class="pagination">
                        <li>
                            <select>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                            </select>
                            页
                        </li>
                        <li class="gray">
                            共20页
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-left">
                            </i>
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-right">
                            </i>
                        </li>
                    </ul>
                </footer>

                <!--弹出添加用户窗口-->
                <div class="modal fade" id="addUser" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">添加用户</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">用户名：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sLink" class="col-xs-3 control-label">真实姓名：</label>
                                            <div class="col-xs-8 ">
                                                <input type="" class="form-control input-sm duiqi" id="sLink" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sOrd" class="col-xs-3 control-label">电子邮箱：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sOrd" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">电话：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sKnot" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">地区：</label>
                                            <div class="col-xs-8">
                                                <select class=" form-control select-duiqi">
                                                    <option value="">国际关系地区</option>
                                                    <option value="">北京大学</option>
                                                    <option value="">天津大学</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">权限：</label>
                                            <div class="col-xs-8">
                                                <select class=" form-control select-duiqi">
                                                    <option value="">管理员</option>
                                                    <option value="">普通用户</option>
                                                    <option value="">游客</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="situation" class="col-xs-3 control-label">状态：</label>
                                            <div class="col-xs-8">
                                                <label class="control-label" for="anniu">
                                                    <input type="radio" name="situation" id="normal">正常</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <label class="control-label" for="meun">
                                                    <input type="radio" name="situation" id="forbid"> 禁用</label>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

                <!--弹出修改用户窗口-->
                <div class="modal fade" id="reviseUser" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">修改用户</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">用户名：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sLink" class="col-xs-3 control-label">真实姓名：</label>
                                            <div class="col-xs-8 ">
                                                <input type="" class="form-control input-sm duiqi" id="sLink" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sOrd" class="col-xs-3 control-label">电子邮箱：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sOrd" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">电话：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sKnot" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">地区：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sKnot" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">权限：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sKnot" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="situation" class="col-xs-3 control-label">状态：</label>
                                            <div class="col-xs-8">
                                                <label class="control-label" for="anniu">
                                                    <input type="radio" name="situation" id="normal">正常</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <label class="control-label" for="meun">
                                                    <input type="radio" name="situation" id="forbid"> 禁用</label>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

                <!--弹出删除用户警告窗口-->
                <div class="modal fade" id="deleteUser" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    确定要删除该用户？删除后不可恢复！
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn  btn-xs btn-danger">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

            </div>
            <!-- 修改密码模块 -->
            <div role="tabpanel" class="tab-pane" id="xiugai">
                <div class="check-div">
                    原始密码为12312313
                </div>
                <div style="padding: 50px 0;margin-top: 50px;background-color: #fff; text-align: right;width: 420px;margin: 50px auto;">
                    <form class="form-horizontal">
                        <div class="form-group">
                            <label for="sKnot" class="col-xs-4 control-label">原密码：</label>
                            <div class="col-xs-5">
                                <input type="" class="form-control input-sm duiqi" id="sKnot" placeholder="" style="margin-top: 7px;">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="sKnot" class="col-xs-4 control-label">新密码：</label>
                            <div class="col-xs-5">
                                <input type="" class="form-control input-sm duiqi" id="sKnot" placeholder="" style="margin-top: 7px;">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="sKnot" class="col-xs-4 control-label">重复密码：</label>
                            <div class="col-xs-5">
                                <input type="" class="form-control input-sm duiqi" id="sKnot" placeholder="" style="margin-top: 7px;">
                            </div>
                        </div>
                        <div class="form-group text-right">
                            <div class="col-xs-offset-4 col-xs-5" style="margin-left: 169px;">
                                <button type="reset" class="btn btn-xs btn-white">取 消</button>
                                <button type="submit" class="btn btn-xs btn-green">保存</button>
                            </div>
                        </div>
                    </form>
                </div>

            </div>
            <!--地区管理模块-->
            <div role="tabpanel" class="tab-pane" id="bumen">

                <div class="check-div form-inline">
                    <div class="col-xs-3">
                        <button class="btn btn-yellow btn-xs" data-toggle="modal" data-target="#addSchool">添加地区 </button>
                    </div>
                    <div class="col-lg-4 col-xs-5">
                        <input type="text" class=" form-control input-sm " placeholder="输入文字搜索">
                        <button class="btn btn-white btn-xs ">查 询 </button>
                    </div>
                    <div class="col-lg-3 col-lg-offset-1 col-xs-3" style="padding-right: 40px;text-align: right;float: right;">
                        <label for="paixu">排序:&nbsp;</label>
                        <select class="form-control">
                            <option>地区</option>
                            <option>排名</option>
                        </select>
                    </div>
                </div>
                <div class="data-div">
                    <div class="row tableHeader">
                        <div class="col-xs-1 ">
                            编码
                        </div>
                        <div class="col-xs-2 ">
                            地区
                        </div>
                        <div class="col-xs-1">
                            经度
                        </div>
                        <div class="col-xs-1">
                            维度
                        </div>
                        <div class="col-xs-2">
                            建筑信息
                        </div>
                        <div class="col-xs-2">
                            人员列表
                        </div>
                        <div class="col-xs-2">
                            操作
                        </div>
                    </div>
                    <div class="tablebody">

                        <div class="row">
                            <div class="col-xs-1 ">
                                1
                            </div>
                            <div class="col-xs-2">
                                国际关系地区
                            </div>
                            <div class="col-xs-1">
                                45.0
                            </div>
                            <div class="col-xs-1">
                                95.90
                            </div>
                            <div class="col-xs-2">
                                <a class="linkCcc">查看</a>
                            </div>
                            <div class="col-xs-2">
                                <a class="linkCcc">查看</a>
                            </div>
                            <div class="col-xs-2">
                                <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#reviseSchool">修改</button>
                                <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteSchool">删除</button>
                            </div>
                        </div>

                    </div>

                </div>
                <!--页码块-->
                <footer class="footer">
                    <ul class="pagination">
                        <li>
                            <select>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                            </select>
                            页
                        </li>
                        <li class="gray">
                            共20页
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-left">
                            </i>
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-right">
                            </i>
                        </li>
                    </ul>
                </footer>

                <!--弹出添加用户窗口-->
                <div class="modal fade" id="addSchool" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">添加地区</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">地区名称：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">经度：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sLink" class="col-xs-3 control-label">纬度：</label>
                                            <div class="col-xs-8 ">
                                                <input type="" class="form-control input-sm duiqi" id="sLink" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sOrd" class="col-xs-3 control-label">简称：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sOrd" placeholder="">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

                <!--弹出修改用户窗口-->
                <div class="modal fade" id="reviseSchool" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">修改地区</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">地区名称：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">经度：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sLink" class="col-xs-3 control-label">纬度：</label>
                                            <div class="col-xs-8 ">
                                                <input type="" class="form-control input-sm duiqi" id="sLink" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sOrd" class="col-xs-3 control-label">简称：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sOrd" placeholder="">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

                <!--弹出删除用户警告窗口-->
                <div class="modal fade" id="deleteSchool" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    确定要删除该地区？删除后不可恢复！
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-danger">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

            </div>
            <!--规则管理模块-->
            <div role="tabpanel" class="tab-pane" id="gangwei" style="padding-top: 50px;">
                <div class="data-div">
                    <div class="tablebody col-lg-10 col-lg-offset-1">
                        <div class="row">
                            <div class="col-xs-3" style="padding-right: 0;">签到超时时间</div>
                            <div class="col-xs-7 expand-col">
                                <div class="slider-minmax1">
                                </div>
                                <div class="row top100">
                                    <span class="left">0</span>
                                    <span class="right">30</span>
                                </div>
                            </div>
                            <div class="col-xs-2">
                                <button class="btn btn-xs btn-white">默认值</button>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-3" style="padding-right: 0;">抢座超时时间</div>
                            <div class="col-xs-7 expand-col">
                                <div class="slider-minmax2">
                                </div>
                                <div class="row top100">
                                    <span class="left">0</span>
                                    <span class="right">15</span>
                                </div>
                            </div>
                            <div class="col-xs-2">
                                <button class="btn btn-xs btn-white">默认值</button>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-3" style="padding-right: 0;">临时离开超时时间</div>
                            <div class="col-xs-7 expand-col">
                                <div class="slider-minmax3">
                                </div>
                                <div class="row top100">
                                    <span class="left">0</span>
                                    <span class="right">60</span>
                                </div>
                            </div>
                            <div class="col-xs-2">
                                <button class="btn btn-xs btn-white">默认值</button>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-3" style="padding-right: 0;">违约次数冻结上限</div>
                            <div class="col-xs-7 expand-col">
                                <div class="slider-minmax4">
                                </div>
                                <div class="row top100">
                                    <span class="left">0</span>
                                    <span class="right">100</span>
                                </div>
                            </div>
                            <div class="col-xs-2">
                                <button class="btn btn-xs btn-white">默认值</button>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-3" style="padding-right: 0;">可预约天数</div>
                            <div class="col-xs-7 expand-col">
                                <div class="slider-minmax5">
                                </div>
                                <div class="row top100">
                                    <span class="left">0</span>
                                    <span class="right">7</span>
                                </div>
                            </div>
                            <div class="col-xs-2">
                                <button class="btn btn-xs btn-white">默认值</button>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-3" style="padding-right: 0;">最大未完成预约数</div>
                            <div class="col-xs-7 expand-col">
                                <div class="slider-minmax6">
                                </div>
                                <div class="row top100">
                                    <span class="left">0</span>
                                    <span class="right">10</span>
                                </div>
                            </div>
                            <div class="col-xs-2">
                                <button class="btn btn-xs btn-white">默认值</button>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                            <button type="button" class="btn btn-xs btn-green">保 存</button>
                        </div>
                    </div>
                </div>
            </div>
            <!--时间段管理模块-->
            <div role="tabpanel" class="tab-pane" id="baobiao">
                <div class="check-div form-inline">
                    <div class="col-xs-3">
                        <button class="btn btn-yellow btn-xs" data-toggle="modal" data-target="#addUser">添加用户 </button>
                    </div>
                    <div class="col-xs-4">
                        <input type="text" class="form-control input-sm" placeholder="输入文字搜索">
                        <button class="btn btn-white btn-xs ">查 询 </button>
                    </div>
                    <div class="col-lg-3 col-lg-offset-2 col-xs-4" style=" padding-right: 40px;text-align: right;">
                        <label for="paixu">排序:&nbsp;</label>
                        <select class=" form-control">
                            <option>地区</option>
                            <option>地区</option>
                            <option>班期</option>
                            <option>性别</option>
                            <option>年龄</option>
                            <option>份数</option>
                        </select>
                    </div>
                </div>
                <div class="data-div">
                    <div class="row tableHeader">
                        <div class="col-xs-2 ">
                            用户名
                        </div>
                        <div class="col-xs-2">
                            地区
                        </div>
                        <div class="col-xs-2">
                            真实姓名
                        </div>
                        <div class="col-xs-2">
                            电话
                        </div>
                        <div class="col-xs-2">
                            状态
                        </div>
                        <div class="col-xs-2">
                            操作
                        </div>
                    </div>
                    <div class="tablebody">

                        <div class="row">
                            <div class="col-xs-2 ">
                                goodmoning
                            </div>
                            <div class="col-xs-2">
                                国际关系地区
                            </div>
                            <div class="col-xs-2">
                                李豆豆
                            </div>
                            <div class="col-xs-2">
                                13688889999
                            </div>
                            <div class="col-xs-2">
                                状态
                            </div>
                            <div class="col-xs-2">
                                <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#reviseUser">修改</button>
                                <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteUser">删除</button>
                            </div>
                        </div>

                    </div>

                </div>
                <!--页码块-->
                <footer class="footer">
                    <ul class="pagination">
                        <li>
                            <select>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                            </select>
                            页
                        </li>
                        <li class="gray">
                            共20页
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-left">
                            </i>
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-right">
                            </i>
                        </li>
                    </ul>
                </footer>

                <!--弹出增加时间段窗口-->
                <div class="modal fade" id="addTime" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">时间段设置</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">开始时间：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm" id="sName" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">结束时间：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm" id="sName" placeholder="">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

                <!--修改增加时间段窗口-->
                <div class="modal fade" id="changeTime" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">修改时间段</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">开始时间：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">结束时间：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-green btn-xs">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->
                <!--弹出删除时间段警告窗口-->
                <div class="modal fade" id="deleteTime" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    确定要删除该时间段？
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-danger btn-xs">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

            </div>
            <!--座位管理模块-->
            <div role="tabpanel" class="tab-pane" id="diaodong">
                <div class="check-div form-inline">
                    <div class="col-xs-3">
                        <button class="btn btn-yellow btn-xs" data-toggle="modal" data-target="#addUser">添加用户 </button>
                    </div>
                    <div class="col-xs-4">
                        <input type="text" class="form-control input-sm" placeholder="输入文字搜索">
                        <button class="btn btn-white btn-xs ">查 询 </button>
                    </div>
                    <div class="col-lg-3 col-lg-offset-2 col-xs-4" style=" padding-right: 40px;text-align: right;">
                        <label for="paixu">排序:&nbsp;</label>
                        <select class=" form-control">
                            <option>地区</option>
                            <option>地区</option>
                            <option>班期</option>
                            <option>性别</option>
                            <option>年龄</option>
                            <option>份数</option>
                        </select>
                    </div>
                </div>
                <div class="data-div">
                    <div class="row tableHeader">
                        <div class="col-xs-2 ">
                            用户名
                        </div>
                        <div class="col-xs-2">
                            地区
                        </div>
                        <div class="col-xs-2">
                            真实姓名
                        </div>
                        <div class="col-xs-2">
                            电话
                        </div>
                        <div class="col-xs-2">
                            状态
                        </div>
                        <div class="col-xs-2">
                            操作
                        </div>
                    </div>
                    <div class="tablebody">

                        <div class="row">
                            <div class="col-xs-2 ">
                                goodmoning
                            </div>
                            <div class="col-xs-2">
                                国际关系地区
                            </div>
                            <div class="col-xs-2">
                                李豆豆
                            </div>
                            <div class="col-xs-2">
                                13688889999
                            </div>
                            <div class="col-xs-2">
                                状态
                            </div>
                            <div class="col-xs-2">
                                <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#reviseUser">修改</button>
                                <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteUser">删除</button>
                            </div>
                        </div>

                    </div>

                </div>
                <!--页码块-->
                <footer class="footer">
                    <ul class="pagination">
                        <li>
                            <select>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                            </select>
                            页
                        </li>
                        <li class="gray">
                            共20页
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-left">
                            </i>
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-right">
                            </i>
                        </li>
                    </ul>
                </footer>

                <!--弹出添加楼宇窗口-->
                <div class="modal fade" id="addBuilding" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">添加楼宇</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">楼层：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sLink" class="col-xs-3 control-label">区域：</label>
                                            <div class="col-xs-8 ">
                                                <input type="" class="form-control input-sm duiqi" id="sLink" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sOrd" class="col-xs-3 control-label">座位数：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sOrd" placeholder="">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

                <!--弹出修改用户窗口-->
                <div class="modal fade" id="reviseUser" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">修改用户</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">用户名：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm" id="sName" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sLink" class="col-xs-3 control-label">真实姓名：</label>
                                            <div class="col-xs-8 ">
                                                <input type="" class="form-control input-sm" id="sLink" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sOrd" class="col-xs-3 control-label">电子邮箱：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm" id="sOrd" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">电话：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm" id="sKnot" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">地区：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm" id="sKnot" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">权限：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm" id="sKnot" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="situation" class="col-xs-3 control-label">状态：</label>
                                            <div class="col-xs-8">
                                                <label class="control-label" for="anniu">
                                                    <input type="radio" name="situation" id="normal">正常</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <label class="control-label" for="meun">
                                                    <input type="radio" name="situation" id="forbid"> 禁用</label>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

                <!--弹出删除用户警告窗口-->
                <div class="modal fade" id="deleteUser" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    确定要删除该用户？删除后不可恢复！
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-green btn-xs">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->
            </div>
            <!--座位详情模块-->
            <div role="tabpanel" class="tab-pane" id="sitDetail">
                <div class="check-div form-inline">
                    <span href="#diaodong" aria-controls="diaodong" role="tab" data-toggle="tab" style="cursor: pointer;"><span class="glyphicon glyphicon glyphicon-chevron-left"></span>&nbsp;&nbsp;返回上一页</span>
                </div>
                <div class="data-div">
                    <div class="row tableHeader">
                        <div class="col-xs-6 ">
                            座位编码
                        </div>
                        <div class="col-xs-6 ">
                            座位名称
                        </div>

                    </div>
                    <div class="tablebody">

                        <div class="row">
                            <div class="col-xs-6 ">
                                sad2345fas345533
                            </div>
                            <div class="col-xs-6">
                                王座
                            </div>

                        </div>

                    </div>

                </div>
                <!--页码块-->
                <footer class="footer">
                    <ul class="pagination">
                        <li>
                            <select>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                            </select>
                            页
                        </li>
                        <li class="gray">
                            共20页
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-left">
                            </i>
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-right">
                            </i>
                        </li>
                    </ul>
                </footer>

            </div>
            <!--人员管理模块-->
            <div role="tabpanel" class="tab-pane" id="shixi">
                <div class="check-div form-inline">
                    <div class="col-xs-5">
                        <input type="text" class=" form-control input-sm" placeholder="输入文字搜索" style="	!height: 40px!important;">
                        <button class="btn btn-white btn-xs ">查 询 </button>
                    </div>
                    <div class="col-xs-4 col-lg-4  col-md-5" style="padding-right: 40px;text-align: right;float: right;">
                        <label for="daoru">导入人员信息表:&nbsp;</label>
                        <button class="btn btn-white btn-xs " id="daoru">选取文件 </button>
                        <button class="btn btn-white btn-xs ">导入 </button>
                    </div>

                </div>
                <div class="data-div">
                    <div class="row tableHeader">
                        <div class="col-xs-2 ">
                            学号
                        </div>
                        <div class="col-xs-1 ">
                            姓名
                        </div>
                        <div class="col-xs-2">
                            院系
                        </div>
                        <div class="col-xs-2">
                            年年
                        </div>
                        <div class="col-xs-2 ">
                            学习时长
                        </div>
                        <div class="col-xs-2">
                            违约次数
                        </div>
                        <div class="col-xs-1">
                            操作
                        </div>
                    </div>
                    <div class="tablebody">

                        <div class="row">
                            <div class="col-xs-2 ">
                                6426398978
                            </div>
                            <div class="col-xs-1">
                                邓超
                            </div>
                            <div class="col-xs-2">
                                计算机地区
                            </div>
                            <div class="col-xs-2">
                                2013年
                            </div>
                            <div class="col-xs-2">
                                15
                            </div>
                            <div class="col-xs-2">
                                2
                            </div>
                            <div class="col-xs-1">
                                <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteObey">清除违约</button>
                            </div>
                        </div>

                    </div>

                </div>
                <!--页码块-->
                <footer class="footer">
                    <ul class="pagination">
                        <li>
                            <select>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                            </select>
                            页
                        </li>
                        <li class="gray">
                            共20页
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-left">
                            </i>
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-right">
                            </i>
                        </li>
                    </ul>
                </footer>

                <!--弹出删除违约记录警告窗口-->

                <div class="modal fade" id="deleteObey" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    确定要删除该违约记录？删除后不可恢复！
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-danger">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

            </div>
        </div>
    </div>
</div>
<!-- 滑块js -->
<!--	<script type="text/javascript">
        scale = function(btn, bar, title, unit) {
                this.btn = document.getElementById(btn);
                this.bar = document.getElementById(bar);
                this.title = document.getElementById(title);
                this.step = this.bar.getElementsByTagName("div")[0];
                this.unit = unit;
                this.init();
        };
        scale.prototype = {
                init: function() {
                        var f = this,
                                g = document,
                                b = window,
                                m = Math;
                        f.btn.onmousedown = function(e) {
                                var x = (e || b.event).clientX;
                                var l = this.offsetLeft;
//						var max = f.bar.offsetWidth - this.offsetWidth;
                                var max = f.bar.offsetWidth-20 ;
                                g.onmousemove = function(e) {
                                        var thisX = (e || b.event).clientX;
                                        var to = m.min(max, m.max(-2, l + (thisX - x)));
                                        f.btn.style.left = to+ 'px';
                                        f.ondrag(m.round(m.max(0, to / max) * 100), to);
                                        b.getSelection ? b.getSelection().removeAllRanges() : g.selection.empty();
                                };
                                g.onmouseup = new Function('this.onmousemove=null');
                        };
                },
                ondrag: function(pos, x) {
                        this.step.style.width = Math.max(0, x) +2+ 'px';
                        this.title.innerHTML = pos / 10 + this.unit + "";
                }
        }
        new scale('btn0', 'bar0', 'title0', "分钟");
        new scale('btn1', 'bar1', 'title1', "分钟");
        new scale('btn2', 'bar2', 'title2', "天");
        new scale('btn3', 'bar3', 'title3', "次");
</script>
-->
<script src="js/jquery.nouislider.js"></script>

<!-- this page specific inline scripts -->
<script>
    //min/max slider
    function huadong(my, unit, def, max) {
        $(my).noUiSlider({
            range: [0, max],
            start: [def],
            handles: 1,
            connect: 'upper',
            slide: function() {
                var val = Math.floor($(this).val());
                $(this).find(".noUi-handle").text(
                    val + unit
                );
                console.log($(this).find(".noUi-handle").parent().parent().html());
            },
            set: function() {
                var val = Math.floor($(this).val());
                $(this).find(".noUi-handle").text(
                    val + unit
                );
            }
        });
        $(my).val(def, true);
    }
    huadong('.slider-minmax1', "分钟", "5", 30);
    huadong('.slider-minmax2', "分钟", "6", 15);
    huadong('.slider-minmax3', "分钟", "10", 60);
    huadong('.slider-minmax4', "次", "2", 10);
    huadong('.slider-minmax5', "天", "3", 7);
    huadong('.slider-minmax6', "天", "8", 10);
</script>
<script type="text/javascript">
    var json = {
        "first_name": "文益",
        "last_name": "张",
        "department_name": "一班",
        "position_name": "小老",
        "email": "http://www.bejson.com/",
        "phone_number": "17854231491",
        "birthday": "1998/9/8",
        "address": "中国石油大学",
        "gender": "女",
        "idn":"1607020201",
        "education_level": "大学",
        "salary": "￥2000",
        "hire_date": "2001/1/1",
    }
    $("#userName").text("用戶 :"+json.last_name+json.first_name);
    $("#userDepart").text("部门："+json.department_name);
    $("#userPost").text("职位："+json.position_name);
    $("#emaill").attr("href",json.email);
    $("#userID").text("账户ID : "+json.idn);
    $("#UserID").text("账户ID : "+json.idn);
    $("#username").val(json.last_name+json.first_name);
    $("#Username").text("姓名 : "+json.last_name+json.first_name);
    $("#usersex").text("性别 : "+json.gender);
    $("#Usersex").text("性别 : "+json.gender);
    $("#userbirthday").text("出生日期 : "+json.birthday);
    $("#Userbirthday").text("出生日期 : "+json.birthday);
    $("#userphone").val(json.phone_number);
    $("#Userphone").text("电话号码 : "+json.phone_number);
    $("#useremail").val(json.email);
    $("#Useremail").text("email : "+json.email);
    $("#userposition").text("岗位 : "+json.position_name);
    $("#Userposition").text("岗位 : "+json.position_name);
    $("#userdepartment").text("部门 : "+json.department_name);
    $("#Userdepartment").text("部门 : "+json.department_name);
    $("#usereducation_level").text("学历 : "+json.education_level);
    $("#Usereducation_level").text("学历 : "+json.education_level);
    $("#useraddress").text("家庭地址 : "+json.address);
    $("#Useraddress").text("家庭地址 : "+json.address);
    $("#userhire_date").text("入职时间 : "+json.hire_date);
    $("#Userhire_date").text("入职时间 : "+json.hire_date);
    $("#usersalary").text("薪水 : "+json.salary);
    $("#Usersalary").text("薪水 : "+json.salary);
    $("#useremail").attr("href",json.email);
    $("#Usermail").attr("href",json.email);
    if(json.gender=='男')
    {
        $("#nan").attr("checked","checked");
    }
    else
    {$("#nv").attr("checked","checked");}

    // $(function() {
    //         $.ajax({
    //             type: "POST",
    //             dataType: "text/json",
    //             url: "indexServlet",
    //             async: false,
    //             success:function (data) {
    // json = JSON.parse(data);

    //})
    //})
</script>
</body>

</html>