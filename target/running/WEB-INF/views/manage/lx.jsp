<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/index.css"/>
    <link rel="stylesheet" href="css/tq.css">
    <link rel="stylesheet" href="css/change_style.css"/>
    <link rel="stylesheet" type="text/css" href="assets/bootstrap/css/font-awesome.min.css" />
    <script src="js/jquery-1.11.3.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
             <link rel="stylesheet" href="css/tqcss.css"/>
        <script src="js/showBo.js"></script> 
    <title>联系人管理</title>
</head>
<body>
<!------------------------------联系人管理---------------------------------->
<div class="main-container container-fluid" class="top"style="padding-left: 0;">
<img src="./image/2.png" alt="">
</div>
<div class="main-container container-fluid" class="left"style="display:inline-block;    padding-left: 0;">
<img src="./image/1.png" alt=""style="width:230px;    height: 100%;">
</div>

<div style="height200px;width:350px;font-size:26px;font-family:'华文行楷','Arial','Microsoft YaHei','黑体','宋体','sans-serif';margin:0 auto; border:1px solid #008cee;background-color:#008cee;color:#fff;z-index:999;display:inline-block;line-height:50px;text-align:center;border-radius:20px;position:absolute;right: 42%;top: 480px;display:none;" class="noticeCon">
    操作成功
</div>

<div class="contaner" id="page4"style="width:86%;float:right;padding: 0px 35px;border: 1px solid #ddd;    margin: 0 10px 0 0;padding-bottom:10px;">

    <div class="section">
     <a id="btn1" href="swindex.html"style="left: -30px;padding: 17px 10px;float: left;position: relative;" > 首页 / </a>
    <a class="btn1" href="javascript:void(0)"style="left: -30px;padding: 17px 5px;float: left;position: relative;" > 功能列表</a>
    </div>
        <h3 class="baoxiao" style="padding:0 100px;margin:5px 0;">联系人管理</h3>
        <form  style="border:1px solid #ddd;padding:10px 20px;border-radius:5px;text-align:left;margin:10px 0;">

            <label>联系人姓名</label>&nbsp;&nbsp;
            <input type="text" placeholder="请输入联系人姓名" class="set"/>&nbsp;&nbsp;

            <label>客户名称</label>&nbsp;&nbsp;
            <select name="set" class="set">
                <option value="">------请选择------</option>
                <option value="1">张绿箭</option>
                <option value="2">张益达</option>
                <option value="3">snake</option>
            </select>&nbsp;&nbsp;

            <label>电话号码</label>&nbsp;&nbsp;
            <input type="text" placeholder="请输入电话号码" class="set" style="line-height: normal;"/>&nbsp;&nbsp;


            <button type="button" class="btn" style="margin-left:10px;background-color: #008cee;color: #fff">搜索</button>
            <button type="reset" class="btn" style="margin-left:10px;background-color: #008cee;color: #fff">重置</button>
            <a href="../../customer/xzlxr.jsp">
            <button type="button" class="btn" style="margin-left:10px;background-color: #008cee;color: #fff">新增</button>
            </a>

        </form>

        <div class="table-responsive" style="margin-top:15px;">
            <table class="table table-bordered">
                <thead>
                <tr>
                    <td>编号</td>
                    <td>联系人姓名</td>
                    <td>固定电话</td>
                    <td>联系电话</td>
                    <td>Email</td>
                    <td>QQ</td>
                    <td>微信</td>
                    <td>传真</td>
                    <td>客户</td>
                    <td>部门</td>
                    <td>职位</td>
                    <td>添加人</td>
                    <td>添加时间</td>
                    <td>状态</td>
                    <td>操作</td>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>CT20161111</td>
                    <td>孙站长</td>
                    <td>888888</td>
                    <td>18888888888</td>
                    <td>z@163.com</td>
                    <td>888888888</td>
                    <td>萌萌哒</td>
                    <td></td>
                    <td>大唐搅拌站</td>
                    <td>生产部</td>
                    <td>主任</td>
                    <td>客服一号</td>
                    <td>2016.11.11</td>
                    <td>有效</td>
                    <td>
                        <span class="left xg"><a href="../../customer/xzlxr.jsp"><button class="btn btn-info" style="color:#FFFFFF">修改</button></a></span>
                        <span class="right xg" onclick="Showbo.Msg.confirm('您确认要进行删除操作吗？')"><button class="btn btn-danger" style="color:#ffffff" >删除</button></span>

                    </td>
                </tr>
                <tr>
                    <td>CT20161112</td>
                    <td>李站长</td>
                    <td>888888</td>
                    <td>18888888888</td>
                    <td>z@163.com</td>
                    <td>888888888</td>
                    <td>你没有我萌萌哒</td>                    
                    <td></td>
                    <td>大唐搅拌站</td>
                    <td>生产部</td>
                    <td>主任</td>
                    <td>客服一号</td>
                    <td>2016.11.11</td>
                    <td>有效</td>
                    <td>
                        <span class="left xg"><a href="../../customer/xzlxr.jsp"><button class="btn btn-info" style="color:#FFFFFF">修改</button></a></span>
                        <span class="right xg" onclick="Showbo.Msg.confirm('您确认要进行删除操作吗？')"><button class="btn btn-danger" style="color:#ffffff">删除</button></span>
                    </td>
                </tr>
                <tr>
                    <td>CT20161113</td>
                    <td>赵站长</td>
                    <td>888888</td>
                    <td>18888888888</td>
                    <td>z@163.com</td>
                     <td>888888888</td>
                    <td>我比你萌萌哒</td>                   
                    <td></td>
                    <td>大唐搅拌站</td>
                    <td>生产部</td>
                    <td>主任</td>
                    <td>客服一号</td>
                    <td>2016.11.11</td>
                    <td>有效</td>
                    <td>
                        <span class="left xg"><a href="../../customer/xzlxr.jsp"><button class="btn btn-info" style="color:#FFFFFF">修改</button></a></span>
                        <span class="right xg" onclick="Showbo.Msg.confirm('您确认要进行删除操作吗？')"><button class="btn btn-danger" style="color:#ffffff">删除</button></span>
                    </td>
                </tr>
                <tr>
                    <td>CT20161111</td>
                    <td>孙站长</td>
                    <td>888888</td>
                    <td>18888888888</td>
                    <td>z@163.com</td>
                    <td>888888888</td>
                    <td>萌萌哒</td>
                    <td></td>
                    <td>大唐搅拌站</td>
                    <td>生产部</td>
                    <td>主任</td>
                    <td>客服一号</td>
                    <td>2016.11.11</td>
                    <td>有效</td>
                    <td>
                        <span class="left xg"><a href="../../customer/xzlxr.jsp"><button class="btn btn-info" style="color:#FFFFFF">修改</button></a></span>
                        <span class="right xg" onclick="Showbo.Msg.confirm('您确认要进行删除操作吗？')"><button class="btn btn-danger" style="color:#ffffff" >删除</button></span>

                    </td>
                </tr>
                <tr>
                    <td>CT20161112</td>
                    <td>李站长</td>
                    <td>888888</td>
                    <td>18888888888</td>
                    <td>z@163.com</td>
                    <td>888888888</td>
                    <td>你没有我萌萌哒</td>                    
                    <td></td>
                    <td>大唐搅拌站</td>
                    <td>生产部</td>
                    <td>主任</td>
                    <td>客服一号</td>
                    <td>2016.11.11</td>
                    <td>有效</td>
                    <td>
                        <span class="left xg"><a href="../../customer/xzlxr.jsp"><button class="btn btn-info" style="color:#FFFFFF">修改</button></a></span>
                        <span class="right xg" onclick="Showbo.Msg.confirm('您确认要进行删除操作吗？')"><button class="btn btn-danger" style="color:#ffffff">删除</button></span>
                    </td>
                </tr>
                <tr>
                    <td>CT20161113</td>
                    <td>赵站长</td>
                    <td>888888</td>
                    <td>18888888888</td>
                    <td>z@163.com</td>
                     <td>888888888</td>
                    <td>我比你萌萌哒</td>                   
                    <td></td>
                    <td>大唐搅拌站</td>
                    <td>生产部</td>
                    <td>主任</td>
                    <td>客服一号</td>
                    <td>2016.11.11</td>
                    <td>有效</td>
                    <td>
                        <span class="left xg"><a href="../../customer/xzlxr.jsp"><button class="btn btn-info" style="color:#FFFFFF">修改</button></a></span>
                        <span class="right xg" onclick="Showbo.Msg.confirm('您确认要进行删除操作吗？')"><button class="btn btn-danger" style="color:#ffffff">删除</button></span>
                    </td>
                </tr>
                <tr>
                    <td>CT20161111</td>
                    <td>孙站长</td>
                    <td>888888</td>
                    <td>18888888888</td>
                    <td>z@163.com</td>
                    <td>888888888</td>
                    <td>萌萌哒</td>
                    <td></td>
                    <td>大唐搅拌站</td>
                    <td>生产部</td>
                    <td>主任</td>
                    <td>客服一号</td>
                    <td>2016.11.11</td>
                    <td>有效</td>
                    <td>
                        <span class="left xg"><a href="../../customer/xzlxr.jsp"><button class="btn btn-info" style="color:#FFFFFF">修改</button></a></span>
                        <span class="right xg" onclick="Showbo.Msg.confirm('您确认要进行删除操作吗？')"><button class="btn btn-danger" style="color:#ffffff" >删除</button></span>

                    </td>
                </tr>
                <tr>
                    <td>CT20161112</td>
                    <td>李站长</td>
                    <td>888888</td>
                    <td>18888888888</td>
                    <td>z@163.com</td>
                    <td>888888888</td>
                    <td>你没有我萌萌哒</td>                    
                    <td></td>
                    <td>大唐搅拌站</td>
                    <td>生产部</td>
                    <td>主任</td>
                    <td>客服一号</td>
                    <td>2016.11.11</td>
                    <td>有效</td>
                    <td>
                        <span class="left xg"><a href="../../customer/xzlxr.jsp"><button class="btn btn-info" style="color:#FFFFFF">修改</button></a></span>
                        <span class="right xg" onclick="Showbo.Msg.confirm('您确认要进行删除操作吗？')"><button class="btn btn-danger" style="color:#ffffff">删除</button></span>
                    </td>
                </tr>
                <tr>
                    <td>CT20161113</td>
                    <td>赵站长</td>
                    <td>888888</td>
                    <td>18888888888</td>
                    <td>z@163.com</td>
                     <td>888888888</td>
                    <td>我比你萌萌哒</td>                   
                    <td></td>
                    <td>大唐搅拌站</td>
                    <td>生产部</td>
                    <td>主任</td>
                    <td>客服一号</td>
                    <td>2016.11.11</td>
                    <td>有效</td>
                    <td>
                        <span class="left xg"><a href="../../customer/xzlxr.jsp"><button class="btn btn-info" style="color:#FFFFFF">修改</button></a></span>
                        <span class="right xg" onclick="Showbo.Msg.confirm('您确认要进行删除操作吗？')"><button class="btn btn-danger" style="color:#ffffff">删除</button></span>
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
<!-- <div id="z_cen">
    <div class="sidebar" >
        <a class="left change_w user1" style="height:76px;">
            <p id="loginName" style="height:100%;line-height:76px;">唐杰</p>
        </a>
        <div class="a-group pull-right row" style="width:100%;text-align:center;">
            <a  class="left change_w" id="a" href="lx.html">
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
                    <a id="a" href="lx.html">
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
                    <a id="j" href="../taskAndItem/xm.jsp">
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
                    <a href="../limitAndMenu/qx.jsp">
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
<!-- <span id="btn2" href="javascript:void(0)"style="top:48%;right:0;height:80px; width: 36px;line-height:20px;border-radius:5px;" >功能列表</span> -->
<!-- <a id="btn1" href="javascript:void(0)" >功能列表</a> -->
<!-- <a  id="btn2" href='swindex.html'>返回首页</a> -->
<script src="js/app.js"></script>
</body>
</html>