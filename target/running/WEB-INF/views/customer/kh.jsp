<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>客户管理</title>
    <style>
.width{
    width: 7%;
}
.contaner {
    margin-right:10px;
}
.row img{
    width: 20px;
    height: 20px;
}
.row a{
    font-weight: bold;
    /*color:#E3C477;*/
    color:#fff;
}
.olct_con li{
    outline: none;
    list-style: none;
    padding:11px 10px;
    line-height: 18px;
    font-size: 14px;
    font-family: '微软雅黑', '幼圆雅黑', Sans-serif;
    color: #fff;
}
.olct_con li span{
    padding-left:10px ;
}
    </style>


</head>
<body>
<!------------------------------客户管理---------------------------------->
<jsp:include page="../public/menulist.jsp"></jsp:include>
<jsp:include page="../public/lib.jsp"></jsp:include>
<div style="height:200px;width:350px;font-size:26px;font-family:'华文行楷','Arial','Microsoft YaHei','黑体','宋体','sans-serif';margin:0 auto; border:1px solid #008cee;background-color:#008cee;color:#fff;z-index:999;display:inline-block;line-height:50px;text-align:center;border-radius:20px;position:absolute;right: 42%;top: 480px;display:none;" class="noticeCon">
    操作成功
</div>

<div class="contaner"  id="page3"style="width:86%;float:right;padding:0 35px;border:1px solid #ddd;">
    <a id="btn1" href="swindex.html"style="left: -30px;padding: 17px 10px;float: left;position: relative;" > 首页 / </a>
    <a class="btn1" href="javascript:void(0)"style="left: -30px;padding: 17px 5px;float: left;position: relative;" > 功能列表</a>
    <div class="section">
        <h3 class="baoxiao" style="margin:10px 0;">客户管理</h3>
        <form style="border:1px solid #ddd;padding:10px 20px;border-radius:5px;text-align:left;margin:5px 0;">

            <label>名称</label>&nbsp;&nbsp;
            <input type="text" placeholder="请输入客户名" class="noset width"/>&nbsp;&nbsp;

            <label>省份</label>&nbsp;&nbsp;
            <select name="set" class="noset">
                <option value="">-----请选择-----</option>
                <option value="1">陕西省</option>
                <option value="2">上海市</option>
                <option value="3">北京市</option>
            </select>&nbsp;&nbsp;

            <label>县区</label>&nbsp;&nbsp;
            <select name="cr"  class="noset">
                <option value="">-----请选择-----</option>
                <option value="1">蓝田县</option>
                <option value="2">户县</option>
                <option value="3">高陵县</option>
            </select>&nbsp;&nbsp;

            <label>等级</label>&nbsp;&nbsp;
            <select name="zt"  class="noset">
                <option value="">-----请选择-----</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
            </select>&nbsp;&nbsp;

            <label>状态</label>&nbsp;&nbsp;
            <select name="zt"  class="noset">
                <option value="">-----请选择-----</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
            </select>&nbsp;&nbsp;

            <label>客户性质</label>&nbsp;&nbsp;
            <select name="zt"  class="noset">
                <option value="">-----请选择-----</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
            </select>&nbsp;&nbsp;


            <label>来源</label>&nbsp;&nbsp;
            <input type="text" placeholder="请输入客户来源" class="noset width"/>&nbsp;&nbsp;

            <label>创建时间</label>&nbsp;&nbsp;
            <input type="date" placeholder="请选择申请时间" class="noset" style="line-height: normal;"/>&nbsp;&nbsp;


            <button type="button" class="btn pull-right" style="margin:0 10px;background-color: #008cee;color: #fff">搜索</button>
            <button type="reset" class="btn pull-right" style="background-color: #008cee;color: #fff">重置</button>
            <div>
                <a href="${ctx}/customer/toCustomerTjkh"><button type="button" class="btn pull-left" style="    margin: 20px 0 10px 0;background-color: #008cee;color: #fff">新增</button></a>
            </div>

        </form>

        <div class="table-responsive" style="margin:15px 0; " id="customerList">

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
                    <img src="../../../image/警示.png" alt="" style="width:30px;height:30px;margin-right:10px;">
                    您确认要进行保存操作吗？
                    <div class="clear">
                        <img src="../../../image/bottom_smile.png" alt="">
                    </div>
                </div>
            </div>
        </div>
        <div class="bottom" id="dvMsgBottom" style="height: 45px;">
            <div class="right">
                <div class="" id="dvMsgBtns">
                    <div class="height"></div>
                    <input type="button" class="btn2 btn_confirm_cancel" value="确认" id="btn_confirm_deleteCustomer">　
                    <input type="button" class="btn2 btn_confirm_cancel" value="取消" id="btn_confirm_cancel">
                </div>
            </div>
        </div>
    </div>
    <div id="ShowBolightBox" style=" width: 1932px; height: 100%;display:none;"></div>
    <div id="zhe" style="display:none;"></div>
    </div>
<!-- <a id="btn1" href="javascript:void(0)" >功能列表</a> -->
<!-- <a  id="btn2" href='swindex.html'>返回首页</a> -->
<script src="../../../js/app.js"></script>
</body>
</html>
<script>
    //初始化方法
    $(function(){
        callSapiServer("/customer/kh",function(data){
            list(data);
            console.log(data);
        },"GET");
    });

    function list(data){
        //列名初始化
        var head = ["客户编号","客户名称","客户性质","主要业务","等级","状态","上属公司","企业性质","省份","城市","详细地址","联系电话","来源","添加时间","添加人","详情","操作"];
        tab_jsonTable($("#customerList"), data.result, head,
                function (td, row, col, content) {
                    $(td).css("text-align", "center");//添加td的样式
                    //初始化每一行的数据
                    switch (col) {
                        case 0:
                            return nullToString(content.id) + "<input name='id' type='hidden' value='"+content.id+"'>";
                        case 1:
                            return "<a href='javascript:void(0);'>" + nullToString(content.customerName) + "</a>";
                        case 2:
                            return nullToString(content.customerProperty);
                        case 3:
                            return nullToString(content.mainBusiness);
                        case 4:
                            return nullToString(content.level);
                        case 5:
                            var statusText = "";
                            if(content.status == null || content.status == "") {
                                statusText = "--";
                            } else if(content.status == 0) {
                                statusText = "工作中";
                            }  else if(content.status == 1) {
                                statusText = "休息中";
                            } else {
                                statusText = "异常";
                            }
                            return statusText;
                        case 6:
                            return nullToString(content.superiorBelong);
                        case 7:
                            return nullToString(content.enterpriseProperty);
                        case 8:
                            return nullToString(content.province);
                        case 9:
                            return nullToString(content.county);
                        case 10:
                            return nullToString(content.address);
                        case 11:
                            return nullToString(content.fixedPhone);
                        case 12:
                            return nullToString(content.added);
                        case 13:
                            return nullToString(content.addedTime);
                        case 14:
                            var statusText = "";
                            if(content.status == null || content.status == "") {
                                statusText = "--";
                            } else if(content.status == 0) {
                                statusText = "工作中";
                            }  else if(content.status == 1) {
                                statusText = "休息中";
                            } else {
                                statusText = "异常";
                            }
                            return statusText;
                        case 15:
                            var html = '<button name="select">详情</button>';
                            return $(html);
                        case 16:
                            var html = '<button name="update">修改</button>&nbsp;<button name="delete">删除</button>';
                            return $(html);
                        default :
                            return null;
                    }
                }, function (table) {
                    //设置table的样式
                    $(table).addClass("table table-striped table-hover table-bordered");
                    $(table).attr("border","1");
                    //通过检索table里面所有button赋值，当button的name为delete时，为它执行删除操作
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
                            callSapiServer("/customer/delete",function(data){
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
                        var tr = $(this).parents("tr");
                        var id = $(this).parents("tr").find("input[name='id']").val();
                        window.location.href = ctx + "/customer/toUpdate?userId=" + id;
                    });
                    $(table).find("button[name='select']").click(function(){
                        var tr = $(this).parents("tr");
                        var id = $(this).parents("tr").find("input[name='id']").val();
                        window.location.href = ctx + "/customer/toKhxq?userId=" + id;
                    });
                })
    }
</script>
