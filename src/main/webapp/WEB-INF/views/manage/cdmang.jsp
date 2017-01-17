<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/index.css"/>
    <link rel="stylesheet" href="css/change_style.css"/>
    <link rel="stylesheet" href="css/tq.css">
    <link rel="stylesheet" type="text/css" href="assets/bootstrap/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <script src="js/jquery-1.11.3.min.js"></script>
    <script src="js/bootstrap1.js"></script>

    <link rel="stylesheet" href="css/tqcss.css"/>
    <!--<script src="js/showBo.js"></script>-->
    <title>客户管理</title>
    <style>
        .width {
            width: 7%;
        }
    </style>

</head>
<body>
<!------------------------------客户管理---------------------------------->
<div class="main-container container-fluid" class="top" style="padding-left: 0;">
    <img src="./image/2.png" alt="">
</div>
<div class="main-container container-fluid" class="left" style="display:inline-block;    padding-left: 0;">
    <img src="./image/1.png" alt="" style="width:230px;    height: 100%;">
</div>

<div style="height200px;width:350px;font-size:26px;font-family:'华文行楷','Arial','Microsoft YaHei','黑体','宋体','sans-serif';margin:0 auto; border:1px solid #008cee;background-color:#008cee;color:#fff;z-index:999;display:inline-block;line-height:50px;text-align:center;border-radius:20px;position:absolute;right: 42%;top: 480px;display:none;"
     class="noticeCon">
    操作成功
</div>

<div class="contaner" id="page3" style="width:86%;float:right;padding:0 35px;border:1px solid #ddd">
    <a id="btn1" href="swindex.html" style="left: -30px;padding: 17px 10px;float: left;position: relative;"> 首页 / </a>
    <a class="btn1" href="javascript:void(0)" style="left: -30px;padding: 17px 5px;float: left;position: relative;">
        功能列表</a>

    <div class="section" style="margin:15px 0;">
        <h3 class="baoxiao">菜单管理</h3>
        <form style="text-align:left;">
            <div style="margin:10px 0;height:36px;padding:5px 0">
                <button type="button" class="btn pull-left addfootEle"
                        style="margin:0 10px;background-color: #008cee;color: #fff">新增根节点
                </button>
                <!--  <button type="button" class="btn btn-info pull-left" style="color: #fff">修改</button>
                 <button type="button" class="btn btn-danger pull-left" style="margin:0 10px;color: #fff">删除</button> -->
            </div>
        </form>
        <div class="table-responsive" style="margin-top:15px;">
            <table class="table table-bordered" id="menuTable">
                <thead>
                <tr>
                    <td>编号</td>
                    <td>菜单</td>
                    <td>父级</td>
                    <td>url</td>
                    <td>角色</td>
                    <td>操作</td>
                </tr>
                </thead>
                <tbody id="bodyMenu">
                <tr>
                    <td>01</td>
                    <td>后台管理</td>
                    <td>0</td>
                    <td>view/authority/xxx.jsp</td>
                    <td>超级管理员、管理员、部门主管、客服人员、实施人员</td>
                    <td>
                        <a href="tjcd.jsp"> <span class="left" style="width:33%!important;"><button
                                class="btn btn-info" style="color:#ffffff">修改</button></span></a>
                        <span class="left" style="width:33%!important;"><button class="btn btn-danger menuDele"
                                                                                style="menuDeleolor:#ffffff">删除</button></span>
                        <span style="color:#608cee;font-size:18px;" data-toggle="modal" data-target="#myModal1"
                              id="role">角色</span>
                    </td>
                </tr>
                <tr>
                    <td>02</td>
                    <td>联系人管理</td>
                    <td>1</td>
                    <td>view/authority/xxx.jsp</td>
                    <td>超级管理员、管理员、部门主管、客服人员</td>
                    <td>
                        <a href="tjcd.jsp"> <span class="left" style="width:33%!important;"><button
                                class="btn btn-info" style="color:#ffffff">修改</button></span></a>
                        <span class="left" style="width:33%!important;"><button class="btn btn-danger menuDele"
                                                                                style="color:#ffffff">删除</button></span>
                        <span style="color:#608cee;font-size:18px;" data-toggle="modal" data-target="#myModal1"
                              id="role">角色</span>
                </tr>
                <tr>
                    <td>03</td>
                    <td>合同管理</td>
                    <td>1</td>
                    <td>view/authority/xxx.jsp</td>
                    <td>超级管理员、管理员、部门主管</td>
                    <td>
                        <a href="tjcd.jsp"> <span class="left" style="width:33%!important;"><button
                                class="btn btn-info" style="color:#ffffff">修改</button></span></a>
                        <span class="left" style="width:33%!important;"><button class="btn btn-danger menuDele"
                                                                                style="color:#ffffff">删除</button></span>
                        <span style="color:#608cee;font-size:18px;" data-toggle="modal" data-target="#myModal1"
                              id="role">角色</span>
                    </td>
                </tr>
                <tr>
                    <td>04</td>
                    <td>任务管理</td>
                    <td>1</td>
                    <td>view/authority/xxx.jsp</td>
                    <td>超级管理员、管理员、部门主管、客服、实施人员</td>
                    <td>
                        <a href="tjcd.jsp"> <span class="left" style="width:33%!important;"><button
                                class="btn btn-info" style="color:#ffffff">修改</button></span></a>
                        <span class="left" style="width:33%!important;"><button class="btn btn-danger menuDele"
                                                                                style="color:#ffffff">删除</button></span>
                        <span style="color:#608cee;font-size:18px;" data-toggle="modal" data-target="#myModal1"
                              id="role">角色</span>
                    </td>
                </tr>
                <tr>
                    <td>05</td>
                    <td>用户管理</td>
                    <td>1</td>
                    <td>view/authority/xxx.jsp</td>
                    <td>超级管理员、管理员、部门主管</td>
                    <td>
                        <a href="tjcd.jsp"> <span class="left" style="width:33%!important;"><button
                                class="btn btn-info" style="color:#ffffff">修改</button></span></a>
                        <span class="left" style="width:33%!important;"><button class="btn btn-danger menuDele"
                                                                                style="color:#ffffff">删除</button></span>
                        <span style="color:#608cee;font-size:18px;" data-toggle="modal" data-target="#myModal1"
                              id="role">角色</span>
                    </td>
                </tr>
                <tr>
                    <td>06</td>
                    <td>客户管理</td>
                    <td>1</td>
                    <td>view/authority/xxx.jsp</td>
                    <td>超级管理员、管理员、部门主管、客服</td>
                    <td>
                        <a href="tjcd.jsp"> <span class="left" style="width:33%!important;"><button
                                class="btn btn-info" style="color:#ffffff">修改</button></span></a>
                        <span class="left" style="width:33%!important;"><button class="btn btn-danger menuDele"
                                                                                style="color:#ffffff">删除</button></span>
                        <span style="color:#608cee;font-size:18px;" data-toggle="modal" data-target="#myModal1"
                              id="role">角色</span>
                    </td>
                </tr>
                <tr>
                    <td>07</td>
                    <td>收款管理</td>
                    <td>1</td>
                    <td>view/authority/xxx.jsp</td>
                    <td>超级管理员、管理员、部门主管、客服、实施人员</td>
                    <td>
                        <a href="tjcd.jsp"> <span class="left" style="width:33%!important;"><button
                                class="btn btn-info" style="color:#ffffff">修改</button></span></a>
                        <span class="left" style="width:33%!important;"><button class="btn btn-danger menuDele"
                                                                                style="color:#ffffff">删除</button></span>
                        <span style="color:#608cee;font-size:18px;" data-toggle="modal" data-target="#myModal1"
                              id="role">角色</span>
                    </td>
                </tr>
                <tr>
                    <td>08</td>
                    <td>报销管理</td>
                    <td>1</td>
                    <td>view/authority/xxx.jsp</td>
                    <td>超级管理员、管理员、部门主管、客服</td>
                    <td>
                        <a href="tjcd.jsp"> <span class="left" style="width:33%!important;"><button
                                class="btn btn-info" style="color:#ffffff">修改</button></span></a>
                        <span class="left" style="width:33%!important;"><button class="btn btn-danger menuDele"
                                                                                style="color:#ffffff">删除</button></span>
                        <span style="color:#608cee;font-size:18px;" data-toggle="modal" data-target="#myModal1"
                              id="role">角色</span>
                    </td>
                </tr>
                <tr>
                    <td>09</td>
                    <td>项目管理</td>
                    <td>1</td>
                    <td>view/authority/xxx.jsp</td>
                    <td>超级管理员、管理员、部门主管、客服、实施人员</td>
                    <td>
                        <a href="tjcd.jsp"> <span class="left" style="width:33%!important;"><button
                                class="btn btn-info" style="color:#ffffff">修改</button></span></a>
                        <span class="left" style="width:33%!important;"><button class="btn btn-danger menuDele"
                                                                                style="color:#ffffff">删除</button></span>
                        <span style="color:#608cee;font-size:18px;" data-toggle="modal" data-target="#myModal1"
                              id="role">角色</span>
                    </td>
                </tr>
                <tr>
                    <td>10</td>
                    <td>权限管理</td>
                    <td>1</td>
                    <td>view/authority/xxx.jsp</td>
                    <td>超级管理员、管理员、部门主管</td>
                    <td>
                        <a href="tjcd.jsp"> <span class="left" style="width:33%!important;"><button
                                class="btn btn-info" style="color:#ffffff">修改</button></span></a>
                        <span class="left" style="width:33%!important;"><button class="btn btn-danger menuDele"
                                                                                style="color:#ffffff">删除</button></span>
                        <span style="color:#608cee;font-size:18px;" data-toggle="modal" data-target="#myModal1"
                              id="role">角色</span>
                    </td>
                </tr>
                <tr>
                    <td>11</td>
                    <td>菜单管理</td>
                    <td>1</td>
                    <td>view/authority/xxx.jsp</td>
                    <td>超级管理员、管理员、部门主管</td>
                    <td>
                        <a href="tjcd.jsp"> <span class="left" style="width:33%!important;"><button
                                class="btn btn-info" style="color:#ffffff">修改</button></span></a>
                        <span class="left" style="width:33%!important;"><button class="btn btn-danger menuDele"
                                                                                style="color:#ffffff">删除</button></span>
                        <span style="color:#608cee;font-size:18px;" data-toggle="modal" data-target="#myModal1"
                              id="role">角色</span>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>

    </div>

    <!-- <a id="btn1" href="javascript:void(0)"style="left: -30px;padding: 17px 0px;float: left;position: relative;" >功能列表</a> -->
</div>
<!-- 主容器 -->
<div class="olct" style="position: fixed; top: 69px;    right: -250px;">
    <div class="clearfloat">
        <div class="olct_left"></div>
        <div class="olct_right">
            <div class="olct_box">
                <div class="olct_top"
                     style=" z-index:2;   display: inline-block;width: 100px;position: relative;right: -130px;"><a
                        href="javascript:void(0);" style=""><img src="image/lADOjttrRMykXQ_93_164.png" alt=""
                                                                 style="height: 150px; position: absolute;"></a></div>
                <div class="olct_conwrap clearfloat">
                    <div class="scrollbar" style="height: 280px;">
                        <div class="track" style="height: 280px;">
                            <div class="thumb" style="top: 0px; height: 100.384px;">
                                <div class="end"></div>
                            </div>
                        </div>
                    </div>
                    <div class="olct_conbox">
                        <div class="olct_con" style="top: 0px;">

                            <div class="olct_teacher clearfloat col-lg-10" style="    position: relative; top: -19px;">
                                <li class="row info col-lg-12">
                                    <a id="f" href="../../customer/kh.jsp">
                                        <img src="image/客户管理.png" class="col-lg-offset-2">
                                        <span class="list">客户管理</span>
                                    </a>
                                </li>
                                <li class="row info col-lg-12">
                                    <a id="j" href="rw.jsp">
                                        <img src="image/任务管理.png" class="col-lg-offset-2">
                                        <span class="list">任务管理</span>
                                    </a>
                                </li>
                                <li class="row info col-lg-12">
                                    <a id="h" href="sk.jsp">
                                        <img src="image/收款管理.png" class="col-lg-offset-2">
                                        <span class="list">收款管理</span>
                                    </a>
                                </li>


                                <li class="row info col-lg-12">
                                    <a id="h" href="bx.jsp">
                                        <img src="image/报销管理.png" class="col-lg-offset-2">
                                        <span class="list">报销管理</span>
                                    </a>
                                </li>
                                <li class="row info col-lg-12">
                                    <a id="e" href="yh.jsp">
                                        <img src="image/用户管理.png" class="col-lg-offset-2">
                                        <span class="list">用户管理</span>
                                    </a>
                                </li>
                                <li class="row info col-lg-12">
                                    <a href="qx.jsp">
                                        <img src="image/权限管理.png" class="col-lg-offset-2">
                                        <span class="list">权限管理</span>
                                    </a>
                                </li>

                                <li class="row info col-lg-12">
                                    <a href="cdmang.jsp">
                                        <img src="image/菜单管理.png" class="col-lg-offset-2">
                                        <span class="list">菜单管理</span>
                                    </a>
                                </li>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="olct_footer"></div>

</div>
<div id="zhe" style="display:none;"></div>

<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">设置角色</h4>
            </div>
            <h4 class="modal-title" style="margin-left:15px;">设置<span style="color:#f00;">xxx</span>的角色</h4>
            <div class="modal-body">

                <label>角色名：</label>&nbsp;&nbsp;
                <input type="text" placeholder="搜索角色,支持模糊" class="set" id="pic"/>&nbsp;&nbsp;
                <div class="table-responsive" style="margin-top:15px;">
                    <table class="table table-bordered">
                        <tr>
                            <td><input type="checkbox"/></td>
                            <td>角色</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"/></td>
                            <td>管理员</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"/></td>
                            <td>实施人员</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"/></td>
                            <td>部门主管</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"/></td>
                            <td>客服人员</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"/></td>
                            <td>超级管理员</td>
                            <td></td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn" data-dismiss="modal" onclick="cancel()"
                        style="background-color: #008CEE;color: #ffffff;">保存
                </button>
                <button type="button" class="btn" onclick="cancel()" style="background-color: #008CEE;color: #ffffff;">
                    取消
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
    <div></div>
</div>
<!-- <a id="btn1" href="javascript:void(0)" >功能列表</a> -->
<!-- <a  id="btn2" href='swindex.html'>返回首页</a> -->
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">添加根节点</h4>
            </div>

            <div class="modal-body">

                <!--  <label>角色名：</label>&nbsp;&nbsp;
                 <input type="text" placeholder="搜索角色,支持模糊" class="set" id="pic"/>&nbsp;&nbsp; -->
                <div class="table-responsive" style="margin-top:15px;">
                    <table class="table table-bordered">
                        <tr>
                            <td>菜单名称</td>
                            <td><input type="text" style="border:1px solid #f00"/></td>
                        </tr>
                        <tr>
                            <td>url</td>
                            <td><input type="text"/></td>
                        </tr>

                    </table>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn" data-dismiss="modal" onclick="cancel()"
                        style="background-color: #008CEE;color: #ffffff;">保存
                </button>
                <button type="button" class="btn" onclick="cancel()" style="background-color: #008CEE;color: #ffffff;">
                    取消
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
    <div></div>
</div>

<div id="dvMsgBox" style="width: 400px;  top: 440px; left: 751px;display:none;">
    <div class="top">
        <div class="right">
            <div class="title" id="dvMsgTitle">提示</div>
        </div>
    </div>
    <div class="body">
        <div class="right">
            <div class="ct" id="dvMsgCT">
                <img src="image/警示.png" alt="" style="width:30px;height:30px;margin-right:10px;">
                您确认要进行保存操作吗？
                <div class="clear">
                    <img src="image/bottom_smile.png" alt="">
                </div>
            </div>
        </div>
    </div>
    <div class="bottom" id="dvMsgBottom" style="height: 45px;">
        <div class="right">
            <div class="" id="dvMsgBtns">
                <div class="height"></div>
                <input type="button" class="btn2 btn_confirm_cancel" value="确认" id="btn_confirm_deletemenu">　
                <input type="button" class="btn2 btn_confirm_cancel" value="取消" id="btn_confirm_cancel">
            </div>
        </div>
    </div>
</div>
<div id="ShowBolightBox" style=" width: 1932px; height: 100%;display:none;"></div>
<script>
  $("#role").click(function () {
    $('#myModal').modal('show')
  });
  $(".addfootEle").click(function () {
    $('#myModal3').modal('show')
  });

  function cancel() {
    $('#myModal1').modal('hide');
  }
  function tan() {
    alert("保存成功");
  }
  function tan1() {
    alert("添加成功");
  }
</script>
<script src="js/app.js"></script>
</body>
</html>