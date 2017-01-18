<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>合同管理</title>
    <style>
        #pz button:hover, #jsjd button:hover, #kpsk button:hover {
            color: #fff;
        }
    </style>
</head>
<body>
<!------------------------------合同详情---------------------------------->

<jsp:include page="../layout/menu.jsp"></jsp:include>
<jsp:include page="../public/lib.jsp"></jsp:include>
<div style="height:50px;width:350px;font-size:26px;font-family:'华文行楷','Arial','Microsoft YaHei','黑体','宋体','sans-serif';margin:0 auto; border:1px solid #008cee;background-color:#008cee;color:#fff;z-index:999;display:inline-block;line-height:50px;text-align:center;border-radius:20px;position:absolute;right: 42%;top: 480px;display:none;"
     class="noticeCon">
    操作成功
</div>
<input type="hidden" id="pid" value="${id}">
<div class="contaner" id="page2"
     style="width:86%;float:right;padding:0 35px;border:1px solid #ddd;    margin: 10px 10px 0 0;">
    <a id="btn1" href="${ctx}/swindex.jsp" style="left: -30px;padding: 17px 10px;float: left;position: relative;"> 首页 / </a>
    <a class="btn1" href="javascript:void(0)" style="left: -30px;padding: 17px 5px;float: left;position: relative;">
        功能列表</a>
    <div class="section">
        <h3 class="baoxiao" style="margin:10px 0;">合同详情</h3>

        <div class="big_box">
            <div class="table-responsive" style="margin-top:15px;">
                <table class="table table-bordered">
                    <caption style="text-align: left;font-weight:700;margin-bottom:10px;">合同标的</caption>
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
                <table class="table table-bordered" id="c-project">
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
            <div style="margin: 15px  0 0 0;">
                <div style="border:1px solid #ddd;height:52px;border-bottom:none;">
                    <div style="float:left;display:inline-block;    padding: 7px 7px;" class="pzgroup1">
                        <button type="button" class="btn btnpz toggle_htbgc" style="margin-right:10px;">配置
                        </button>
                        <button type="button" class="btn btnCraftDetail" style="margin-right:10px;">工艺明细</button>
                        <button type="button" class="btn btnjsjd" style="margin-right:10px;">结算进度</button>
                        <button type="button" class="btn btnkpsk" style="margin-right:10px;">开票收款</button>
                    </div>
                </div>
            </div>

            <div class="table-responsive pz" style=" " id="pz">
                <table class="table table-bordered" id="addSettingTable">
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
                        <td><input type="text" value="思伟自动化生产软件"></td>
                        <td><input type="text" value="网络版"></td>
                        <td><input type="text" value="软件"></td>
                        <td><input type="text" value="思伟"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="无"></td>
                    </tr>
                    </tbody>

                </table>
            </div>
            <!--结算进度-->
            <div class="table-responsive pz" style=" display: none;" id="htjsjd">
                <table class="table table-bordered" id="addCountProgressTable">
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
                        <td>3</td>
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
            <!--工艺明细-->
            <div class="table-responsive pz" style=" display: none;" id="htgymx">
                <fieldset id="fieldset4" class="fieldset4">
                    <%--<legend style="color:#008cee;line-height:20px;">项目工艺明细</legend>--%>
                    <table class="table table-bordered" id="addCraftDetailTable">
                        <thead>
                        <tr>
                            <td>生产线</td>
                            <td>水泥仓</td>
                            <td>容量</td>
                            <td>水泥料</td>
                            <td>程序代码</td>
                            <td>粉料仓</td>
                            <td>配套厂家</td>
                            <td>粉料称</td>
                            <td>控制系统</td>
                            <td>水仓</td>
                            <td>水称</td>
                            <td>拌站形式</td>
                            <td>骨料仓</td>
                            <td>骨料称</td>
                            <td>外加剂仓</td>
                            <td>外加剂称</td>
                            <td>机器</td>
                            <td>版本</td>
                            <td>配置</td>
                            <td>聚合存储测量</td>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td><input type="text" value="1"></td>
                            <td><input type="text" value="1"></td>
                            <td><input type="text" value="1"></td>
                            <td><input type="text" value="1"></td>
                            <td><input type="text" value="1"></td>
                            <td><input type="text" value="1"></td>
                            <td><input type="text" value="1"></td>
                            <td><input type="text" value="1"></td>
                            <td><input type="text" value="1"></td>
                            <td><input type="text" value="1"></td>
                            <td><input type="text" value="1"></td>
                            <td><input type="text" value="1"></td>
                            <td><input type="text" value="1"></td>
                            <td><input type="text" value="1"></td>
                            <td><input type="text" value="1"></td>
                            <td><input type="text" value="1"></td>
                            <td><input type="text" value="1"></td>
                            <td><input type="text" value="1"></td>
                            <td><input type="text" value="1"></td>
                            <td><input type="text" value="1"></td>
                        </tr>
                        </tbody>
                    </table>
                    <div style="    margin: 15px 0 0 0;">
							   <textarea style="width:80%;margin-right:44px;" class="form-control right"
                                         name="sendDemand" rows="6" id="sendDemand" placeholder="	请输入特殊工艺说明"
                                         value="" disabled="disabled">
							   搅拌站工艺：
									      > 4个骨料仓对应4个骨料秤通过皮带上料（中途仓有秤）
									      > 1个掺和剂对应1个秤通过斜皮带上料
									      > 1个水对应1个秤
									      > 2个外加剂对应1个 秤
      							</textarea>
                        <p style="margin-right: 8px;float:right;color:#000;">特殊工艺说明：</p>
                    </div>
                </fieldset>
            </div>
            <!--开票收款-->
            <div class="table-responsive pz" style=" display: none;" id="htkpsk">
                <table class="table table-bordered" id="addCountCheckoutTable">
                    <tbody>
                    <tr>
                        <td>性质</td>
                        <td>状态</td>
                        <td>金额</td>
                        <td>票据编号</td>
                        <td>票据类型</td>
                        <td>财务负责</td>
                        <td>经办人</td>
                        <td>办理日期</td>
                    </tr>
                    <tr class="kpsk_01">
                        <td><input type="text" value="01"></td>
                        <td><input type="text" value="收款"></td>
                        <td><input type="text" value="生效"></td>
                        <td><input type="text" value="50000"></td>
                        <td><input type="text" value="/"></td>
                        <td><input type="text" value="汇款"></td>
                        <td><input type="text" value="李会计"></td>
                        <td><input type="text" value="悟空"></td>
                        <td><input type="text" value="2016.11.11"></td>
                    </tr>
                    </tbody>

                </table>
            </div>
            <!--内部结算-->
            <div class="table-responsive" style="margin:15px 0;">
                <table class="table table-bordered" style="margin-bottom:15px;" id="internalSettlrmentTable">
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
</body>
</html>
<script>
    $(function(){
        callSapiServer("/contract/search/project/bycid",function(data){
            console.log(data);
            userBody(data);
        },"GET",{id:$("#pid").val()});
    });
    function userBody(data){
        console.log("result"+data.result.results[0]);
        //列名初始化
        var head = [""];
        tab_jsonTable($("#c-project"), data.result.results, head,
                function (td, row, col, content) {

                    //初始化每一行的数据
                    switch (col) {
                        case 0:
                            return nullToString(content.project_num) + "<input name='id' type='hidden' value='"+content.id+"'>";
                        case 1:
                            return nullToString(content.project_name);
                        case 2:
                            return nullToString(content.contract_money);
                        case 3:
                            var statusText = "";
                            if(content.project_status=0) {
                                statusText = "执行中";
                            } else if(content.project_status == 0) {
                                statusText = "已完成";
                            }  else if(content.project_status == 1) {
                                statusText = "刚开始";
                            }
                            return statusText;
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
                                //alert(data.message);
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