<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/tq.css">
    <link rel="stylesheet" href="css/index.css"/>
    <link rel="stylesheet" href="css/change_style.css"/>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="assets/bootstrap/css/font-awesome.min.css" />
    <script src="js/jquery-1.11.3.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
         <link rel="stylesheet" href="css/tqcss.css"/>
        <script src="js/showBo.js"></script>   
    <title>用户管理</title>
</head>
<body>
<script>
        $(".xg").click(function(){
                $('#myModal').modal("show");
               $("#myModal").modal({
                keyboard:true ,
                });
         });
        function cancel(){
            $('#myModal').modal("hide");
        }
</script>
<!------------------------------用户管理---------------------------------->
<div class="main-container container-fluid" class="top"style="padding-left: 0;">
<img src="./image/2.png" alt="">
</div>
<div class="main-container container-fluid" class="left"style="display:inline-block;    padding-left: 0;">
<img src="./image/1.png" alt=""style="width:230px;    height: 100%;">
</div>

<div style="height200px;width:350px;font-size:26px;font-family:'华文行楷','Arial','Microsoft YaHei','黑体','宋体','sans-serif';margin:0 auto; border:1px solid #008cee;background-color:#008cee;color:#fff;z-index:999;display:inline-block;line-height:50px;text-align:center;border-radius:20px;position:absolute;right: 42%;top: 480px;display:none;" class="noticeCon">
    操作成功
</div>

<div class="contaner"  id="page11"style="width:86%;float:right;padding:0 35px;border:1px solid #ddd">
<a id="btn1" href="swindex.html"style="left: -30px;padding: 17px 10px;float: left;position: relative;" > 首页 / </a>
    <a class="btn1" href="javascript:void(0)"style="left: -30px;padding: 17px 5px;float: left;position: relative;" > 功能列表</a>
    <div class="section" style="margin:10px 0">

        <h3 class="baoxiao" style="padding:0 100px;">用户管理</h3>
        <form style="text-align: left;border:1px solid #ddd;padding:10px 20px;border-radius:5px;margin:10px 10px 0 0;">
            <label>名称</label>&nbsp;&nbsp;
            <input type="text" placeholder="请输入用户名或者姓名" class="set" />&nbsp;&nbsp;

            <label>部门</label>&nbsp;&nbsp;
            <select name="set"  class="set">
                <option value="">------请选择------</option>
                <option value="1">研发部</option>
                <option value="2">客服部</option>
                <option value="1">财务部</option>
                <option value="2">大BOSS</option>
            </select>&nbsp;&nbsp;

            <label>职务</label>&nbsp;&nbsp;
            <select name="set"  class="set">
                <option value="">------请选择------</option>
                <option value="1">工程师</option>
                <option value="2">客服</option>
                <option value="1">开发工程师</option>
                <option value="2">经理</option>
            </select>&nbsp;&nbsp;

            <button type="button" class="btn" style="background-color: #008cee;color: #fff;margin:0 10px;">搜索</button>
            <button type="reset" class="btn" style="background-color: #008cee;color: #fff;margin:0 10px;">重置</button>
            <a href="tjyh.jsp"> <button type="button" class="btn" style="background-color: #008cee;color: #fff;margin:0 10px;">新增</button></a>
        </form>
        <div class="table-responsive" style="margin-top:15px;">
            <table class="table table-bordered" id="deleteUserTable">
                <thead>
                <tr>
                    <td>用户名</td>
                    <td>真实性名</td>
                    <td>角色</td>
                    <td>职务</td>
                    <td>部门</td>
                    <td>联系电话</td>
                    <td>地址</td>
                    <td>操作</td>
                </tr>
                </thead>
                <tbody id="userBody">
                <tr>
                    <td>111</td>
                    <td>张三</td>
                    <td>客服</td>
                    <td>售后</td>
                    <td>销售部</td>
                    <td>12345678901</td>
                    <td>雁塔区电子三路西京电气总公司A座</td>
                    <td>
                        <a href="tjyh.jsp"> <span class="left xg" style="width:33%!important;"><button class="btn btn-info" style="color:#ffffff"> 修改</button></span></a>
                        <span  class="left xg" style="width:33%!important;"><button class="btn btn-danger deleUser" style="color:#ffffff">删除</button></span>
                         <span  class="right" style="width:33%!important;color: #608cee;    padding: 5px 0;font-size:14px;" data-toggle="modal" data-target="#myModal">设置角色</span>
                    </td>
                </tr>
                <tr>
                    <td>222</td>
                    <td>李四</td>
                    <td>开发人员</td>
                    <td>工程师</td>
                    <td>开发部</td>
                    <td>88888888888</td>
                    <td>雁塔区电子三路西京电气总公司A座</td>
                    <td>
                        <a href="tjyh.jsp"> <span class="left xg" style="width:33%!important;"><button class="btn btn-info" style="color:#ffffff">修改</button></span></a>
                        <span  class="left xg" style="width:33%!important;"><button class="btn btn-danger deleUser" style="color:#ffffff">删除</button></span>
                        <span  class="right" style="width:33%!important;color: #608cee;    padding: 5px 0;font-size:14px;" data-toggle="modal" data-target="#myModal">设置角色</span>
                    </td>
                </tr>
                <tr>
                    <td>333</td>
                    <td>王麻子</td>
                    <td>实施人员</td>
                    <td>工程师</td>
                    <td>技术部</td>
                    <td>66666666666</td>
                    <td>雁塔区电子三路西京电气总公司A座</td>
                    <td>
                        <a href="tjyh.jsp"> <span class="left xg" style="width:33%!important;"><button class="btn btn-info" style="color:#ffffff"> 修改</button></span></a>
                        <span  class="left xg" style="width:33%!important;"><button class="btn btn-danger deleUser" style="color:#ffffff">删除</button></span>
                         <span  class="right" style="width:33%!important;color: #608cee;    padding: 5px 0;font-size:14px;" data-toggle="modal" data-target="#myModal">设置角色</span>
                    </td>
                </tr>
                <tr>
                    <td>444</td>
                    <td>刘能</td>
                    <td>实施人员</td>
                    <td>工程师</td>
                    <td>技术部</td>
                    <td>66666666666</td>
                    <td>雁塔区电子三路西京电气总公司A座</td>
                    <td>
                        <a href="tjyh.jsp"> <span class="left xg" style="width:33%!important;"><button class="btn btn-info" style="color:#ffffff"> 修改</button></span></a>
                        <span  class="left xg" style="width:33%!important;"><button class="btn btn-danger deleUser" style="color:#ffffff">删除</button></span>
                         <span  class="right" style="width:33%!important;color: #608cee;    padding: 5px 0;font-size:14px;" data-toggle="modal" data-target="#myModal">设置角色</span>
                    </td>
                </tr>
                <tr>
                    <td>555</td>
                    <td>张三</td>
                    <td>客服</td>
                    <td>售后</td>
                    <td>销售部</td>
                    <td>12345678901</td>
                    <td>雁塔区电子三路西京电气总公司A座</td>
                    <td>
                        <a href="tjyh.jsp"> <span class="left xg" style="width:33%!important;"><button class="btn btn-info" style="color:#ffffff"> 修改</button></span></a>
                        <span  class="left xg" style="width:33%!important;"><button class="btn btn-danger deleUser" style="color:#ffffff">删除</button></span>
                         <span  class="right" style="width:33%!important;color: #608cee;    padding: 5px 0;font-size:14px;" data-toggle="modal" data-target="#myModal">设置角色</span>
                    </td>
                </tr>
                <tr>
                    <td>666</td>
                    <td>李四</td>
                    <td>开发人员</td>
                    <td>工程师</td>
                    <td>开发部</td>
                    <td>88888888888</td>
                    <td>雁塔区电子三路西京电气总公司A座</td>
                    <td>
                        <a href="tjyh.jsp"> <span class="left xg" style="width:33%!important;"><button class="btn btn-info" style="color:#ffffff">修改</button></span></a>
                        <span  class="left xg" style="width:33%!important;"><button class="btn btn-danger deleUser" style="color:#ffffff">删除</button></span>
                        <span  class="right" style="width:33%!important;color: #608cee;    padding: 5px 0;font-size:14px;" data-toggle="modal" data-target="#myModal">设置角色</span>
                    </td>
                </tr>
                <tr>
                    <td>777</td>
                    <td>王麻子</td>
                    <td>实施人员</td>
                    <td>工程师</td>
                    <td>技术部</td>
                    <td>66666666666</td>
                    <td>雁塔区电子三路西京电气总公司A座</td>
                    <td>
                        <a href="tjyh.jsp"> <span class="left xg" style="width:33%!important;"><button class="btn btn-info" style="color:#ffffff"> 修改</button></span></a>
                        <span  class="left xg" style="width:33%!important;"><button class="btn btn-danger deleUser" style="color:#ffffff">删除</button></span>
                         <span  class="right" style="width:33%!important;color: #608cee;    padding: 5px 0;font-size:14px;" data-toggle="modal" data-target="#myModal">设置角色</span>
                    </td>
                </tr>
                <tr>
                    <td>888</td>
                    <td>刘能</td>
                    <td>实施人员</td>
                    <td>工程师</td>
                    <td>技术部</td>
                    <td>66666666666</td>
                    <td>雁塔区电子三路西京电气总公司A座</td>
                    <td>
                        <a href="tjyh.jsp"> <span class="left xg" style="width:33%!important;"><button class="btn btn-info" style="color:#ffffff"> 修改</button></span></a>
                        <span  class="left xg" style="width:33%!important;"><button class="btn btn-danger deleUser" style="color:#ffffff">删除</button></span>
                         <span  class="right" style="width:33%!important;color: #608cee;    padding: 5px 0;font-size:14px;" data-toggle="modal" data-target="#myModal">设置角色</span>
                    </td>
                </tr>
                <tr>
                    <td>999</td>
                    <td>刘能</td>
                    <td>实施人员</td>
                    <td>工程师</td>
                    <td>技术部</td>
                    <td>66666666666</td>
                    <td>雁塔区电子三路西京电气总公司A座</td>
                    <td>
                        <a href="tjyh.jsp"> <span class="left xg" style="width:33%!important;"><button class="btn btn-info" style="color:#ffffff"> 修改</button></span></a>
                        <span  class="left xg" style="width:33%!important;"><button class="btn btn-danger deleUser" style="color:#ffffff">删除</button></span>
                         <span  class="right" style="width:33%!important;color: #608cee;    padding: 5px 0;font-size:14px;" data-toggle="modal" data-target="#myModal">设置角色</span>
                    </td>
                </tr>
                </tbody>
            </table>
           <nav style="    padding-left: 10px; text-align: center;">
                                        <ul class="pagination" style="margin:0 10px 0 0;">
                                            <li><a href="javascrip:;">«</a></li>
                                            <li class="active"><a href="javascrip:;">1</a></li>
                                            <li><a href="javascrip:;">2</a></li>
                                            <li><a href="javascrip:;">3</a></li>
                                            <li><a href="javascrip:;">4</a></li>
                                            <li><a href="javascrip:;">5</a></li>
                                            <li><a href="javascrip:;">6</a></li>
                                            <li><a href="javascrip:;">7</a></li>
                                            <li><a href="javascrip:;">8</a></li>
                                            <li><a href="javascrip:;">9</a></li>
                                            <li><a href="javascrip:;">»</a></li>
                                        </ul>
       </nav>
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
                                    <a id="f" href="kh.html">
                                        <img src="image/客户管理.png" class="col-lg-offset-2">
                                        <span class="list">客户管理</span>
                                    </a>
                                </li>
                                <li class="row info col-lg-12">
                                    <a id="j" href="rw.html">
                                        <img src="image/任务管理.png" class="col-lg-offset-2">
                                        <span class="list">任务管理</span>
                                    </a>
                                </li>
                                <li class="row info col-lg-12">
                                    <a id="h" href="sk.html">
                                        <img src="image/收款管理.png" class="col-lg-offset-2">
                                        <span class="list">收款管理</span>
                                    </a>
                                </li>


                                <li class="row info col-lg-12">
                                    <a id="h" href="bx.html">
                                        <img src="image/报销管理.png" class="col-lg-offset-2">
                                        <span class="list">报销管理</span>
                                    </a>
                                </li>
                                <li class="row info col-lg-12">
                                    <a id="e" href="yh.html">
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
                                    <a href="cdmang.html">
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
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
                <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="tan()">保存</button>
                <button type="button" class="btn btn-primary"onclick="cancel()">取消</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
    <div></div>
</div>
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
                <input type="button" class="btn2 btn_confirm_cancel" value="确认" id="btn_confirm_deleteUser">　
                <input type="button" class="btn2 btn_confirm_cancel" value="取消" id="btn_confirm_cancel">
            </div>
        </div>
    </div>
</div>
<div id="ShowBolightBox" style=" width: 1932px; height: 100%;display:none;"></div>
<!-- <a id="btn1" href="javascript:void(0)" >功能列表</a> -->
<!-- <a  id="btn2" href='swindex.html'>返回首页</a> -->
<script src="js/app.js"></script>
</body>
</html>