<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>合同管理</title>
</head>
<body>
<!------------------------------合同管理---------------------------------->
<jsp:include page="../layout/menu.jsp"></jsp:include>
<jsp:include page="../public/lib.jsp"></jsp:include>
<div style="height:200px;width:350px;font-size:26px;font-family:'华文行楷','Arial','Microsoft YaHei','黑体','宋体','sans-serif';margin:0 auto; border:1px solid #008cee;background-color:#008cee;color:#fff;z-index:999;display:inline-block;line-height:50px;text-align:center;border-radius:20px;position:absolute;right: 42%;top: 480px;display:none;" class="noticeCon">
    操作成功
</div>

<div class="contaner"  id="page2"style="width:86%;float:right;padding:0 35px;border:1px solid #ddd;    margin: 10px 10px 0 0;">
<a id="btn1" href="{ctx}/index.jsp"style="left: -30px;padding: 17px 10px;float: left;position: relative;" > 首页 / </a>
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
        </form>\
   <div class="table-responsive" id="table-responsive1" style="margin-top:15px;">

        <div class="table-responsive htxq" style="margin-top:15px;">
            <table class="table table-bordered">
                <caption style="    text-align: left;font-weight:700;margin-bottom:10px;">合同列表</caption>
                <thead>
                <tr>
                    <td>合同编号</td>
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
                    <td style=" color:blue;cursor: pointer;" class="xq">
                             <a href="htxq.jsp"><span class="left"><button class="btn"> 详情</button></span></a>
                            <a href="htxqxg.jsp"><span class="right"><button class="btn btn-info" style="color: #ffffff" >修改</button></span></a>
                    </td>
                </tr>
                <tr>
                    <td>CDSW-2016</td>
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
                    <td style=" color:blue;cursor: pointer;" class="xq"><a href="htxq.jsp"><span class="left"><button class="btn"> 详情</button></span></a><a href="htxqxg.jsp"><span class="right"><button class="btn btn-info" style="color: #ffffff" >修改</button></span></a></td>
                </tr>
                <tr>
                    <td>CDSW-2016</td>
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
                    <td style=" color:blue;cursor: pointer;" class="xq"><a href="htxq.jsp"><span class="left"><button class="btn"> 详情</button></span></a><a href="htxqxg.jsp"><span class="right"><button class="btn btn-info" style="color: #ffffff" >修改</button></span></a></td>
                </tr>
                 <tr>
                    <td>CDSW-2016</td>
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
                    <td style=" color:blue;cursor: pointer;" class="xq">
                             <a href="htxq.jsp"><span class="left"><button class="btn"> 详情</button></span></a>
                            <a href="htxqxg.jsp"><span class="right"><button class="btn btn-info" style="color: #ffffff" >修改</button></span></a>
                    </td>
                </tr>
                <tr>
                    <td>CDSW-2016</td>
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
                    <td style=" color:blue;cursor: pointer;" class="xq"><a href="htxq.jsp"><span class="left"><button class="btn"> 详情</button></span></a><a href="htxqxg.jsp"><span class="right"><button class="btn btn-info" style="color: #ffffff" >修改</button></span></a></td>
                </tr>
                <tr>
                    <td>CDSW-2016</td>
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
                    <td style=" color:blue;cursor: pointer;" class="xq"><a href="htxq.jsp"><span class="left"><button class="btn"> 详情</button></span></a><a href="htxqxg.jsp"><span class="right"><button class="btn btn-info" style="color: #ffffff" >修改</button></span></a></td>
                </tr>
                 <tr>
                    <td>CDSW-2016</td>
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
                    <td style=" color:blue;cursor: pointer;" class="xq">
                             <a href="htxq.jsp"><span class="left"><button class="btn"> 详情</button></span></a>
                            <a href="htxqxg.jsp"><span class="right"><button class="btn btn-info" style="color: #ffffff" >修改</button></span></a>
                    </td>
                </tr>
                <tr>
                    <td>CDSW-2016</td>
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
                    <td style=" color:blue;cursor: pointer;" class="xq"><a href="htxq.jsp"><span class="left"><button class="btn"> 详情</button></span></a><a href="htxqxg.jsp"><span class="right"><button class="btn btn-info" style="color: #ffffff" >修改</button></span></a></td>
                </tr>
                <tr>
                    <td>CDSW-2016</td>
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
                    <td style=" color:blue;cursor: pointer;" class="xq"><a href="htxq.jsp"><span class="left"><button class="btn"> 详情</button></span></a><a href="htxqxg.jsp"><span class="right"><button class="btn btn-info" style="color: #ffffff" >修改</button></span></a></td>
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
        <div class="table-responsive htxq" style="margin-top:15px;">
            <table class="table table-bordered">
                <caption style="    text-align: left;font-weight:700;margin-bottom:10px;">合同列表</caption>
                <thead>
                <tr>
                    <td>合同编号</td>
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
                    <td style=" color:blue;cursor: pointer;" class="xq">
                             <a href="htxq.jsp"><span class="left"><button class="btn"> 详情</button></span></a>
                            <a href="htxqxg.jsp"><span class="right"><button class="btn btn-info" style="color: #ffffff" >修改</button></span></a>
                    </td>
                </tr>
                <tr>
                    <td>CDSW-2016</td>
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
                    <td style=" color:blue;cursor: pointer;" class="xq"><a href="htxq.jsp"><span class="left"><button class="btn"> 详情</button></span></a><a href="htxqxg.jsp"><span class="right"><button class="btn btn-info" style="color: #ffffff" >修改</button></span></a></td>
                </tr>
                <tr>
                    <td>CDSW-2016</td>
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
                    <td style=" color:blue;cursor: pointer;" class="xq"><a href="htxq.jsp"><span class="left"><button class="btn"> 详情</button></span></a><a href="htxqxg.jsp"><span class="right"><button class="btn btn-info" style="color: #ffffff" >修改</button></span></a></td>
                </tr>
                 <tr>
                    <td>CDSW-2016</td>
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
                    <td style=" color:blue;cursor: pointer;" class="xq">
                             <a href="htxq.jsp"><span class="left"><button class="btn"> 详情</button></span></a>
                            <a href="htxqxg.jsp"><span class="right"><button class="btn btn-info" style="color: #ffffff" >修改</button></span></a>
                    </td>
                </tr>
                <tr>
                    <td>CDSW-2016</td>
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
                    <td style=" color:blue;cursor: pointer;" class="xq"><a href="htxq.jsp"><span class="left"><button class="btn"> 详情</button></span></a><a href="htxqxg.jsp"><span class="right"><button class="btn btn-info" style="color: #ffffff" >修改</button></span></a></td>
                </tr>
                <tr>
                    <td>CDSW-2016</td>
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
                    <td style=" color:blue;cursor: pointer;" class="xq"><a href="htxq.jsp"><span class="left"><button class="btn"> 详情</button></span></a><a href="htxqxg.jsp"><span class="right"><button class="btn btn-info" style="color: #ffffff" >修改</button></span></a></td>
                </tr>
                 <tr>
                    <td>CDSW-2016</td>
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
                    <td style=" color:blue;cursor: pointer;" class="xq">
                             <a href="htxq.jsp"><span class="left"><button class="btn"> 详情</button></span></a>
                            <a href="htxqxg.jsp"><span class="right"><button class="btn btn-info" style="color: #ffffff" >修改</button></span></a>
                    </td>
                </tr>
                <tr>
                    <td>CDSW-2016</td>
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
                    <td style=" color:blue;cursor: pointer;" class="xq"><a href="htxq.jsp"><span class="left"><button class="btn"> 详情</button></span></a><a href="htxqxg.jsp"><span class="right"><button class="btn btn-info" style="color: #ffffff" >修改</button></span></a></td>
                </tr>
                <tr>
                    <td>CDSW-2016</td>
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
                    <td style=" color:blue;cursor: pointer;" class="xq"><a href="/contract/go/detail?id=1"><span class="left"><button class="btn"> 详情</button></span></a><a href="htxqxg.jsp"><span class="right"><button class="btn btn-info" style="color: #ffffff" >修改</button></span></a></td>
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
</div>
</div>

<!-- <a id="btn1" href="javascript:void(0)" >功能列表</a> -->
<!-- <a  id="btn2" href='swindex.html'>返回首页</a> -->


<script>
    $(function(){
        callSapiServer("/contract/see",function(data){
            console.log(data);
            userBody1(data);
        },"GET");
    });





    function userBody1(data){
        //列名初始化
        var head = ["合同编号","合同金额","收款","欠款","开票","欠票","购货单位","客户名称","客户经办人","我方经办人","生效日期","部门审核","财务审核","详情","操作"];
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
                            var html = '<button name="select">详情</button>';
                            return $(html);
                        case 14:
                            var html = '<button name="update">修改</button>&nbsp;<button name="delete">删除</button>';
                            return $(html);
// 点击事件有问题
//        return "<input type='button' name='delete' value='删除'/>&nbsp;<input type='button' name='modify' value='修改'/>";
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