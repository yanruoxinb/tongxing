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

    <title>开票新增</title>
    <style>
.padright{
    padding-right: 47px;
}
.padding{
    margin:0 30px;
}

    </style>
</head>
<body>
<!------------------------------客户详情---------------------------------->
<div class="main-container container-fluid" class="top"style="padding-left: 0;">
<img src="./image/2.png" alt="">
</div>
<div class="main-container container-fluid" class="left"style="display:inline-block;    padding-left: 0;">
<img src="./image/1.png" alt=""style="width:230px;    height: 100%;">
</div>

<div style="height200px;width:350px;font-size:26px;font-family:'华文行楷','Arial','Microsoft YaHei','黑体','宋体','sans-serif';margin:0 auto; border:1px solid #008cee;background-color:#008cee;color:#fff;z-index:999;display:inline-block;line-height:50px;text-align:center;border-radius:20px;position:absolute;right: 42%;top: 480px;display:none;" class="noticeCon">
    操作成功
</div>

<div class="contaner"  id="page7"style="width:86%;float:right;padding:0 35px;border:1px solid #ddd">
<a id="btn1" href="swindex.html"style="left: -30px;padding: 17px 10px;float: left;position: relative;" > 首页 / </a>
    <a class="btn1" href="javascript:void(0)"style="left: -30px;padding: 17px 5px;float: left;position: relative;" > 功能列表</a>
    <div class="section">
        <h3 class="baoxiao" style="padding:0 100px">开票新增</h3>
        <hr/>
        <form class="form-horizontal" role="form">
            <div class="row">
                <div class="col-sm-4 col-sm-offset-2">
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-3 control-label">开票性质</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control width" id="inputEmail3" placeholder="请输入开票性质">
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                    <div class="form-group">
                        <label  class="col-sm-3 control-label">开票金额</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control width" id="inputEmail3" placeholder="请输入开票金额">
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                      <div class="form-group">
                        <label  class="col-sm-3 control-label">财务负责</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control width" id="inputEmail3" placeholder="请输入财务负责人">
                        </div>
                        <i class="items pull-left">*</i>
                    </div>

                </div>
                <div class="col-sm-4 col-sm-offset-2">
                    <div class="form-group">
                        <label  class="col-sm-3 control-label">票据编号</label>
                        <div class="col-sm-4">
                            <input type="number" class="form-control width" id="inputEmail3" placeholder="请输入票据编号">
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-3 control-label">票据类型</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="11" placeholder="请输入票据类型">
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                      <div class="form-group">
                        <label  class="col-sm-3 control-label">经办人</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control width" id="inputEmail3" placeholder="请输入经办人">
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group">
                       <!--  <div style="text-align:center;display:inline-block;width:50%;float:left;"> -->
                        <a href="../../contract/ht.jsp"> <button type="button" class="btn padding" style="background-color: #008cee;color: #fff">确定</button></a>
                       <!--  </div> -->
                       <!--  <div style="text-align:center;display:inline-block;width:50%;float:right;"> -->
                            <button type="reset" class="btn" style="background-color: #008cee;color: #fff">重置</button>
                       <!--  </div> -->
                    </div>
                </div>
            </div>
        </form>
    </div>

        <!-- <a id="btn1" href="javascript:void(0)"style="left: -30px;padding: 17px 0px;float: left;position: relative;" >功能列表</a> -->
</div>
<!-- <div id="z_cen">
    <div class="sidebar" >
        <a class="left change_w user1" style="height:76px;">
            <p id="loginName" style="height:100%;line-height:76px;">唐杰</p>
        </a>
        <div class="a-group pull-right row" style="width:100%;text-align:center;">
            <a  class="left change_w" id="a" href="lx.jsp">
                <h4 class="fa  fa-envelope-o mr5"></h4>
                <p>联系人管理</p>
            </a>
            <a  class="left change_w" id="c"  href="ht.jsp">
                <h4 class="fa  fa-envelope-o mr5"></h4>
                <p>合同管理</p>
            </a>
            <a  class="left change_w" id="d" href="rw.html">
                <h4 class="fa  fa-envelope-o mr5"></h4>
                <p>任务管理</p>
            </a>

            <a  class="left change_w" id="e" href="yh.jsp">
                <h4 class="fa  fa-envelope-o mr5"></h4>
                <p>用户管理</p>
            </a>
            <a  class="left change_w" id="f" href="kh.html">
                <h4 class="fa  fa-envelope-o mr5"></h4>
                <p>客户管理</p>
            </a>
            <a  class="left change_w" id="g" href="sk.html">
                <h4 class="fa  fa-envelope-o mr5"></h4>
                <p>收款管理</p>
            </a>
            <a  class="left change_w" id="h" href="bx.html">
                <h4 class="fa  fa-envelope-o mr5"></h4>
                <p>报销管理</p>
            </a>
            <a  class="left change_w" id="j" href="xm.jsp">
                <h4 class="fa  fa-envelope-o mr5"></h4>
                <p>项目管理</p>
            </a>
            <a  class="left change_w"  href="qx.jsp">
                <h4 class="fa  fa-envelope-o mr5"></h4>
                <p>权限管理</p>
            </a>
            <a  class="left change_w"  href="cdmang.html">
                <h4 class="fa  fa-envelope-o mr5"></h4>
                <p>菜单管理</p>
            </a>

        </div>
        <a class="left change_w user1" href="javascript:void(0)" onclick="logoutFun()" style="height:76px;line-height:76px;color:#ea3524;!important;">
            退出系统
        </a>
    </div>
    <div id="zhe" style="display:none;"></div>
</div> -->
<div class="olct" style="position: fixed; top: 69px;    right: -250px;">
<div class="clearfloat">
  <div class="olct_left"></div>  
  <div class="olct_right">    
    <div class="olct_box">
      <div class="olct_top" style=" z-index:2;   display: inline-block;width: 100px;position: relative;right: -130px;"><a href="javascript:void(0);"style=""><img src="image/lADOjttrRMykXQ_93_164.png" alt="" style="height: 150px; position: absolute;"></a></div>
      <div class="olct_conwrap clearfloat">
      <div class="scrollbar" style="height: 280px;"><div class="track" style="height: 280px;"><div class="thumb" style="top: 0px; height: 100.384px;"><div class="end"></div></div></div></div>
      <div class="olct_conbox">
      <div class="olct_con" style="top: 0px;">

            <div class="olct_teacher clearfloat col-lg-10"style="    position: relative; top: -19px;">
              <li class="row info col-lg-12">
                    <a id="f" href="kh.html">
                        <img src="image/客户管理.png" class="col-lg-offset-2">
                        <span class="list">客户管理</span>
                    </a>
              </li>
                <li class="row info col-lg-12">
                    <a id="a" href="lx.jsp">
                        <img src="image/联系人管理.png" class="col-lg-offset-2">
                        <span class="list">联系人管理</span>
                    </a>
                </li>

                <li class="row info col-lg-12">
                    <a id="c" href="../../contract/ht.jsp">
                        <img src="image/合同管理.png" class="col-lg-offset-2">
                        <span class="list">合同管理</span>
                    </a>
                </li>
                <li class="row info col-lg-12">
                    <a id="h" href="sk.html">
                        <img src="image/收款管理.png" class="col-lg-offset-2">
                        <span class="list">收款管理</span>
                    </a>
                </li>
                <li class="row info col-lg-12">
                    <a id="j" href="xm.jsp">
                        <img src="image/项目管理.png" class="col-lg-offset-2">
                        <span class="list">项目管理</span>

                    </a>
                </li>
                <li class="row info col-lg-12">
                    <a id="j" href="rw.html">
                        <img src="image/任务管理.png" class="col-lg-offset-2">
                        <span class="list">任务管理</span>
                    </a>
                </li>                
                  <li class="row info col-lg-12">
                    <a id="h" href="bx.html">
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
<!-- <a id="btn1" href="javascript:void(0)" >功能列表</a> -->
<!-- <a  id="btn2" href='swindex.html'>返回首页</a> -->
<script src="js/app.js"></script>
</body>
</html>