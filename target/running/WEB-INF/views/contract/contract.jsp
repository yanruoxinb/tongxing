<%--
  Created by IntelliJ IDEA.
  User: sw-112
  Date: 2017-01-16
  Time: 9:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="/css/index.css"/>
  <link rel="stylesheet" href="/css/tq.css">
  <link rel="stylesheet" href="/css/bootstrap.min.css"/>
  <link rel="stylesheet" href="/css/change_style.css"/>
  <link rel="stylesheet" type="text/css" href="/assets/bootstrap/css/font-awesome.min.css" />
  <script src="/js/jquery-1.11.3.min.js"></script>
  <link rel="stylesheet" href="/css/tqcss.css"/>
  <script src="/js/showBo.js"></script>
  <script type="text/javascript" src="/js/jquery-2.0.3.min.js" charset="UTF-8"></script>
  <script type="text/javascript" src="/js/bootstrap.min.js" charset="UTF-8"></script>
  <script type="text/javascript" src="/js/common.js" charset="UTF-8"></script>
  <title>合同管理</title>
</head>
<body>
<!------------------------------合同管理---------------------------------->
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
    <h3 class="baoxiao">合同管理</h3>
    <form style="border:1px solid #ddd;padding:10px 20px;border-radius:5px;text-align:left;">
      <label>合同编号</label>&nbsp;&nbsp;
      <input type="text" placeholder="请输入合同编号" class="set"/>&nbsp;&nbsp;

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
      <button type="button" class="btn" style="background-color: #008cee;color: #fff">搜索</button>
      <button type="reset" class="btn" style="background-color: #008cee;color: #fff">重置</button>
    </form>
    <div class="table-responsive htxq" id="table-responsive1" style="margin-top:15px;"></div>
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
                    <img src="" class="col-lg-offset-2">
                    <span class="list">报销管理</span>
                  </a>
                </li>
                <li class="row info col-lg-12">
                  <a id="e" href="yh.html">
                    <img src="" class="col-lg-offset-2">
                    <span class="list">用户管理</span>
                  </a>
                </li>
                <li class="row info col-lg-12">
                  <a href="qx.html">
                    <img src="" class="col-lg-offset-2">
                    <span class="list">权限管理</span>
                  </a>
                </li>

                <li class="row info col-lg-12">
                  <a href="cdmang.html">
                    <img src="" class="col-lg-offset-2">
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
<script src="/js/app.js"></script>

<script>
  $(function(){
    callSapiServer("/contract/see",function(data){
      console.log(data);
      userBody1(data);
    },"GET");
  });

  function userBody1(data){
    //列名初始化
    var head = ["合同编号","合同金额","收款","欠款","开票","欠票","购货单位","客户名称","客户经办人","我方经办人","生效日期","部门审核","财务审核","操作"];
    tab_jsonTable($("#table-responsive1"), data.result, head,
            function (td, row, col, content) {
              $(td).css("text-align", "center");//添加td的样式
              //初始化每一行的数据
              switch (col) {
                case 0:
                  return nullToString(content.contractName) + "<input name='id' type='hidden' value='"+content.id+"'>";
                case 1:
                  return nullToString(content.contractMoney);
                case 2:
                  return nullToString(content.gathering);
                case 3:
                  return nullToString(content.debt);
                case 4:
                  var statusText = "";
                  if(content.isTicket == null || content.isTicket == "") {
                    statusText = "--";
                  } else if(content.isTicket == 0) {
                    statusText = "是";
                  }  else if(content.isTicket == 1) {
                    statusText = "否";
                  } else {
                    statusText = "异常";
                  }
                  return statusText;

                case 5:
                  var statusText = "";
                  if(content.isOwe == null || content.isOwe == "") {
                    statusText = "--";
                  } else if(content.isOwe == 0) {
                    statusText = "是";
                  }  else if(content.isOwe == 1) {
                    statusText = "否";
                  } else {
                    statusText = "异常";
                  }
                  return statusText;
                case 6:
                  return nullToString(content.purchaseUnit);
                case 7:
                  return nullToString(content.customer);
                case 8:
                  return nullToString(content.otherAgent);
                case 9:
                  return nullToString(content.ourAgent);
                case 10:
                  return nullToString(content.contractDate);
                case 11:
                  var statusText = "";
                  if(content.departmentAudit == 0) {
                    statusText = "已审核";
                  }  else if(content.departmentAudit == 1) {
                    statusText = "未审核";
                  } else {
                    statusText = "异常";
                  }
                  return statusText;
                case 12:
                  var statusText = "";
                  if(content.financeAudit == 0) {
                    statusText = "已审核";
                  }  else if(content.financeAudit == 1) {
                    statusText = "未审核";
                  } else {
                    statusText = "异常";
                  }
                  return statusText;
                case 13:
                    var html = '<button name="update">修改</button>&nbsp;<button name="delete">删除</button>';
                    return $(html);

// 点击事件有问题                 return "<input type='button' name='delete' value='删除'/>&nbsp;<input type='button' name='modify' value='修改'/>";

                default :
                  return null;
              }
            },

            function (table) {
              //设置table的样式
              $(table).addClass("table table-bordered");
              $(table).find("button[name='delete']").click(function(){
                var flag = confirm("您确定删除该元数据吗？一旦删除，将无法恢复！");
                var tr = $(this).parents("tr");
                if(flag) {
                  //检索当前行中，name为id的input
                  var id = $(this).parents("tr").find("input[name='id']").val();
                  //参数列表
                  var json = {
                    id : id
                  };
                  //请求后台
                  callSapiServer("/contract/delete",function(data){
                    //成功后，执行此回调函数
                    alert(data.message);
                    if(data.code == 200) {
                      //如果后台删除成功，直接删除当前行，不需要再请求后台，减少后台压力
                      $(tr).remove();
                    }
                  },"POST",json);
                }
              });
              $(table).find("button[name='update']").click(function(){
                var flag = confirm("您确定修改该元数据吗？一旦删除，将无法恢复！");
              });
            })
  }

</script>

</body>
</html>