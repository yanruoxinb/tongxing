<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/index.css"/>
    <link rel="stylesheet" href="css/tq.css">
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/change_style.css"/>
    <link rel="stylesheet" type="text/css" href="assets/bootstrap/css/font-awesome.min.css" />
    <script src="js/jquery-1.11.3.min.js"></script>
             <link rel="stylesheet" href="css/tqcss.css"/>
        <script src="js/showBo.js"></script>   
    <title>合同管理</title>
    <style>
#pz button:hover,#jsjd button:hover,#kpsk button:hover{
    color:#fff;
}
    </style>
</head>
<body>
<!------------------------------合同详情---------------------------------->
<div class="main-container container-fluid" class="top"style="padding-left: 0;">
<img src="./image/2.png" alt="">
</div>
<div class="main-container container-fluid" class="left"style="display:inline-block;    padding-left: 0;">
<img src="./image/1.png" alt=""style="width:230px;    height: 1300px;">
</div>

<div style="height200px;width:350px;font-size:26px;font-family:'华文行楷','Arial','Microsoft YaHei','黑体','宋体','sans-serif';margin:0 auto; border:1px solid #008cee;background-color:#008cee;color:#fff;z-index:999;display:inline-block;line-height:50px;text-align:center;border-radius:20px;position:absolute;right: 42%;top: 480px;display:none;" class="noticeCon">
    操作成功
</div>

<div class="contaner"  id="page2"style="width:86%;float:right;padding:0 35px;border:1px solid #ddd;    margin: 10px 10px 0 0;">
<a id="btn1" href="swindex.html"style="left: -30px;padding: 17px 10px;float: left;position: relative;" > 首页 / </a>
    <a class="btn1" href="javascript:void(0)"style="left: -30px;padding: 17px 5px;float: left;position: relative;" > 功能列表</a>
    <div class="section">
        <h3 class="baoxiao" style="margin:10px 0;">合同详情</h3>
        <!-- <form style="border:1px solid #ddd;padding:10px 20px;border-radius:5px;text-align:left;">
            <label>合同编号</label>&nbsp;&nbsp;
            <input type="text" placeholder="请输入" class="set"/>&nbsp;&nbsp;

            <label>费用类型</label>&nbsp;&nbsp;
            <input type="text" placeholder="输入合同名、客户名" class="set"/>&nbsp;&nbsp;

            <label>是否欠款</label>&nbsp;&nbsp;
            <select name="cr" class="set">
                <option value="">------请选择------</option>
                <option value="1">是</option>
                <option value="2">否</option>
            </select>&nbsp;&nbsp;
            <label>生效日期</label>&nbsp;&nbsp;
            <input type="date" placeholder="请选择申请时间" class="set" style="line-height: normal;"/>&nbsp;&nbsp;
            <button type="button" class="btn btn-info">搜索</button>
            <button type="button" class="btn btn-info">重置</button>
        </form> -->
       <!--  <div class="table-responsive htxq" style="margin-top:15px;">
            <table class="table table-bordered">
                <caption style="    text-align: left;font-weight:700;margin-bottom:10px;">合同列表</caption>
                <thead>
                <tr>
                    <td>合同编号</td>
                    <td>合同名称</td>
                    <td>合同金额</td>
                    <td>收款</td>
                    <td>欠款</td>
                    <td>开票</td>
                    <td>欠票</td>
                    <td>购货单位</td>
                    <td>客户名称</td>
                    <td>客户经办人</td>
                    <td>我方经办人</td>
                    <td>生效日期</td>
                    <td>部门审核</td>
                    <td>财务审核</td>
                    <td>操作</td>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>CDSW-2016</td>
                    <td>购软件合同</td>
                    <td>50000</td>
                    <td>30000</td>
                    <td>20000</td>
                    <td>1</td>
                    <td>1</td>
                    <td>大唐混凝土公司</td>
                    <td>唐三藏</td>
                    <td>悟空</td>
                    <td>八戒</td>
                    <td>2016.11.11</td>
                    <td>已审核</td>
                    <td>待审核</td>
                    <td style=" color:blue;cursor: pointer;" class="xq"><span class="left">详情</span><span class="right">修改</span></td>
                </tr>
                <tr>
                    <td>CDSW-2016</td>
                    <td>购软件合同</td>
                    <td>50000</td>
                    <td>30000</td>
                    <td>20000</td>
                    <td>1</td>
                    <td>1</td>
                    <td>大唐混凝土公司</td>
                    <td>唐三藏</td>
                    <td>悟空</td>
                    <td>八戒</td>
                    <td>2016.11.11</td>
                    <td>已审核</td>
                    <td>待审核</td>
                    <td style=" color:blue;cursor: pointer;" class="xq"><span class="left">详情</span><span class="right">修改</span></td>
                </tr>
                <tr>
                    <td>CDSW-2016</td>
                    <td>购软件合同</td>
                    <td>50000</td>
                    <td>30000</td>
                    <td>20000</td>
                    <td>1</td>
                    <td>1</td>
                    <td>大唐混凝土公司</td>
                    <td>唐三藏</td>
                    <td>悟空</td>
                    <td>八戒</td>
                    <td>2016.11.11</td>
                    <td>已审核</td>
                    <td>待审核</td>
                    <td style=" color:blue;cursor: pointer;" class="xq"><span class="left">详情</span><span class="right">修改</span></td>
                </tr>
                </tbody>
            </table>
        </div> -->
        <div class="big_box" >
        <div class="table-responsive" style="margin-top:15px;">
               <table class="table table-bordered">
                <caption style="    text-align: left;font-weight:700;margin-bottom:10px;">合同标的</caption>
<!--                     <thead>
                    <tr>
                        <td colspan="8">合同标的</td>
                    </tr>
                    </thead> -->
                    <tbody>
                    <tr>
                        <td>编号</td>
                        <td>产品名称</td>
                        <td>规格型号</td>
                        <td>品种</td>
                        <td>单位</td>
                        <td>级别</td>
                        <td>销售价格</td>
                        <td>状态</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>工业控制计算机</td>
                        <td>SW-848</td>
                        <td>思伟集成</td>
                        <td>台</td>
                        <td>1</td>
                        <td>8800</td>
                        <td>在售</td>
                    </tr>
                     <tr>
                        <td>5</td>
                        <td>工业计算机配件-机箱(含电源)</td>
                        <td>848</td>
                        <td>思伟集成</td>
                        <td>台</td>
                        <td>4</td>
                        <td>4000</td>
                        <td>在售</td>
                    </tr>
                    <tr>
                        <td>9</td>
                        <td>工业计算机配件-主板</td>
                        <td>SIWEI-8048</td>
                        <td>思伟集成</td>
                        <td>块</td>
                        <td>1</td>
                        <td>5000</td>
                        <td>在售</td>
                    </tr>                    
                    <tr>
                        <td>14</td>
                        <td>工业计算机配件-底板(848)</td>
                        <td>PS-7270B</td>
                        <td>思伟集成</td>
                        <td>块</td>
                        <td>3</td>
                        <td>1500</td>
                        <td>在售</td>
                    </tr>
                    <tr>
                        <td>18</td>
                        <td>工业计算机配件-底板(ATX)(828/848)</td>
                        <td>SW-848</td>
                        <td>思伟集成</td>
                        <td>台</td>
                        <td>2</td>
                        <td>1000</td>
                        <td>在售</td>
                    </tr>

                    </tbody>

                </table>
            </div>
            

           

            <div class="table-responsive" style="margin-top:15px;">
                <table class="table table-bordered">
                    <caption style="    text-align: left;font-weight:700;margin-bottom:10px;">合同详情</caption>
                    <thead>
                    <tr>
                        <td colspan="4">合同项目</td>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>编号</td>
                        <td>项目名称</td>
                        <td>金额</td>
                        <td>状态</td>
                    </tr>
                    <tr>
                        <td>01</td>
                        <td>大唐芙蓉园</td>
                        <td>50000</td>
                        <td>执行中</td>
                    </tr>
                    </tbody>

                </table>
            </div>
            <div class="table-responsive pz" style="margin:15px 0;" id="pz">
             <div  style="border:1px solid #ddd;height:52px;border-bottom:none;">
                     <div style="float:left;display:inline-block;    padding: 7px 7px;" class="pzgroup">
                            <button type="button" class="btn btnpz btnstyle" style="margin-right:10px;color:#fff">配置</button>
                            <button type="button" class="btn btnjsjd" style="margin-right:10px;color:#008cee">结算进度</button>
                            <button type="button" class="btn btnkpsk" style="margin-right:10px;color:#008cee">开票收款</button>
                        </div>
                 </div>
                <table class="table table-bordered">
                    <!-- <tr style="text-align:left">
                        <td colspan="7">
                            <button type="button" class="btn" style="background-color: #008cee;color: #fff;margin-right:10px;">配置</button>
                            <button type="button" class="btn" style="margin-right:10px;background-color: #008cee;color: #fff;">结算进度</button>
                            <button type="button" class="btn" style="margin-right:10px;background-color: #008cee;color: #fff;">开票收款</button>
                        </td>
                    </tr> -->
                    <tbody>
                    <tr>
                        <td>配置名称</td>
                        <td>规格型号</td>
                        <td>类别</td>
                        <td>品牌</td>
                        <td>数量</td>
                        <td>出库数</td>
                        <td>备注</td>
                    </tr>
                    <tr>
                        <td>思伟自动化生产软件</td>
                        <td>网络版</td>
                        <td>软件</td>
                        <td>思伟</td>
                        <td>1</td>
                        <td>1</td>
                        <td>无</td>
                    </tr>
                    </tbody>

                </table>
            </div>
        <div class="table-responsive jsjd" style="margin:15px 0;display:none" id="jsjd">
         <div  style="border:1px solid #ddd;height:52px;">
                      <div style="float:left;display:inline-block;    padding: 7px 7px;" class="pzgroup">
                            <button type="button" class="btn btnpz " style="margin-right:10px;color:#008cee">配置</button>
                            <button type="button" class="btn btnjsjd btnstyle" style="margin-right:10px;">结算进度</button>
                            <button type="button" class="btn btnkpsk" style="margin-right:10px;color:#008cee">开票收款</button>
                        </div>
                 </div>
                <table class="table table-bordered">
                <tbody>
                    <tr>
                        <td>结算类型</td>
                        <td>期限</td>
                        <td>结算比例(%)</td>
                        <td>应付金额</td>
                        <td>应付时间</td>
                        <td>实际付款</td>
                        <td>实付时间</td>
                        <td>是否结清</td>
                        <td>备注</td>
                    </tr>
                    <tr>
                        <td>生效后</td>
                        <td><!-- <input type="text"value="3"style="outline:none;list-style:none;width:50px;"> -->3</td>
                        <td>50</td>
                        <td>25000</td>
                        <td>2016-11-05</td>
                        <td>25000</td>
                        <td>2016-11-08</td>
                        <td>/</td>
                        <td>/</td>
                    </tr>
                    <tr>
                        <td>发货前</td>
                        <td><!-- <input type="text"value="4"style="outline:none;list-style:none;width:50px;"> -->4</td>
                        <td>50</td>
                        <td>25000</td>
                        <td>2016-11-05</td>
                        <td>25000</td>
                        <td>2016-11-09</td>
                        <td>/</td>
                        <td>/</td>                    
                    </tr>
                    <tr>
                        <td>试运行</td>
                        <td><!-- <input type="text"value="8"style="outline:none;list-style:none;width:50px;"> -->8</td>
                        <td>50</td>
                        <td>25000</td>
                        <td>2016-11-05</td>
                        <td>25000</td>
                        <td>2016-11-13</td>
                        <td>/</td>
                        <td>/</td>
                    </tr>
                    <tr>
                        <td>验收后</td>
                        <td><!-- <input type="text"value="7"style="outline:none;list-style:none;width:50px;"> -->7</td>
                        <td>50</td>
                        <td>25000</td>
                        <td>2016-11-05</td>
                        <td>25000</td>
                        <td>2016-11-12</td>
                        <td>/</td>
                        <td>/</td>
                    </tr>
                    </tbody>

                </table>
            </div>



                <div class="table-responsive" style="margin:15px 0;display:none" id="kpsk">
                 <div  style="border:1px solid #ddd;height:52px;">
                      <div style="float:left;display:inline-block;    padding: 7px 7px;" class="pzgroup">
                            <button type="button" class="btn btnpz " style="margin-right:10px;color:#008cee">配置</button>
                            <button type="button" class="btn btnjsjd" style="margin-right:10px;color:#008cee">结算进度</button>
                            <button type="button" class="btn btnkpsk btnstyle" style="margin-right:10px;">开票收款</button>
                        </div>
<!--                         <div  style="float:right;display:inline-block;padding: 7px 7px;">
                            <a href="kpxz.jsp"><button type="button" class="btn newAddbtn" style="margin-right:10px;background-color: #008cee;color: #fff;">新增</button></a>
                            <button type="button" class="btn btn-danger" style="margin-right:10px;color: #fff;" onclick="Showbo.Msg.confirm('您确认要进行删除操作吗？')">删除</button>
                            <a href="kpskxg.jsp"><button type="button" class="btn btn-info" style="margin-right:10px;color: #fff;">修改</button></a>
                        </div> -->
                 </div>
                        
                <table class="table table-bordered">    
                    <tbody>
                    <tr>
                        <td>编号</td>
                        <td>性质</td>
                        <td>状态</td>
                        <td>金额</td>
                        <td>票据编号</td>
                        <td>票据类型</td>
                        <td>财务负责</td>
                        <td>经办人</td>
                        <td>办理日期</td>
                        <!-- <td>操作</td> -->
                    </tr>
                    <tr class="kpsk_01">
                        <td>01</td>
                        <td>收款</td>
                        <td>生效</td>
                        <td>50000</td>
                        <td></td>
                        <td>汇款</td>
                        <td>李会计</td>
                        <td>悟空</td>
                        <td>2016.11.11</td>
                      <!--  <td>
                           <a href="kpxz.jsp"><button type="button" class="btn newAddbtn" style="margin-right:10px;background-color: #008cee;color: #fff;">新增</button></a>
                            <button type="button" class="btn btn-danger" style="margin-right:10px;color: #fff;" onclick="Showbo.Msg.confirm('您确认要进行删除操作吗？')">删除</button>
                            <a href="kpskxg.jsp"><button type="button" class="btn btn-info" style="margin-right:10px;color: #fff;">修改</button></a>
                       </td> -->
                    </tr>
                    </tbody>

                </table>
            </div>
              <!-- 内部结算 -->
            <div class="table-responsive" style="margin:15px 0;">
                <table class="table table-bordered" style="margin-bottom:15px;">
                    <caption style="    text-align: left;font-weight:700;margin-bottom:10px;">内部结算</caption>
                    <tbody>
                    <tr>
                        <td>项目编号</td>
                        <td>项目名称</td>
                        <td>工程师</td>
                        <td>联系方式</td>
                        <td>到达时间</td>
                        <td>完成时间</td>
                        <td>任务类型</td>
                        <td>薪酬</td>
                        <td>结算规则</td>
                    </tr>
                    <tr>
                        <td>01</td>
                        <td>湖北秦丰</td>
                        <td>王工</td>
                        <td>13979101234</td>
                        <td>2016-11-05 09:09:09</td>
                        <td>2016-12-06 13:45:27</td>
                        <td>走访客户</td>
                        <td>5000</td>
                        <td>/</td>
                    </tr>
                    <tr>
                        <td>02</td>
                        <td>武汉建安</td>
                        <td>李工</td>
                        <td>13879104321</td>
                        <td>2016-11-05 09:09:09</td>
                        <td>2016-12-06 13:45:27</td>
                        <td>安装调试</td>
                        <td>4000</td>
                        <td>/</td>               
                    </tr>
                    <tr>
                       <td>03</td>
                        <td>西安拓日</td>
                        <td>贺工</td>
                        <td>13979101234</td>
                        <td>2016-11-18 19:27:10</td>
                        <td>2016-12-06 13:45:27</td>
                        <td>走访客户</td>
                        <td>5000</td>
                        <td>/</td>
                    </tr>
                    <tr>
                        <td>04</td>
                        <td>云南筑达</td>
                        <td>张工</td>
                        <td>13979101234</td>
                        <td>2016-11-05 09:09:09</td>
                        <td>2016-12-06 13:45:27</td>
                        <td>检测试验</td>
                        <td>5000</td>
                        <td>/</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
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
                    <a id="a" href="../views/manage/lx.jsp">
                        <img src="image/联系人管理.png" class="col-lg-offset-2">
                        <span class="list">联系人管理</span>
                    </a>
                </li>

                <li class="row info col-lg-12">
                    <a id="c" href="ht.jsp">
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
                    <a id="j" href="../views/manage/xm.jsp">
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
                    <a id="e" href="../views/manage/yh.jsp">
                        <img src="image/用户管理.png" class="col-lg-offset-2">
                        <span class="list">用户管理</span>
                    </a>
                </li>
                <li class="row info col-lg-12">
                    <a href="../views/manage/qx.jsp">
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