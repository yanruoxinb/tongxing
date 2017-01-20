
<%--
  Created by IntelliJ IDEA.
  User: sw-112
  Date: 2017-01-16
  Time: 14:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <jsp:include page="../public/lib.jsp"></jsp:include>
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
    <div class="big_box" >
      <div id="wc_mark" class="table-responsive" style="margin-top:15px;">

        <table class="table table-bordered">
          <caption style="    text-align: left;font-weight:700;margin-bottom:10px;">合同标的</caption>
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
            <td>3</td>
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
            <td>4</td>
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
            <td>8</td>
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
            <td>7</td>
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
                  <a id="c" href="ht.html">
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
                  <a id="j" href="xm.html">
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
                  <a id="e" href="yh.html">
                    <img src="image/用户管理.png" class="col-lg-offset-2">
                    <span class="list">用户管理</span>
                  </a>
                </li>
                <li class="row info col-lg-12">
                  <a href="qx.html">
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
<script>
  $(function(){
    callSapiServer("/contract/mark",function(data){
//      console.log(data);
      userBody1(data);
    },"GET");
  });

  function userBody1(data){
    //列名初始化
    var head = ["编号","产品名称","规格型号","品种","单位","级别","销售单位","级别","销售价格","状态","操作"];
    tab_jsonTable($("#wc_mark"), data.result, head,
            function (td, row, col, content) {
              $(td).css("text-align", "center");//添加td的样式
              //初始化每一行的数据
              switch (col) {
                case 0:
                  return nullToString(content.id) + "<input name='id' type='hidden' value='"+content.id+"'>";
                case 1:
                  return nullToString(content.productName);
                case 2:
                  return nullToString(content.specificationModel);
                case 3:
                  return nullToString(content.kind);
                case 4:
                  return nullToString(content.uuit);
                case 5:
                  return nullToString(content.level);
                case 6:
                  return nullToString(content.price);
                case 7:
                  return nullToString(content.status);
                case 8:
                  return "<a href=''>修改</a><a href='javascript:void(0);'>删除</a>";
                default :
                  return null;
              }
            }, function (table) {
              //设置table的样式
              $(table).addClass("table table-bordered");
            })
  }
</script>
</body>
</html>