<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="col-md-9" style="padding-right:10px;">
    <form id="form" action="post" style="overflow:hidden;">
        <div class="well with-header" style="background:#fff;">
            <div class="header bordered-palegreen">
                <!--发布、修改、删除  -->
                <div class="DTTT btn-group pull-left"style="margin-left:25px;">
                    <!--  <a class="btn2" href="swindex.html"style="left: -30px;padding: 5px 5px;float: left;position: relative;color:#008cee!important;font-weight:normal;" > 首页 / </a> -->
                    <a class="btn1" href="javascript:void(0)"style="left: -30px;padding: 5px 5px;float: left;position: relative;color:#008cee!important;font-weight:normal;" > 功能列表</a>
                </div>
                <div class="DTTT btn-group pull-right">
                    <a class="btn btn-default DTTT_button_print" id="operateMode_new" name="edit" title="View print view" style="margin-left:10px;border-left:1px solid #ccc;background:#008cee;color:#fff;border-radius: 5px;" href="swindex.html">
                        <span>新增</span>
                    </a>
                    <a class="btn btn-default DTTT_button_copy" id="operateMode_release" name="send" style="margin: 0% 0%;margin-left:10px;border-left:1px solid #ccc;background:#008cee;color:#fff;border-radius: 5px;">
                        <span > 保存</span>
                    </a>
                    <a class="btn btn-default DTTT_button_copy" id="operateMode_release1" name="send" style="margin: 0% 0%;margin-left:10px;border-left:1px solid #ccc;background:#008cee;color:#fff;border-radius: 5px;">
                        <span > 发布</span>
                    </a>
                    <a class="btn btn-default DTTT_button_copy" id="operateMode_release2" name="send" style="margin: 0% 0%;margin-left:10px;border-left:1px solid #ccc;background:#008cee;color:#fff;border-radius: 5px;" href="swindex_hf.html">
                        <span > 回访</span>
                    </a>
                    <a class="btn btn-default DTTT_button_copy" id="bnt" name="send" style="margin: 0% 0%;margin-left:10px;border-left:1px solid #ccc;background:#008cee;color:#fff;border-radius: 5px;" href="swindex_sh.html">
                        <span> 审核</span>
                    </a>
                    </a>
                    <a class="btn btn-default DTTT_button_copy" id="bntgd" name="send" style="margin: 0% 0%;margin-left:10px;border-left:1px solid #ccc;background:#008cee;color:#fff;border-radius: 5px;background-color:#008cee!important" href="swindex_gd.html">
                        <span >归档</span>
                    </a>
                    <a class="btn btn-default DTTT_button_print" id="operateMode_new2" name="edit1" title="View print view1" style="margin-left:10px;border-left:1px solid #ccc;background:#008cee;color:#fff;border-radius: 5px;" >
                        <span >作废</span>
                    </a>
                    <!--
                    <a class="btn btn-default DTTT_button_collection" id="delete" name="delete">
                    <span>删除 </span>
                    </a> -->
                </div>
            </div>
        </div>
        <div id="task_infom" style="margin:15px 15px; ">
            <fieldset id="fieldset_baiyouli" class="fieldset_taskinfo" >
                <legend style="color:#008cee;line-height:20px;">任务信息</legend>
                <div class="row" style="margin-right:150px;" >
                    <div class="col-md-4">
                        <input id="taskNum" name="taskNum"  class="textbox right" style="height: 22px;width:128px;" />
                        <p class="ma_t  ab" style="float: right;">任务编号：</p>
                    </div>
                    <div class="col-md-4">
                        <input id="createdPerson" name="createdPerson" class="textbox right"style="height: 22px; width:128px;" />
                        <p class="ma_t  ab" style="float: right;">创建人：</p>
                    </div>
                    <div class="col-md-4">
                        <!-- 	<input id="sendTime" name="sendTime"  class="easyui-datetimebox right" required = "required"  style="width: 180px;"/> -->
                        <input id="sendTime" name="sendTime"  class=" right" required = "required"  style="width: 180px;"  />
                        <p class="ma_t  ab" style="float: right;">发布时间：</p>
                    </div>
                </div>
                <hr class="wide">
                <div class="row" style="margin-right:150px;">
                    <div class="col-md-4" style="position:relative;">
                        <!-- <input id="customerId" name="customerId"  class="easyui-textbox right"  required = "required" style="height: 22px;"/> -->
                        <input id="customerId" name="customerId"  class=" right"  required = "required" style="height: 22px;" />
                        <p class="ma_t  ab" style="float: right;">客户名称：</p>
                        <img src="./image/plus.png" alt="" id="addkh"  class="addxm" data-toggle="modal" data-target="#myModalkh" style="z-index:111">
                    </div>
                    <div class="col-md-4"style="position:relative;">
                        <!-- <input id="taskName" name="taskName"  class="easyui-textbox right" style="height: 22px;"/> -->
                        <input id="taskName" name="taskName"  class=" right" style="height: 22px;" />
                        <p class="ma_t  ab" style="float: right;" >项目简称：</p>
                        <img src="./image/plus.png" alt="" id="addxm" class="addxm" data-toggle="modal" data-target="#myModalxm" style="z-index:111">
                        <input id="id" name="id"  class="textbox"      style="height: 22px; display:none;"/>
                        <input id="status" name="status"  class="textbox"      style="height: 22px; display:none;"/>
                    </div>
                    <div class="col-md-4">
                        <!--   <input id="executorId"  name ="executorId"  class="easyui-textbox right" required = "required" style="height: 22px;"/> -->
                        <select id="executorId"  name ="executorId"  class=" right" required = "required" style="height: 22px;" />
                        <p class="ma_t  ab" style="float: right;">工程师：</p>
                    </div>
                </div>
                <hr class="wide">
                <div class="row" style="margin-right:150px;">
                    <div class="col-md-4">
                        <input id="province" name="province"   class="textbox right"   required = "required" style="height: 22px;"/>
                        <p class="ma_t  ab" style="float: right;">所在省市：</p>
                    </div>

                    <div class="col-md-4">
                        <input id="country" name="country" class="textbox right"  required = "required"   style="height: 22px;"  />
                        <p class="ma_t  ab" style="float: right;">所在区县：</p>
                    </div>

                    <div class="col-md-4">
                        <!--  <input id="faultCategory" name="faultCategory"  class="easyui-textbox right" style="height: 22px;"/> -->
                        <input id="faultCategory" name="faultCategory" class=" right" style="height: 22px;"  />
                        <p class="ma_t  ab" style="float: right;">故障类别：</p>
                    </div>
                </div>
                <hr class="wide">
                <div class="row" style="margin-right:150px;">
                    <div class="col-md-4">
                        <!-- <input id="planArriveTime" name="planArriveTime"  class="easyui-datetimebox right"  required = "required"  style="width: 180px;"/> -->
                        <input id="planArriveTime" name="planArriveTime" class=" right"  required = "required"  style="width: 180px;"  />
                        <p class="ma_t  ab" style="float: right;">计划到达时间：</p>
                    </div>

                    <div class="col-md-4">
                        <input id="planFinishTime" name="planFinishTime"  class=" right"  required = "required"  style="width: 180px;"    />
                        <p class="ma_t  ab" style="float: right;">计划完成时间：</p>
                    </div>

                    <div class="col-md-4">
                        <!-- <input id="taskType"  name ="taskType"  class="easyui-textbox right"    required = "required"   style="height: 22px;"/> -->
                        <input id="taskType"  name ="taskType"  class=" right"    required = "required"   style="height: 22px;"  />
                        <p class="ma_t  ab" style="float: right;">任务类型：</p>
                    </div>
                </div>
                <hr class="wide">
                <div class="row" style="margin-right:150px;">
                    <div class="col-md-4">
                        <!--  <input id="level" name="level"  class="easyui-textbox right"      style="height: 22px;"  /> -->
                        <input id="level" name="level"  class="right"       style="height: 22px;"  />
                        <p class="ma_t  ab" style="float: right;">客户级别：</p>

                    </div>
                    <div class="col-md-4">
                        <input id="transportation" name= "transportation"  class="right"  required = "required"   style="height: 22px;"/>
                        <p class="ma_t  ab" style="float: right;">交通方式：</p>
                    </div>
                    <div class="col-md-4">
                        <input id="contactName" name="contactName"   class=" right"   required = "required"    style="height: 22px;"/>
                        <p class="ma_t  ab" style="float: right;">联系人：</p>
                    </div>
                </div>
                <hr class="wide">
                <div class="row" style="margin-right:150px;">
                    <div class="col-md-4">
                        <input id="position" name="position"  class=" right"  required = "required"     style="height: 22px;"/>

                        <p class="ma_t  ab" style="float: right;">联系人职务：</p>
                    </div>

                    <div class="col-md-4">
                        <input id="fixedPhone" name="fixedPhone"  class="right"   style="height: 22px;"  value="" />
                        <p class="ma_t  ab" style="float: right;">联系电话：</p>
                    </div>

                    <div class="col-md-4">
                        <input id="contactPhone"  name="contactPhone" class="right"  required = "required"    style="height: 22px;"/>
                        <p class="ma_t  ab" style="float: right;">联系手机：</p>
                    </div>
                </div>
                <hr class="wide">
                <div class="row" style="margin-right:150px;">
                    <div class="col-md-4">
                        <input id="charge" name="charge" class=" right"   required = "required"    style="height: 22px;"  />
                        <p class="ma_t  ab" style="float: right;">标准收费：</p>
                    </div>

                    <div class="col-md-4">
                        <input id="workHours" name="workHours" class=" right"   required = "required"    style="height: 22px; "  />
                        <p class="ma_t  ab" style="float: right;">标准工时：</p>
                    </div>

                    <div class="col-md-4">
                        <input id="loopTime" name="loopTime" class="right"  style="height: 22px;" />
                        <p class="ma_t  ab" style="float: right;">循环次数：</p>
                    </div>
                </div>
                <hr class="wide">
                <div class="row" style="margin-right:150px;">
                    <div class="col-md-4">
                        <input id="workHours1" name="workHours" class=" right"  required = "required"    style="height: 22px; "  />
                        <p class="ma_t  ab" style="float: right;">工作量：</p>
                    </div>
                </div>
            </fieldset>
        </div>

        <fieldset id="fieldset2_xm" class="fieldset2_xm" >

            <script>
            $(function(){
//                callSapiServer("/user/login",function(data){
//                    console.log(data);
//                    proList(data);
//                },"GET");
            });

            function proList(data){
                //列名初始化
                var head = ["姓名","位置","状态"];
                tab_jsonTable($("#proList"), data, head,
                        function (td, row, col, content) {
                            $(td).css("text-align", "center");//添加td的样式
                            //初始化每一行的数据
                            switch (col) {
                                case 0:
                                    return nullToString(content.trueName) + "<input name='id' type='hidden' value='"+content.id+"'>";
                                case 1:
                                    return "<a href='javascript:void(0);'>" + nullToString(content.address) + "</a>";
                                case 2:
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
                                default :
                                    return null;
                            }
                        }, function (table) {
                            //设置table的样式
                            $(table).addClass("table table-bordered");
                        })
            }
        </script>
            <legend style="color:#008cee;line-height:20px;">项目详情</legend>


            <div id="proList" class="section"  style="margin:0px 5px; position:relative;top:-25px;">
                <button type="button" class="btn btnpz btnstyle btn_ht_detail" style="margin:10px 15px;float:right;color:#fff;display:none;background-color:#008cee!important;">合同详情</button>
                <button type="button" class="btn btnpz btnstyle btn_ht_detail1" style="margin:10px 15px;float:right;color:#fff;display:none;">合同详情</button>
                <div class="table-responsive" style="margin-top:15px;"/>

            <%-- <table class="table table-bordered"  style="margin: 0 -5px;">
                 <thead>--%>
                      <%--  <thead>
                        <tr>
                            <td>项目编号</td>
                            <td>项目名称</td>
                            <td>客户名称</td>
                            <td>项目代码</td>
                            <td>质保期状态</td>
                            <td>试运行日期</td>
                            <!--  <td>调试日期</td> -->
                            <td>验收日期</td>
                            <td>联系人</td>
                            <td>联系人电话</td>
                            <td>调试人员</td>
                            <td>项目状态</td>
                            <td>配置明细</td>
                            <td>工艺明细</td>
                            <!--  <td>操作</td> -->
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>P20161111</td>
                            <td>云南轮巨1#</td>
                            <td>云南轮巨建设工程有限公司</td>
                            <td>1</td>
                            <td>质保期内</td>
                            <td>1111</td>
                            <!--  <td>1111</td> -->
                            <td>1111</td>
                            <td>刘先生</td>
                            <td>1888888888</td>
                            <td>刘工</td>
                            <td>新项目</td>
                            <td style="color:blue;" class="pz_mx">明细</td>
                            <td style="color:blue;" class="gy_mx">明细</td>
                            <!-- <td>
                                <a href="xmxg.jsp"><span class="left xg"><button class="btn btn-info" style="color: #FFFFFF">修改</button></span></a>
                                <span  class="right xg"><button class="btn btn-danger" style="color: #ffffff" onclick="Showbo.Msg.confirm('您确认要进行删除操作吗？')"> 删除</button></span>
                            </td> -->
                        </tr>

                        </tbody>--%>

              <%--   </thead>
             </table>--%>


                <div class="table-responsive pzmx" style="margin:15px 0;display: none">
                    <fieldset id="fieldset4" class="fieldset4" >
                        <legend style="color:#008cee;line-height:20px;">项目配置明细</legend>
                        <table class="table table-bordered" style="margin:0 10px;">
                            <thead>
                            <tr>
                                <td>序号</td>
                                <td>名称</td>
                                <td>单位</td>
                                <td>单价(元)</td>
                                <td>数量</td>
                                <td>总价(元)</td>
                                <td>型号</td>
                                <td>品牌</td>
                                <td>备注</td>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>1</td>
                                <td>商品砼自动化生产管理软件V6.0</td>
                                <td>套</td>
                                <td>24000</td>
                                <td>1</td>
                                <td>24000</td>
                                <td>标准版</td>
                                <td>思伟</td>
                                <td>备注</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>工业控制机</td>
                                <td>台</td>
                                <td>9000</td>
                                <td>1</td>
                                <td>9000</td>
                                <td>SW-848</td>
                                <td>思伟</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>工业控制输入板</td>
                                <td>块</td>
                                <td>2880</td>
                                <td>1</td>
                                <td>2880</td>
                                <td>IPC-3200A</td>
                                <td>思伟</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>工业控制输出板</td>
                                <td>块</td>
                                <td>3160</td>
                                <td>2</td>
                                <td>6320</td>
                                <td>IPC-0032B</td>
                                <td>思伟</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td>工业控制输出板</td>
                                <td>块</td>
                                <td>3160</td>
                                <td>2</td>
                                <td>6320</td>
                                <td>IPC-0032B</td>
                                <td>思伟</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>6</td>
                                <td>工业控制输出板</td>
                                <td>块</td>
                                <td>3160</td>
                                <td>2</td>
                                <td>6320</td>
                                <td>IPC-0032B</td>
                                <td>思伟</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>7</td>
                                <td>工业控制输出板</td>
                                <td>块</td>
                                <td>3160</td>
                                <td>2</td>
                                <td>6320</td>
                                <td>IPC-0032B</td>
                                <td>思伟</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>8</td>
                                <td>工业控制输出板</td>
                                <td>块</td>
                                <td>3160</td>
                                <td>2</td>
                                <td>6320</td>
                                <td>IPC-0032B</td>
                                <td>思伟</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>9</td>
                                <td>工业控制输出板</td>
                                <td>块</td>
                                <td>3160</td>
                                <td>2</td>
                                <td>6320</td>
                                <td>IPC-0032B</td>
                                <td>思伟</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>10</td>
                                <td>工业控制输出板</td>
                                <td>块</td>
                                <td>3160</td>
                                <td>2</td>
                                <td>6320</td>
                                <td>IPC-0032B</td>
                                <td>思伟</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>11</td>
                                <td>工业控制输出板</td>
                                <td>块</td>
                                <td>3160</td>
                                <td>2</td>
                                <td>6320</td>
                                <td>IPC-0032B</td>
                                <td>思伟</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>12</td>
                                <td>工业控制输出板</td>
                                <td>块</td>
                                <td>3160</td>
                                <td>2</td>
                                <td>6320</td>
                                <td>IPC-0032B</td>
                                <td>思伟</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>13</td>
                                <td>工业控制输出板</td>
                                <td>块</td>
                                <td>3160</td>
                                <td>2</td>
                                <td>6320</td>
                                <td>IPC-0032B</td>
                                <td>思伟</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>14</td>
                                <td>工业控制输出板</td>
                                <td>块</td>
                                <td>3160</td>
                                <td>2</td>
                                <td>6320</td>
                                <td>IPC-0032B</td>
                                <td>思伟</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>15</td>
                                <td>工业控制输出板</td>
                                <td>块</td>
                                <td>3160</td>
                                <td>2</td>
                                <td>6320</td>
                                <td>IPC-0032B</td>
                                <td>思伟</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>16</td>
                                <td>工业控制输出板</td>
                                <td>块</td>
                                <td>3160</td>
                                <td>2</td>
                                <td>6320</td>
                                <td>IPC-0032B</td>
                                <td>思伟</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>17</td>
                                <td>工业控制输出板</td>
                                <td>块</td>
                                <td>3160</td>
                                <td>2</td>
                                <td>6320</td>
                                <td>IPC-0032B</td>
                                <td>思伟</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>18</td>
                                <td>工业控制输出板</td>
                                <td>块</td>
                                <td>3160</td>
                                <td>2</td>
                                <td>6320</td>
                                <td>IPC-0032B</td>
                                <td>思伟</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>19</td>
                                <td>工业控制输出板</td>
                                <td>块</td>
                                <td>3160</td>
                                <td>2</td>
                                <td>6320</td>
                                <td>IPC-0032B</td>
                                <td>思伟</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>20</td>
                                <td colspan="4">税金(元)</td>
                                <td>70280</td>
                                <td colspan="2"></td>

                                <td>￥48,000.00</td>
                            </tr>
                            <tr>
                                <td>21</td>
                                <td colspan="4">优惠价(元)</td>
                                <td>48000</td>
                                <td colspan="2"></td>

                                <td>￥70,280.00</td>
                            </tr>
                            </tbody>
                        </table>
                    </fieldset>
                </div>

                <div class="table-responsive gymx" style="margin:15px 0;display: none">
                    <fieldset id="fieldset4" class="fieldset4" >
                        <legend style="color:#008cee;line-height:20px;">项目工艺明细</legend>
                        <table class="table table-bordered">
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
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>

                            </tr>
                            </tbody>
                        </table>
                        <div style="    margin: 15px 0 0 0;">
							   <textarea style="width:80%;margin-right:44px;" class="form-control right" name="sendDemand" rows="6" id="sendDemand"  placeholder="	请输入特殊工艺说明" value="" disabled="disabled">
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
            </div>

        </fieldset>
        <div class="row check_ht" style="margin:15px 15px;">

            <label class="umarr Have_ht" for="Have_ht">
                <input class="" name="ht" type="radio" id="Have_ht">
                <span class="text">有合同</span>
                <label style="padding:0 20px;display:none;">
                    <span>合同编号</span><span>2017—swrj-hg-001</span>
                </label>

            </label>

            <label class="umarr No_ht" for="No_ht">
                <input class="" name="ht" type="radio" id="No_ht" />
                <span class="text">无合同</span>
            </label>
            <label class="umarr New_ht" for="New_ht">
                <input class="" name="ht" type="radio" id="New_ht" />
                <span class="text">新合同</span>
            </label>
        </div>
        <fieldset id="fieldset_htinfomation" class="fieldset">
            <legend style="color:#008cee;line-height:20px;">合同详情</legend>
            <fieldset id="fieldset" class="" >
                <legend style="color:#008cee;line-height:20px;">基本信息</legend>
                <div style="text-align:center;" class="cont_ht">

                    <label for="A_name"> 甲   方：<input type="text" id="A_name" value="云南轮巨建设工程有限公司" disabled="disabled"></label>

                    <label for="B_name"> 乙   方：<input type="text" id="B_name" value="上海思伟软件有限公司"  disabled="disabled"></label>

                    <label for="style_name">签订方式：<input type="text" id="style_name" value="传真"  disabled="disabled"></label>

                    <label for="qx_date"class="qd_date" >签订日期：<input type="text" id="qx_date_y" value="2016"  disabled="disabled">年<input type="text" id="qx_date_m" value="12" >月<input type="text" id="qx_date_d" value="13" >日</label>

                    <label for="yxqx_date"  class="yx_Date">有限期限：<input type="text" id="qx_date_y" value="2016"  disabled="disabled">年<input type="text" id="qx_date_m" value="12"  disabled="disabled">月<input type="text" id="qx_date_d" value="13"  disabled="disabled">日至<input type="text" id="yxqx_date_y" value="2017"  disabled="disabled">年<input type="text" id="yxqx_date_m" value="12"  disabled="disabled">月<input type="text" id="yxqx_date_d" value="12"  disabled="disabled">日</label>


                </div>

            </fieldset>

            <div class="big_box" >

                <div class="table-responsive" style="margin-top:15px;">
                    <table class="table table-bordered htbd" style="text-align:center;">
                        <caption style="    text-align: left;font-weight:700;margin-bottom:10px;" >合同标的</caption>

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


                        </tbody>

                    </table>
                </div>




                <div class="table-responsive" style="margin-top:15px;text-align:center;">
                    <table class="table table-bordered">
                        <caption style="    text-align: left;font-weight:700;margin-bottom:10px;">合同项目</caption>
                        <thead>
                        <!--                     <tr>
                                                <td colspan="4">合同项目</td>
                                            </tr> -->
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
                            <td>云南轮巨1#</td>
                            <td>50000</td>
                            <td>执行中</td>
                        </tr>
                        </tbody>

                    </table>
                </div>
                <div class="table-responsive pz" style="margin:15px 0;" id="pz">
                    <!--              <div  style="border:1px solid #ddd;height:52px;border-bottom:none;">
                                         <div style="float:left;display:inline-block;    padding: 7px 7px;" class="pzgroup">
                                                <button type="button" class="btn btnpz btnstyle" style="margin-right:10px;color:#fff">配置</button>
                                                <button type="button" class="btn btnjsjd" style="margin-right:10px;color:#008cee">结算进度</button>
                                                <button type="button" class="btn btnkpsk" style="margin-right:10px;color:#008cee">开票收款</button>
                                            </div>
                                     </div> -->
                    <table class="table table-bordered" style="text-align:center;">
                        <caption style="    text-align: left;font-weight:700;margin-bottom:10px;">合同配置</caption>
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




            </div>
        </fieldset>
        <fieldset id="fieldset_newht" class="fieldset_newht">
            <legend style="color:#008cee;line-height:20px;">基本信息</legend>
            <fieldset id="fieldset" class="fieldset_new_htinfo"style="display:block;" >
                <legend style="color:#008cee;line-height:20px;">合同信息</legend>
                <div style="text-align:center;" class="cont_ht">

                    <label for="A_name"> 甲   方：<input type="text" id="A_name" value="云南轮巨建设工程有限公司" ></label>

                    <label for="B_name"> 乙   方：<input type="text" id="B_name" value="上海思伟软件有限公司"  ></label>

                    <label for="style_name">签订方式：<input type="text" id="style_name" value="    传真"  ></label>

                    <label for="qx_date"class="qd_date" >签订日期：<input type="text" id="qx_date_y" value="2016" >年<input type="text" id="qx_date_m" value="12"  disabled="disabled">月<input type="text" id="qx_date_d" value="13"  disabled="disabled">日</label>

                    <label for="yxqx_date"  class="yx_Date">有限期限：<input type="text" id="qx_date_y" value="2016"  >年<input type="text" id="qx_date_m" value="12"  >月<input type="text" id="qx_date_d" value="13"  >日至<input type="text" id="yxqx_date_y" value="2017"  >年<input type="text" id="yxqx_date_m" value="12"  >月<input type="text" id="yxqx_date_d" value="12" >日</label>


                </div>

            </fieldset>
            <button type="button" class="btn btnpz btnstyle new_htbd" style="margin:10px 15px;float:right;color:#fff;background-color:#008cee;position:relative;top:30px;right:10px;" id="new_htbd">新增</button>
            <!--   <button type="button" class="btn b
            tnpz btnstyle new_htbd" style="margin:10px 15px;float:right;color:#fff;background-color:#008cee;position:relative;top:30px;right:0px;" id="delete_htbd">删除</button> -->
            <div class="big_box" >

                <div class="table-responsive" style="margin-top:15px;">
                    <table class="table table-bordered ht_bd" style=" text-align:center;" id="htbd_bable">
                        <caption style="text-align: left;font-weight:700;margin-bottom:10px;" >合同标的</caption>

                        <thead>
                        <tr>
                            <td>编号</td>
                            <td>产品名称</td>
                            <td>规格型号</td>
                            <td>品种</td>
                            <td>单位</td>
                            <td>级别</td>
                            <td>销售价格</td>
                            <td>状态</td>
                            <td>操作</td>
                        </tr>
                        </thead>

                        <tbody id="htbd_list">
                        <tr >
                            <td><input type="text" value="1"></td>
                            <td><input type="text" value="工业控制计算机"></td>
                            <td><input type="text" value="SW-848"></td>
                            <td><input type="text" value="思伟集成"></td>
                            <td><input type="text" value="台"></td>
                            <td><input type="text" value="1"></td>
                            <td><input type="text" value="8800"></td>
                            <td><input type="text" value="在售"></td>
                            <td><button type="button" class="btn btn-danger btnpz btnstyle delete_htbd" style="float:right;color:#fff;background-color:#008cee;" id="delete_htbd">删除</button></td>
                        </tr>


                        </tbody>

                    </table>
                </div>



                <button type="button" class="btn btnpz btnstyle new_htxm" style="margin:10px 15px;float:right;color:#fff;background-color:#008cee;position:relative;top:30px;    right: -5px;" id="new_htxm">新增</button>
                <div class="table-responsive" style="margin-top:15px;text-align:center;">
                    <table class="table table-bordered">
                        <caption style="    text-align: left;font-weight:700;margin-bottom:10px;">合同项目</caption>
                        <thead>
                        <tr>
                            <td>编号</td>
                            <td>项目名称</td>
                            <td>金额</td>
                            <td>状态</td>
                            <td>操作</td>
                        </tr>
                        </thead>
                        <tbody id="htxm_list">

                        <tr>
                            <td><input type="text" value="01"></td>
                            <td><input type="text" value="云南轮巨1#"></td>
                            <td><input type="text" value="2000"></td>
                            <td><input type="text" value="执行中"></td>
                            <td><button type="button" class="btn btn-danger btnpz btnstyle delete_htxm" style="float:right;color:#fff;background-color:#008cee;" id="delete_htxm">删除</button></td>
                        </tr>


                        </tbody>

                    </table>
                </div>


                <div class="table-responsive pz" style="margin:15px 0;" id="pz1">
                    <button type="button" class="btn  btnpz btnstyle new_htpz" style="margin:10px 15px;float:right;color:#fff;background-color:#008cee;position:relative;top:30px;    right: -5px;" id="new_htpz">新增</button>
                    <!--              <div  style="border:1px solid #ddd;height:52px;border-bottom:none;">
                                         <div style="float:left;display:inline-block;    padding: 7px 7px;" class="pzgroup">
                                                <button type="button" class="btn btnpz btnstyle" style="margin-right:10px;color:#fff">配置</button>
                                                <button type="button" class="btn btnjsjd" style="margin-right:10px;color:#008cee">结算进度</button>
                                                <button type="button" class="btn btnkpsk" style="margin-right:10px;color:#008cee">开票收款</button>
                                            </div>
                                     </div> -->
                    <table class="table table-bordered" style="text-align:center;">
                        <caption style="    text-align: left;font-weight:700;margin-bottom:10px;">合同配置</caption>
                        <!-- <tr style="text-align:left">
                            <td colspan="7">
                                <button type="button" class="btn" style="background-color: #008cee;color: #fff;margin-right:10px;">配置</button>
                                <button type="button" class="btn" style="margin-right:10px;background-color: #008cee;color: #fff;">结算进度</button>
                                <button type="button" class="btn" style="margin-right:10px;background-color: #008cee;color: #fff;">开票收款</button>
                            </td>
                        </tr> -->

                        <thead>
                        <tr>
                            <td>配置名称</td>
                            <td>规格型号</td>
                            <td>类别</td>
                            <td>品牌</td>
                            <td>数量</td>
                            <td>出库数</td>
                            <td>备注</td>
                            <td>操作</td>
                        </tr>
                        </thead>
                        <tbody id="htpz_list">
                        <tr>
                            <td><input type="text" value="思伟自动化生产软件"></td>
                            <td><input type="text" value="网络版"></td>
                            <td><input type="text" value="软件"></td>
                            <td><input type="text" value="思伟"></td>
                            <td><input type="text" value="1"></td>
                            <td><input type="text" value="1"></td>
                            <td><input type="text" value="无"></td>
                            <td><button type="button" class="btn btn-danger btnpz btnstyle delete_htpz" style="float:right;color:#fff;background-color:#008cee;" id="delete_htpz">删除</button></td>
                        </tr>
                        </tbody>

                    </table>
                </div>





            </div>
        </fieldset>
        <div class="row" style="margin:15px 15px;">
            <fieldset id="fieldset_2q234" >
                <legend style="color:#008cee;line-height:20px;">派单信息</legend>
                <div class="col-md-6">
                    <textarea style="width:60%;margin-right:44px;" class="form-control right" name="sendDemand" rows="2" id="sendDemand"  placeholder="派单要求"></textarea>
                    <p style="margin-right: 8px;float:right;color:#000;">派单要求：</p>
                </div>
                <div class="col-md-6">
                    <textarea  style="width:60%;margin-right:140px;" class="form-control right" rows="2" id="issueReason" name="issueReason" placeholder="故障原因"></textarea>
                    <p style="margin-right: 8px;float:right;color:#000;">故障原因：</p>
                </div>
            </fieldset>
        </div>
    </form>
    <div id="b_table1" style="display:none;">
        <fieldset class="fieldset4_SH" >
            <legend style="color:#008cee;line-height:20px;">行车记录</legend>
            <div class="table-responsive det" style="margin-top:15px; text-align: left;" >

                <table class="table table-bordered" style="margin:0 auto;">
                    <thead>
                    <tr>

                        <td>车牌号</td>
                        <td>类型</td>
                        <td>开始时间</td>
                        <td>结束时间</td>
                        <td>开始公里数</td>
                        <td>到达公里数</td>
                        <td>起始位置</td>
                        <td>结束位置</td>

                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>888888</td>
                        <td>自驾</td>
                        <td>2016.11.11 08:30:59</td>
                        <td>2016.11.11 09:30:59</td>
                        <td>999</td>
                        <td>1000</td>
                        <td>玉祥门</td>
                        <td>市建四公司</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </fieldset>

        <fieldset class="fieldset4_SH" >
            <legend style="color:#008cee;line-height:20px;">收款记录</legend>
            <div class="table-responsive det moneyRecor" style="margin-top:15px; text-align: left;" >

                <table class="table table-bordered skjl_index" style="margin:0 auto;">
                    <thead>
                    <tr>
                        <td>check</td>
                        <td>费用名称</td>
                        <td>收款方式</td>
                        <td>票据号码</td>
                        <td>金额</td>
                        <td>任务编号</td>
                        <td>收款人</td>
                        <td>收款日期</td>
                        <td>状态</td>
                        <!-- <td>操作</td> -->
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td><input class="isshow" name="isshow" type="checkbox"></td>
                        <td>xxx</td>
                        <td>现金</td>
                        <td>无</td>
                        <td>1600.00</td>
                        <td>G2016888888</td>
                        <td>王大锤</td>
                        <td>2016.11.11</td>
                        <td style="color:cornflowerblue">未审核</td>
                        <!-- <td>
                            <span class="left xg xg_moneyRecor"><button class="btn btn-info"style="color: #fff">修改</button></span>
                            <span  class="right xg"><button class="btn btn-danger"style="color: #fff">删除</button></span>
                        </td> -->
                    </tr>
                    <tr>

                        <td><input class="isshow" name="isshow" type="checkbox"></td>
                        <td>xxx</td>
                        <td>现金</td>
                        <td>无</td>
                        <td>1600.00</td>
                        <td>G2016888888</td>
                        <td>王二锤</td>
                        <td>2016.11.11</td>
                        <td style="color:cornflowerblue">未审核</td>
                        <!-- <td>
                            <span class="left xg"><button class="btn btn-info"style="color: #fff">修改</button></span>
                            <span  class="right xg"><button class="btn btn-danger"style="color: #fff">删除</button></span>
                        </td> -->
                    </tr>
                    <tr>
                        <td><input class="isshow" name="isshow" type="checkbox"></td>
                        <td>xxx</td>
                        <td>现金</td>
                        <td>无</td>
                        <td>1600.00</td>
                        <td>G2016888888</td>
                        <td>王三锤</td>
                        <td>2016.11.11</td>
                        <td style="color:cornflowerblue">未审核</td>
                        <!-- <td>
                            <span class="left xg"><button class="btn btn-info"style="color: #fff">修改</button></span>
                            <span  class="right xg"><button class="btn btn-danger"style="color: #fff">删除</button></span>
                        </td> -->
                    </tr>
                    </tbody>
                </table>
                <div class="shenghe_btn">
                    <button type="button" class="btn" style="margin:10px 0;background-color: #008cee;color: #fff;" id="pass">通过</button>
                    <button type="button" class="btn" style="margin:10px 0;background-color: #008cee;color: #fff;" id="disPass">不通过</button>
                </div>
            </div>
        </fieldset>

        <fieldset class="fieldset4_SH" >
            <legend style="color:#008cee;line-height:20px;">费用报销</legend>
            <div class="table-responsive det" style="margin-top:15px; text-align: left;" >
                <caption style="    text-align: left;font-weight:700;margin-bottom:10px;">报销管理</caption>
                <table class="table table-bordered skjl_index" style="margin:0 auto;">
                    <thead>
                    <tr>
                        <td>check</td>
                        <td>编号</td>
                        <td>工程师</td>
                        <td>费用名称</td>
                        <td>费用类型</td>
                        <td>票据号码</td>
                        <td>金额</td>
                        <td>摘要</td>
                        <td>上传日期</td>
                        <td>行车记录</td>
                        <td>状态</td>
                        <!-- <td>操作</td> -->
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td><input class="isshow" name="isshow" type="checkbox"></td>
                        <td>01</td>
                        <td>张三</td>
                        <td>住宿费</td>
                        <td>住宿费</td>
                        <td>12345678</td>
                        <td>100</td>
                        <td>xxx</td>
                        <td>2016.11.11</td>
                        <td>否</td>
                        <td style="color:cornflowerblue">未审核</td>
                        <!-- <td>
                            <span class="left xg"><button class="btn btn-info"style="color: #fff">修改</button></span>
                            <span  class="right xg"><button class="btn btn-danger"style="color: #fff">删除</button></span>
                        </td> -->
                    </tr>
                    <tr>
                        <td><input class="isshow" name="isshow" type="checkbox"></td>
                        <td>02</td>
                        <td>李四</td>
                        <td>住宿费</td>
                        <td>住宿费</td>
                        <td>12345678</td>
                        <td>100</td>
                        <td>xxx</td>
                        <td>2016.11.11</td>
                        <td>否</td>
                        <td style="color:cornflowerblue">未审核</td>
                        <!-- <td>
                            <span class="left xg"><button class="btn btn-info"style="color: #fff">修改</button></span>
                            <span  class="right xg"><button class="btn btn-danger"style="color: #fff">删除</button></span>
                        </td> -->
                    </tr>
                    <tr>
                        <td><input class="isshow" name="isshow" type="checkbox"></td>
                        <td>03</td>
                        <td>王麻子</td>
                        <td>住宿费</td>
                        <td>住宿费</td>
                        <td>12345678</td>
                        <td>100</td>
                        <td>xxx</td>
                        <td>2016.11.11</td>
                        <td>否</td>
                        <td style="color:cornflowerblue">未审核</td>
                        <!-- <td>
                            <span class="left xg"><button class="btn btn-info"style="color: #fff">修改</button></span>
                            <span  class="right xg"><button class="btn btn-danger"style="color: #fff">删除</button></span>
                        </td> -->
                    </tr>

                    </tbody>
                </table>
                <div class="shenghe_btn">
                    <button type="button" class="btn" style="margin:10px 0;background-color: #008cee;color: #fff;" id="pass">通过</button>
                    <button type="button" class="btn" style="margin:10px 0;background-color: #008cee;color: #fff;" id="disPass">不通过</button>
                </div>
            </div>
    </div>
    </fieldset>
    <div class="arcivePart" style="display:none;">
        <div class="row change_mar rt1">
            <div class="col-md-9" style="margin-top:10px;">
                <p>现场情况信息</p>
                <textarea class="form-control" rows="3" id="liveSituation" name="liveSituation" placeholder="现场情况信息" >客户反应秤没有反应需要人去现场观察，经过现场观察，没有大的问题需要解决，所以以后出现问题在解决。</textarea>
            </div>
            <!-- 现场情况信息幻灯片 -->
            <div class="col-md-2" style="margin-top:20px;">
                <div class="liveSituationImgs  img3">
                    <img src="image/divyia.jpg" alt=""/>
                </div>
            </div>
            <!-- ／现场情况信息幻灯片 -->
        </div>
        <div class="row rt1">
            <div class="col-md-9">
                <p>服务记录</p>
                <textarea class="form-control" rows="3" id="visiteRecord" name="visiteRecord" placeholder="服务记录"  >跟踪砂浆站软件配套，虽然机械设备已经做好，但软件价格张总一直在纠结，后期电话跟踪一下。
								</textarea>
            </div>

            <!-- 服务记录幻灯片 -->
            <div class="col-md-2">
                <div class="visiteRecordImgs top1 img3" style="backgrand:#0000">
                    <img src="image/divyia.jpg" alt=""/>
                </div>
            </div>
            <!-- ／服务记录幻灯片 -->
        </div>
        <div class="row change_mar rt1">
            <div class="col-md-9">
                <p style="margin-top: 10px;">处理结果</p>
                <textarea class="form-control" rows="3" id="processResult" name="processResult" placeholder="处理结果"  >已经给客户解决过了，客户的服务单也签订了，客户以后有问题可以找我们公司的客服。</textarea>
            </div>

            <!-- 处理结果幻灯片 -->
            <div class="col-md-2">
                <div class="processResultImgs top1 img3">
                    <img src="image/divyia.jpg" alt=""/>
                </div>
            </div>
            <!-- ／处理结果幻灯片 -->
        </div>
        <div class="row change_mar rt1">
            <div class="col-md-9">
                <p>点评</p>
                <textarea class="form-control" rows="3" id="processResult1" name="processResult" placeholder="客户评价" >客户实力雄厚，可以长期合作</textarea>
            </div>
        </div>
        <div class="row change_mar rt1">
            <div class="col-md-9">
                <p>回访记录</p>
                <textarea class="form-control" rows="3" id="revisitRecord" name="revisitRecord" placeholder="注明回访人以及回访记录" >客户对我们的服务很满意，有意长期合作</textarea>
            </div>
            <div class="col-md-2">
                <div class="processResultImgs top1 img3">
                    <img src="image/divyia.jpg" alt=""/>
                </div>
            </div>
        </div>
        <div class="row change_mar rt1">
            <div class="col-md-9">
                <p>任务审核</p>
                <textarea class="form-control" rows="3" id="taskChecked" name="taskChecked" placeholder="任务审核" >通过，注意服务态度</textarea>
            </div>
            <div class="col-md-2">
                <div class="processResultImgs top1 img3">
                    <img src="image/divyia.jpg" alt=""/>
                </div>
            </div>
        </div>
        <div style="text-align:center;">
            <button type="button" class="btn" style="margin:10px 0;background-color: #008cee;color: #fff;">确认归档</button>
        </div>
    </div>
</div>
<script>
    $(function(){
        var json = {
            taskNum : 1,
            createdPerson :2,
            sendTime :3
        };
        jsonToForm("#fieldset_baiyouli",json);
//        jsonToSelect("/user/login","#executorId",null,"id","trueName",true,false);
    });
    $("#operateMode_release").click(function(){
        var json = formToJson("#fieldset_baiyouli");
        console.log(json);
    });
</script>