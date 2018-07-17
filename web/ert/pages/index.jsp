<%@ page language="java" contentType="text/html; charset=utf-8"

              pageEncoding="utf-8"%>
<%
    String path = request.getContextPath() + "/ert/";
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
    request.setAttribute("path", basePath);
%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Bootstrap Admin Theme</title>

    <!-- Bootstrap Core CSS -->
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="../vendor/morrisjs/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <%--<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>--%>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link href="../css/style.css" rel="stylesheet" type="text/css">
    <link>
    <style>

        /*回到顶部*/
        .back-top
        {
            position: fixed;
            right: 15px;
            bottom: 15px;
            z-index: 9999;
            font-size: 25px;
            width: 40px;
            height: 40px;
            background-color: #adadad;
            color: #ffffff;
            cursor: pointer;
            border-radius: 2px;
            text-align: center;
        }
        .back-top:hover
        {
            background-color: #a3a3a3;
        }
        .change1{
            display: none;
            position: fixed;
        }
        .change2{
            display: block;
            position: fixed;
            top:150px;
            background-color: whitesmoke;
            padding: 20px;
        }
    </style>
</head>

<body>

<div class="back-top" style="display: none;" title="回到顶部">
    <i class="fa fa-angle-double-up"></i>
</div>
<div id="wrapper">

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            </button>

            <a class="navbar-brand" href="javascript:void(0);" onclick="window.location.href = window.location.href" style="display: block;">HUMAN RESOURCE MANAGEMENT SYSTEM</a>
            <button class="btn btn-yellow btn-ms" data-toggle="logoutbtn" id="logoutbtn" data-target="#addSource" style="position: absolute;top: 10px;z-index: 100;">注销</button>
            <!-- /.navbar-header -->


            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search" style="text-align: center;">
                            <p id="logoP"><img id="logo" alt="左右结构项目" src="../images/logo.png"></p>
                            <p id="userName">未登录</p>
                            <p id="userDepart">部门</p>
                            <p id="userPost">职位</p>
                            <p><a id="emaill" href="#" target="_blank" >邮箱</a> </p></li>
                        <!-- /input-group -->

                        <li>
                            <a href="#yuangongxinxi" data-toggle="tab"><i class="fa fa-table fa-fw"></i>添加员工</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-wrench fa-fw"></i>个人信息<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="#gerenxinxi" data-toggle="tab" id="infobtn">个人信息</a>
                                </li>
                                <li>
                                    <a href="#xiugaixinxi" data-toggle="tab">修改信息</a>
                                </li>
                                <li>
                                    <a href="#xiugaimima" data-toggle="tab">修改密码</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-files-o fa-fw"></i> 报表信息<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="#yuedubaobiao" data-toggle="tab">月度报表</a>
                                </li>
                                <li>
                                    <a href="#jidubaobiao" data-toggle="tab">季度报表</a>
                                </li>
                                <li>
                                    <a href="#niandubaobiao" data-toggle="tab">年度报表</a>
                                </li>
                                <li>
                                    <a href="#">报表图 <span class="fa arrow"></span></a>
                                    <ul class="nav nav-third-level">
                                        <li>
                                            <a href="#yuetu" data-toggle="tab" id="yuetubtn">月度报表图</a>
                                        </li>
                                        <li>
                                            <a href="#jitu" data-toggle="tab" id="jitubtn">季度报表图</a>
                                        </li>
                                        <li>
                                            <a href="#niantu" data-toggle="tab" id="niantubtn">年度报表图</a>
                                        </li>
                                    </ul>
                                    <!-- /.nav-third-level -->
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-edit fa-fw"></i>调动中心<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="#chaxundiaodong" data-toggle="tab">查询调动</a>
                                </li>
                                <li>
                                    <a href="#">发起调动<span class="fa arrow"></span></a>
                                    <ul class="nav nav-third-level">
                                        <li>
                                            <a href="#zhuanzhen" data-toggle="tab">转正调动</a>
                                        </li>
                                        <li>
                                            <a href="#lizhi" data-toggle="tab">离职调动</a>
                                        </li>
                                        <li>
                                            <a href="#zhigang" data-toggle="tab">值岗调动</a>
                                        </li>
                                    </ul>
                                    <!-- /.nav-third-level -->
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-sitemap fa-fw"></i>公司现状<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="#renyuan" data-toggle="tab" id="chartbtn">人员分布</a>
                                </li>
                                <li>
                                    <a href="#gongzi" data-toggle="tab" id="chart1btn">工资概况</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
    </nav>

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
                                    <input type="password" class="form-control input-sm duiqi" id="sKnot" placeholder="请输入密码">
                                </div>
                            </div>

                        </form>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-xs btn-xs btn-white" data-dismiss="modal">取 消</button>
                    <button type="button" id= "switchbtn" class="btn btn-xs btn-xs btn-green">保 存</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
</div>





<div id="page-wrapper" class="tab-content" >

    <div role="tabpanel" class="tab-pane fade " id="gongzi">
        <div id="chart1" style="height:600px"></div>
    </div>

    <div role="tabpanel" class="tab-pane fade " id="renyuan">
        <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
        <div id="main" style="height:600px"></div>

    </div>

    <div role="tabpanel" class="tab-pane fade " id="jitu">
        <div id="chart2" style="height:800px"></div>
    </div>


    <div role="tabpanel" class="tab-pane fade " id="yuetu">
        <div id="chart3" style="height:800px"></div>
    </div>



    <div role="tabpanel" class="tab-pane fade " id="niantu">
        <div id="chart4" style="height:800px"></div>
    </div>



    <div role="tabpanel" class="tab-pane fade " id="jidubaobiao">
        <ul id="innns" class="list-group">
            <li class="list-group-item">

            </li>

            <li id="chaa7" class="list-group-item"><span style="margin:47px;">入职人数</span><span style="margin-left:20px; margin-right:20px;">离职人数</span> <span style="margin:20px;">调动人数</span></li>
        </ul>
    </div>




    <div role="tabpanel" class="tab-pane fade " id="yuedubaobiao">
        <ul id="innnss" class="list-group">
            <li class="list-group-item">

            </li>

            <li id="chaa6" class="list-group-item"><span style="margin:47px;">入职人数</span><span style="margin-left:20px; margin-right:20px;">离职人数</span> <span style="margin:20px;">调动人数</span></li>

        </ul>
    </div>




    <div role="tabpanel" class="tab-pane fade " id="niandubaobiao">
        <ul id="inns" class="list-group">
            <li class="list-group-item">

            </li>

            <li id="chaa5" class="list-group-item"><span style="margin:47px;">入职人数</span><span style="margin-left:20px; margin-right:20px;">离职人数</span> <span style="margin:20px;">调动人数</span></li>
        </ul>
    </div>







    <div role="tabpanel" class="tab-pane fade " id="zhigang">
        <ul id="insss" class="list-group">
            <li class="list-group-item">
                <form class="form-horizontal">
                    <div class="col-9 " style=" display: inline-block;margin-right: 5px;">
                        <input id="wz1" type="text" class="form-control input-sm-10" placeholder="输入员工ID搜索"></div>
                    <div class="col-9 " style=" display: inline-block;margin-right: 5px;">
                        <input id="wz2" type="text" class="form-control input-sm-10" placeholder="输入现职位搜索"></div>
                    <div class="col-9 " style=" display: inline-block;margin-right: 5px;">
                        <input id="wz3" type="text" class="form-control input-sm-10" placeholder="输入现部门搜索"></div>
                    <button id="ssbtn" type="button" class="btn btn-xs btn-green">保存</button>
                </form>
            </li>

            <li id="chaa4" class="list-group-item"><span style="margin:47px;">ID</span><span style="margin-left:70px; margin-right:20px;">姓名</span> <span style="margin:60px;">现岗位</span><span style="margin:25px;">现部门</span><span style="margin:67px;">雇佣日期</span></li>
        </ul>
        <div id="change" class="change1">
            <form class="form-horizontal">
                <div class="col-9 " style=" display: inline-block;margin-right: 5px;">
                    <input id="wz4" type="text" class="form-control input-sm-10" placeholder="输入目标职位"></div>
                <div class="col-9 " style=" display: inline-block;margin-right: 5px;">
                    <input id="wz5" type="text" class="form-control input-sm-10" placeholder="输入目标部门"></div>
                <button id="queding" type="button" class="btn btn-xs btn-green">确定</button>
                <button id="quxiao" type="button" class="btn btn-xs btn-green">取消</button>
            </form>
        </div>

    </div>


    <div role="tabpanel" class="tab-pane fade " id="lizhi">
        <ul id="inss" class="list-group">
            <li class="list-group-item">
                <form class="form-horizontal">
                    <div class="col-9 " style=" display: inline-block;margin-right: 5px;">
                        <input id="wl1" type="text" class="form-control input-sm-10" placeholder="输入员工ID搜索"></div>
                    <div class="col-9 " style=" display: inline-block;margin-right: 5px;">
                        <input id="wl2" type="text" class="form-control input-sm-10" placeholder="输入现职位搜索"></div>
                    <div class="col-9 " style=" display: inline-block;margin-right: 5px;">
                        <input id="wl3" type="text" class="form-control input-sm-10" placeholder="输入现部门搜索"></div>
                    <button type="button" class="btn btn-xs btn-green">保存</button>
                    <form>
            </li>


            <li id="chaa3" class="list-group-item"><span style="margin:47px;">ID</span><span style="margin-left:70px; margin-right:20px;">姓名</span> <span style="margin:60px;">现岗位</span><span style="margin:25px;">现部门</span><span style="margin:67px;">雇佣日期</span></li>
        </ul>

    </div>



    <div role="tabpanel" class="tab-pane fade " id="zhuanzhen">
        <ul id="ins" class="list-group">
            <li class="list-group-item">
                <form class="form-horizontal">
                    <div class="col-9 " style=" display: inline-block;margin-right: 5px;">
                        <input id="ww1" type="text" class="form-control input-sm-10" placeholder="输入员工ID搜索"></div>
                    <button id="zzbtn" type="button" class="btn btn-xs btn-green">保存</button>
                </form>
            </li>


            <li id="chaa2" class="list-group-item"><span style="margin:47px;">ID</span><span style="margin-left:70px; margin-right:20px;">姓名</span> <span style="margin:60px;">现岗位</span><span style="margin:25px;">现部门</span><span style="margin:67px;">雇佣日期</span></li>
        </ul>
    </div>








    <div role="tabpanel" class="tab-pane fade " id="chaxundiaodong">
        <ul id="cha" class="list-group">
            <li class="list-group-item">
                <form class="form-horizontal">
                    <div class="col-9 " style=" display: inline-block;margin-right: 5px;">
                        <input type="text" id="we1" class="form-control input-sm-10" placeholder="搜索员工ID"></div>
                    <div class="col-9 " style=" display: inline-block;margin-right: 5px;">
                        <input type="text" id="we2" class="form-control input-sm-10" placeholder="搜索原岗位"></div>
                    <div class="col-9 " style=" display: inline-block;margin-right: 5px;">
                        <input type="text" id="we3" class="form-control input-sm-10" placeholder="搜索原部门"></div>
                    <div class="col-9 " style=" display: inline-block;margin-right: 5px;">
                        <input type="text" id="we4" class="form-control input-sm-10" placeholder="搜索现岗位"></div>
                    <div class="col-9 " style=" display: inline-block;margin-right: 5px;">
                        <input type="text" id="we5" class="form-control input-sm-10" placeholder="搜索现部门"></div>
                    <button id="cxbtn" type="button" class="btn btn-xs btn-green">保存</button>
                </form>
            </li>
            <li id="cha2" class="list-group-item"><span style="margin:47px;">ID</span><span style="margin-left:20px; margin-right:20px;">姓名</span> <span style="margin:20px;">原岗位</span><span style="margin:20px;">现岗位</span><span style="margin:20px;">原部门</span><span style="margin:20px;">现部门</span> <span style="margin:20px;">调动日期</span></li>
        </ul>

    </div>



    <div role="tabpanel" class="tab-pane fade " id="xiugaimima">
        <div class="check-div" style="color:#eee;">
            所有账号密码都是0123456789
        </div>
        <div style="padding: 50px 0;margin-top: 50px;background-color: #fff;
                border-radius: 5%;text-align: right;width: 420px;margin: 50px auto;">
            <form class="form-horizontal">
                <div class="form-group">
                    <label for="sKnot" class="col-xs-4 control-label">原密码：</label>
                    <div class="col-xs-5">
                        <input type="password" id="yuan" class="form-control input-sm duiqi" id="sKnot" placeholder="" style="margin-top: 7px;">
                    </div>
                </div>
                <div class="form-group">
                    <label for="sKnot" class="col-xs-4 control-label">新密码：</label>
                    <div class="col-xs-5">
                        <input type="password" id="xin" class="form-control input-sm duiqi" id="sKnot" placeholder="" style="margin-top: 7px;">
                    </div>
                </div>
                <div class="form-group">
                    <label for="sKnot" class="col-xs-4 control-label">重复密码：</label>
                    <div class="col-xs-5">
                        <input type="password" id="chong" class="form-control input-sm duiqi" id="sKnot" placeholder="" style="margin-top: 7px;">
                    </div>
                </div>
                <div class="form-group text-right">
                    <button id="savebtn" class="btn btn-success" type="button" style="margin-top: 10px;padding-left: 50px;padding-right: 50px;margin-right: 50px;margin-left: 22px;">确定修改</button>
                </div>
            </form>
        </div>

    </div>
    <div role="tabpanel" class="tab-pane fade in active" id="gerenxinxi">
        <div class="check-div form-inline">

            <span style="font-size: 2.0em;padding-left:50px"></span>
        </div>
        <div class="data-div">
            <div class="row tableHeader">
                <div style="color:black;font-size: 3rem; margin-left: 40px;">
                    我的信息
                </div>
            </div>
            <div class="tablebody">
                <div style="padding: 25px 0;background-color: #fff; text-align: left;width: 80%;margin: 50px 20px auto;display: inline-block;border-radius: 10px;margin-top: 20px;position: relative;">
                    <form class="form-horizontal">
                        <img id="logo" class="right " style="margin-right: 10px" src="../images/logo.png" >
                        <p id="UserID"style="margin-left: 30px;">账户ID：</p>
                        <p id="Username"style="margin-left: 30px;">姓名：</p>
                        <p id="Usersex"style="margin-left: 30px;">性别：</p>
                        <p id="Userbirthday" style="margin-left: 30px;">出生日期：</p>
                        <p id="Userphone" style="margin-left: 30px;">电话号码：</p>
                        <p>
                            <a id="Useremail" herf="#" target="_blank" style="margin-left: 30px;">email：</a></p>

                    </form>
                </div>
                <div id="you"style="padding: 30px 0;background-color: #fff; text-align: left;width: 80%;margin: 50px 20px;display: inline-block;border-radius: 10px;margin-top: 20px;position: relative; ">
                    <form class="form-horizontal">
                        <p id="Userposition" style="margin-left: 30px;">岗位：</p>
                        <p id="Userdepartment" style="margin-left: 30px;">部门：</p>
                        <p id="Usereducation_level" style="margin-left: 30px; ">教育程度：</p>
                        <p id="Usersalary"style="margin-left: 30px;">薪水：</p>
                        <p id="Useraddress"style="margin-left: 30px;">家庭地址：</p>
                        <p id="Userhire_date" style="margin-left: 30px;">入职时间：</p>
                    </form>
                </div>
            </div>
        </div>
        <!--页码块-->

        <!--弹出窗口 添加资源-->

    </div>

    <div role="tabpanel" class="tab-pane fade" id="xiugaixinxi">
        <div class="check-div form-inline">

            <span style="font-size: 2.0em;padding-left:50px"></span>
        </div>
        <div class="data-div">
            <div class="row tableHeader">
                <div style="color:black;font-size: 3rem; margin-left: 40px;">
                    我的信息
                </div>
            </div>
            <div class="tablebody" style="text-align: center;">
                <div style="padding: 30px 0;background-color: #fff; text-align: left;width: 80%;margin: 50px 20px auto;display: inline-block;border-radius: 10px;margin-top: 20px;position: relative;">
                    <form class="form-horizontal">
                        <img id="logo" class="right " style="margin-right: 0px" src="../images/logo.png" >
                        <p id="userID"style="margin-left: 30px;">账户ID：</p>
                        <p><span style="margin-left: 30px;margin-right: 5px;">姓名：</span><input style="width:120px;" id="username" ></p>
                        <p><span style="margin-left: 30px;margin-right: 5px;">性别：</span>
                            <input id="nan" type="radio" name="radio" value="1">男
                            <input id="nv" style="margin-left: 20px;"type="radio" name="radio" value="2">女</p>
                        <p><span  id="userbirthday" style="margin-left: 30px;">出生日期：</span>
                            <select name="year" id="year" onchange="getDays()"></select>
                            <select name="month" id="month" onchange="getDays()"></select>
                            <select name="day" id="day"></select>
                        </p>
                        <p><span style="margin-left: 30px;margin-right: 5px;">电话号码：</span><input style="width:160px;" id="userphone" ><p>
                        <p><span style="margin-left: 30px;margin-right: 5px;">email：</span><input style="width:183px;"id="useremail" ><p>
                    </form>
                </div>
                <div id="you"style="padding: 30px 0;background-color: #fff; text-align: left;width: 80%;margin: 50px 20px;display: inline-block;border-radius: 10px;margin-top: 20px;position: relative; ">
                    <form class="form-horizontal">
                        <p id="userposition" style="margin-left: 30px;">岗位：</p>
                        <p id="userdepartment" style="margin-left: 30px;">部门：</p>
                        <p><span style="margin-left: 30px;margin-right: 5px;">教育程度：</span>
                            <select style="width:200px; height：30px;" name="education" id="usereducationLevel">
                                <option id="EL1" value = "高中" >高中</option >
                                <option id="EL2" value = "大专" >大专</option >
                                <option id="EL3" value = "本科" >本科</option >
                                <option id="EL4" value = "研究生" >研究生</option >
                                <option id="EL5" value = "博士" >博士</option >
                            </select>
                        </p>
                        <p id="usersalary"style="margin-left: 30px;">薪水：</p>
                        <p><span style="margin-left: 30px;margin-right: 5px;">家庭地址：</span><input style="width:230px;" id="useraddress" ></p>
                        <p id="userhire_date" style="margin-left: 30px;">入职时间：</p>
                    </form>

                </div>
                <button id="checkbtn" class="btn btn-success" type="button" style="margin-top: 10px;padding-left: 50px;padding-right: 50px;margin-right: 50px;margin-left: 22px;">确定修改</button>
            </div>
        </div>
        <!--页码块-->

        <!--弹出窗口 添加资源-->

    </div>



    <div role="tabpanel" class="tab-pane fade" id="yuangongxinxi">
        <div class="check-div form-inline">

            <span style="font-size: 2.0em;padding-left:50px"></span>
        </div>

        <form class="form-horizontal" role="form" target="actionframe">

            <label for="lasttname" class=" control-label" style="font-size: 2.5rem;">姓名</label>
            <div class="form-group">
                <label  class="col-sm-1 control-label">姓</label>
                <div class="col-sm-5">
                    <input id="q1" type="text" class="form-control " id="firstname" placeholder="请输入姓">
                </div>
                <label for="firstname" class="col-sm-1 control-label">名字</label>
                <div class="col-sm-5">
                    <input id="q2"type="text" class="form-control" id="lastname" placeholder="请输入名字">
                </div>
            </div>








            <hr style="height:1px;border:none;border-top:1px solid #555555;" />
            <label for="lasttname" class=" control-label"  style="font-size: 2.5rem;">性别</label>
            <div class="form-group" style="padding-left: 30px;">
                <div class="col-sm-5">
                    <input type="radio" name="sex" id="1" value="男" checked> 男
                </div>

                <div class="col-sm-5">
                    <input type="radio" name="sex" id="2" value="女">女
                </div>
            </div>



            <hr style="height:1px;border:none;border-top:1px solid #555555;" />
            <label for="lasttname" class=" control-label" style="font-size: 2.5rem;">详细信息</label>
            <div class="form-group">
                <label  class="col-sm-1 control-label">部门</label>
                <div class="col-sm-5">
                    <input id="q3" type="text" class="form-control " id="firstname" placeholder="请输入部门">
                </div>
                <label for="firstname" class="col-sm-1 control-label">岗位</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control" id="lastname" placeholder="请输入岗位">
                </div>
                <label for="lasttname" class="col-sm-1 control-label">email</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control " id="firstname" placeholder="请输入email">
                </div>
                <label for="firstname" class="col-sm-1 control-label">电话</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control" id="lastname" placeholder="请输入电话">
                </div>
                <label for="firstname" class="col-sm-1 control-label">薪水</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control" id="lastname" placeholder="请输入薪水">
                </div>
                <label for="firstname" class="col-sm-1 control-label">学历</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control" id="lastname" placeholder="请输入学历">
                </div>
                <label for="firstname" class="col-sm-1 control-label">地址</label>
                <div class="col-sm-11">
                    <input type="text" class="form-control" id="lastname" placeholder="请输入地址">
                </div>
                <label for="firstname" class="col-sm-1 control-label">出生</label>
                <div class="col-sm-11">
                    <input type="text" class="form-control" id="lastname" placeholder="请输入出生">
                </div>
            </div>



            <hr style="height:1px;border:none;border-top:1px solid #555555;" />
            <div id="yuyannengli">
                <label class=" control-label"  style="font-size: 2.5rem;">语言能力</label>
                <div id="dian11" class="form-group">
                    <label class="col-sm-1 control-label">语种</label>
                    <div class="col-sm-5">
                        <input type="text" class="form-control " id="firstname" placeholder="请输入语种">
                    </div>
                    <label for="firstname" class="col-sm-1 control-label">等级</label>
                    <div>
                        <div class="col-sm-5">
                            <input type="text" class="form-control" id="lastname" placeholder="请输入等级">
                        </div>
                    </div>
                </div>
            </div>


            <button  id="tianjiayuyan" class="btn btn-primary" style="display: block;" onclick="return false";>添加语言</button>

            <hr style="height:1px;border:none;border-top:1px solid #555555;" />
            <div id="jiatingguanxi">
                <label  class=" control-label"  style="font-size: 2.5rem;">家庭</label>
                <div class="form-group" id="dian22">
                    <label class="col-sm-1 control-label">姓名</label>
                    <div class="col-sm-5">
                        <input type="text" class="form-control " placeholder="请输入姓名">
                    </div>
                    <label for="firstname" class="col-sm-1 control-label">关系</label>
                    <div>
                        <div class="col-sm-5">
                            <input type="text" class="form-control" placeholder="请输入关系">
                        </div>
                        <label for="firstname" class="col-sm-1 control-label">地址</label>
                        <div class="col-sm-11">
                            <input type="text" class="form-control" placeholder="请输入地址">
                        </div>
                    </div>
                </div>
            </div>
            <button id="tianjialianxi" class="btn btn-primary" onclick="return false";>添加联系</button>




            <hr style="height:1px;border:none;border-top:1px solid #555555;" />
            <div id="jiuzhijinli">
                <label  class=" control-label"  style="font-size: 2.5rem;">就职经历</label>
                <div class="form-group">
                    <label class="col-sm-1 control-label">开始</label>
                    <div class="col-sm-5">
                        <input type="text" class="form-control " placeholder="请输入时间">
                    </div>
                    <label for="firstname" class="col-sm-1 control-label">结束</label>
                    <div>
                        <div class="col-sm-5">
                            <input type="text" class="form-control" placeholder="请输入时间">
                        </div>
                        <label for="firstname" class="col-sm-1 control-label">公司</label>
                        <div class="col-sm-11">
                            <input type="text" class="form-control" placeholder="请输入公司">
                        </div>
                    </div>
                </div>
            </div>
            <button id="tianjiajinli" class="btn btn-primary" onclick="return false";>添加经历</button>






            <div class="form-group">
                <div class="col-sm-offset-6 col-sm-6">
                    <button id="zhuche" onclick = "return false"class="btn btn-success" >注册</button>
                </div>
            </div>
        </form>

    </div>
</div>



    <!-- /.col-lg-8 -->



    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="../vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="../vendor/raphael/raphael.min.js"></script>
    <script src="../vendor/morrisjs/morris.min.js"></script>
    <script src="../data/morris-data.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>
    <script src="js/dologin.js"></script>
    <script src="js/rstpwd.js"></script>
    <script src="../../js/jquery_md5/jquery.md5.js"></script>
    <script src="js/chperinfo.js"></script>
    <script src="js/rollUp.js"></script>
    <script src="js/doLogout.js"></script>
    <script src="js/probation.js"></script>
    <script src="js/leaving.js"></script>
    <script src="js/dpchange.js"></script>
    <script src="js/insert.js"></script>

    <!-- ECharts单文件引入 -->
    <script src="http://echarts.baidu.com/build/dist/echarts.js"></script>
    <script src="js/chartView.js"></script>
    <script type="text/javascript">
        var lab = [];
        $.ajax({
            type:"GET",
            async:false,
            url: '../../monthChartServlet',
            success:function (data) {
                var datas = data.toString();
                lab = datas.split('-');
                $("#innnss").append("<li class='list-group-item'><span style='margin:80px;'>"+lab[0].toString()+"</span><span style='margin-left:40px; margin-right:70px;'>"+lab[1].toString()+"</span> <span style='margin:20px;'>"+lab[2].toString()+"</span></li>");
            }
        });
    </script>
    <script type="text/javascript">
        var lab = [];
        $.ajax({
            type:"GET",
            async:false,
            url: '../../seasonChartServlet',
            success:function (data) {
                var datas = data.toString();
                lab = datas.split('-');
                $("#innns").append("<li class='list-group-item'><span style='margin:80px;'>"+lab[0].toString()+"</span><span style='margin-left:40px; margin-right:70px;'>"+lab[1].toString()+"</span> <span style='margin:20px;'>"+lab[2].toString()+"</span></li>");
            }
        });
    </script>
    <script type="text/javascript">
        var lab = [];
        $.ajax({
            type:"GET",
            async:false,
            url: '../../yearChartServlet',
            success:function (data) {
                var datas = data.toString();
                lab = datas.split('-');
                $("#inns").append("<li class='list-group-item'><span style='margin:80px;'>"+lab[0].toString()+"</span><span style='margin-left:40px; margin-right:70px;'>"+lab[1].toString()+"</span> <span style='margin:20px;'>"+lab[2].toString()+"</span></li>");
            }
        });
    </script>
</body>
</html>
