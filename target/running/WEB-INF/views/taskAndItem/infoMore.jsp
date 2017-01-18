<%--
  Created by IntelliJ IDEA.
  User: sw006
  Date: 2017-1-17
  Time: 17:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="../public/menulist.jsp"></jsp:include>
<jsp:include page="../public/lib.jsp"></jsp:include>



    <!------------------------------任务管理---------------------------------->


    <div style="height:200px;width:350px;font-size:26px;font-family:'华文行楷','Arial','Microsoft YaHei','黑体','宋体','sans-serif';margin:0 auto; border:1px solid #008cee;background-color:#008cee;color:#fff;z-index:999;display:inline-block;line-height:50px;text-align:center;border-radius:20px;position:absolute;right: 42%;top: 480px;display:none;"
         class="noticeCon">
        操作成功
    </div>

    <div class="contaner" id="page5" style="width:86%;float:right;padding:0 20px;border:1px solid #ddd">

        <div class="gn_title">
        <a id="btn" href="swindex.html" style="left: -30px;    padding: 17px 0 0 20px;float: left;position: relative;">
            首页
            / </a>
        <a class="btn1" href="javascript:void(0)" style="left: -30px;padding: 17px 5px;float: left;position: relative;">
            功能列表</a>
        </div>
    <div class="section" style="    margin-top: 60px;">

        <fieldset id="fieldset2_xm" class="fieldset2_xm">
            <legend style="color:#008cee;line-height:20px;">任务信息</legend>

            <div class="table-responsive" style="margin-top:15px;">
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <td>任务编号</td>
                        <td>客户名称</td>
                        <td>任务状态</td>
                        <td>执行人</td>
                        <td>添加人</td>
                        <td>添加时间</td>
                        <td>任务类型</td>
                        <td>故障类型</td>
                        <td>收费标准</td>
                        <td>项目名称</td>
                        <td>项目编号</td>
                        <td>合同编号</td>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>G201640975</td>
                        <td>武汉混凝土</td>
                        <td>已发布</td>
                        <td>王工</td>
                        <td>客服一号</td>
                        <td>2016.11.11 11:11</td>
                        <td>走访客户</td>
                        <td>系统故障</td>
                        <td>80元/h</td>
                        <td>大唐建设</td>
                        <td>Item201611</td>
                        <td>C201611</td>
                    </tr>
                    </tbody>
                </table>
                <!-- 导出列表 -->
                <table class="table table-bordered" id="tableExcel" style="display:none;">
                    <thead>
                    <tr>
                        <td>任务编号</td>
                        <td>项目名称</td>
                        <td>客户名称</td>
                        <td>任务状态</td>
                        <td>执行人</td>
                        <td>添加人</td>
                        <td>添加时间</td>
                        <td>任务类型</td>
                        <td>故障类型</td>
                        <td>收费标准</td>

                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>G201640975</td>
                        <td>武汉混凝土</td>
                        <td>武汉</td>
                        <td>已发布</td>
                        <td>王工</td>
                        <td>客服一号</td>
                        <td>2016.11.11 11:11</td>
                        <td>走访客户</td>
                        <td>走访</td>
                        <td>0</td>
                    </tr>
                    <tr>
                        <td>G201640975</td>
                        <td>武汉混凝土</td>
                        <td>武汉</td>
                        <td>已发布</td>
                        <td>王工</td>
                        <td>客服一号</td>
                        <td>2016.11.11 11:11</td>
                        <td>走访客户</td>
                        <td>走访</td>
                        <td>0</td>
                    </tr>
                    <tr>
                        <td>G201640975</td>
                        <td>武汉混凝土</td>
                        <td>武汉</td>
                        <td>已发布</td>
                        <td>王工</td>
                        <td>客服一号</td>
                        <td>2016.11.11 11:11</td>
                        <td>走访客户</td>
                        <td>走访</td>
                        <td>0</td>
                    </tr>
                    <tr>
                        <td>G201640975</td>
                        <td>武汉混凝土</td>
                        <td>武汉</td>
                        <td>已发布</td>
                        <td>王工</td>
                        <td>客服一号</td>
                        <td>2016.11.11 11:11</td>
                        <td>走访客户</td>
                        <td>走访</td>
                        <td>0</td>
                    </tr>
                    <tr>
                        <td>G201640975</td>
                        <td>武汉混凝土</td>
                        <td>武汉</td>
                        <td>已发布</td>
                        <td>王工</td>
                        <td>客服一号</td>
                        <td>2016.11.11 11:11</td>
                        <td>走访客户</td>
                        <td>走访</td>
                        <td>0</td>
                    </tr>
                    <tr>
                        <td>G201640975</td>
                        <td>武汉混凝土</td>
                        <td>武汉</td>
                        <td>已发布</td>
                        <td>王工</td>
                        <td>客服一号</td>
                        <td>2016.11.11 11:11</td>
                        <td>走访客户</td>
                        <td>走访</td>
                        <td>0</td>
                    </tr>
                    <tr>
                        <td>G201640975</td>
                        <td>武汉混凝土</td>
                        <td>武汉</td>
                        <td>已发布</td>
                        <td>王工</td>
                        <td>客服一号</td>
                        <td>2016.11.11 11:11</td>
                        <td>走访客户</td>
                        <td>走访</td>
                        <td>0</td>
                    </tr>
                    <tr>
                        <td>G201640975</td>
                        <td>武汉混凝土</td>
                        <td>武汉</td>
                        <td>已发布</td>
                        <td>王工</td>
                        <td>客服一号</td>
                        <td>2016.11.11 11:11</td>
                        <td>走访客户</td>
                        <td>走访</td>
                        <td>0</td>
                    </tr>
                    <tr>
                        <td>G201640975</td>
                        <td>武汉混凝土</td>
                        <td>武汉</td>
                        <td>已发布</td>
                        <td>王工</td>
                        <td>客服一号</td>
                        <td>2016.11.11 11:11</td>
                        <td>走访客户</td>
                        <td>走访</td>
                        <td>0</td>
                    </tr>
                    </tbody>
                </table>
                <!--             <div id="myDiv">
                 <table id="tableExcel" width="100%" border="1" cellspacing="0" cellpadding="0">
                     <tr>
                         <td colspan="5" align="center">html 表格导出道Excel</td>
                     </tr>
                     <tr>
                         <td>列标题1</td>
                         <td>列标题2</td>
                         <td>类标题3</td>
                         <td>列标题4</td>
                         <td>列标题5</td>
                     </tr>
                     <tr>
                         <td>aaa</td>
                         <td>bbb</td>
                         <td>ccc</td>
                         <td>ddd</td>
                         <td>eee</td>
                     </tr>
                     <tr>
                         <td>AAA</td>
                         <td>BBB</td>
                         <td>CCC</td>
                         <td>DDD</td>
                         <td>EEE</td>
                     </tr>
                     <tr>
                         <td>FFF</td>
                         <td>GGG</td>
                         <td>HHH</td>
                         <td>III</td>
                         <td>JJJ</td>
                     </tr>
                 </table>
                 </div>  -->
            </div>
        </fieldset>
        <fieldset id="fieldset2_xm" class="fieldset2_xm">
            <legend style="color:#008cee;line-height:20px;">项目详情</legend>


            <div class="section" style="margin:0px 5px; position:relative;top:-25px;">
                <button type="button" class="btn btnpz btnstyle btn_ht_detail"
                        style="margin:10px 15px;float:right;color:#fff;display:none;background-color:#008cee!important;">
                    合同详情
                </button>
                <button type="button" class="btn btnpz btnstyle btn_ht_detailinfomation"
                        style="margin:10px 15px;float:right;color:#fff;">合同详情
                </button>
                <div class="table-responsive" style="margin-top:15px;">
                    <table class="table table-bordered" style="margin: 0 -5px;">
                        <thead>
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
                                <a href="xmxg.html"><span class="left xg"><button class="btn btn-info" style="color: #FFFFFF">修改</button></span></a>
                                <span  class="right xg"><button class="btn btn-danger" style="color: #ffffff" onclick="Showbo.Msg.confirm('您确认要进行删除操作吗？')"> 删除</button></span>
                            </td> -->
                        </tr>

                        </tbody>
                    </table>
                </div>

                <div class="table-responsive pzmx" style="margin:15px 0;display: none">
                    <fieldset id="fieldset4" class="fieldset4">
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
                    <fieldset id="fieldset4" class="fieldset4">
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
							   <textarea style="width:80%;margin-right:44px;" class="form-control right"
                                         name="sendDemand" rows="6" id="sendDemand" placeholder="	请输入特殊工艺说明" value=""
                                         disabled="disabled">
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

        <fieldset id="fieldset_htinfomation1" class="fieldset">
            <legend style="color:#008cee;line-height:20px;">合同详情</legend>
            <fieldset id="fieldset" class="">
                <legend style="color:#008cee;line-height:20px;text-align: left;">基本信息</legend>
                <div style="text-align:center;" class="cont_ht">

                    <label for="A_name"> 甲 方：<input type="text" id="A_name" value="云南轮巨建设工程有限公司"
                                                    disabled="disabled"></label>

                    <label for="B_name"> 乙 方：<input type="text" id="B_name" value="上海思伟软件有限公司"
                                                    disabled="disabled"></label>

                    <label for="style_name">签订方式：<input type="text" id="style_name" value="传真"
                                                        disabled="disabled"></label>

                    <label for="qx_date" class="qd_date">签订日期：<input type="text" id="qx_date_y"
                                                                     value="2016"
                                                                     disabled="disabled">年<input
                            type="text" id="qx_date_m" value="12">月<input type="text" id="qx_date_d"
                                                                          value="13">日</label>

                    <label for="yxqx_date" class="yx_Date1" style="text-align: center;">有限期限：<input type="text"
                                                                                                    id="qx_date_y"
                                                                                                    value="2016"
                                                                                                    disabled="disabled">年<input
                            type="text" id="qx_date_m" value="12" disabled="disabled">月<input
                            type="text" id="qx_date_d" value="13" disabled="disabled">日至<input
                            type="text" id="yxqx_date_y" value="2017" disabled="disabled">年<input
                            type="text" id="yxqx_date_m" value="12" disabled="disabled">月<input
                            type="text" id="yxqx_date_d" value="12" disabled="disabled">日</label>


                </div>

            </fieldset>

            <div class="big_box">

                <div class="table-responsive" style="margin-top:15px;">
                    <table class="table table-bordered htbd" style="text-align:center;">
                        <caption style="    text-align: left;font-weight:700;margin-bottom:10px;">合同标的
                        </caption>

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
                        <caption style="    text-align: left;font-weight:700;margin-bottom:10px;">合同项目
                        </caption>
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
                        <caption style="    text-align: left;font-weight:700;margin-bottom:10px;">合同配置
                        </caption>
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
            <fieldset id="fieldset" class="fieldset_new_htinfo" style="display:block;">
                <legend style="color:#008cee;line-height:20px;">合同信息</legend>
                <div style="text-align:center;" class="cont_ht">

                    <label for="A_name"> 甲 方：<input type="text" id="A_name"
                                                    value="云南轮巨建设工程有限公司"></label>

                    <label for="B_name"> 乙 方：<input type="text" id="B_name" value="上海思伟软件有限公司"></label>

                    <label for="style_name">签订方式：<input type="text" id="style_name"
                                                        value="    传真"></label>

                    <label for="qx_date" class="qd_date">签订日期：<input type="text" id="qx_date_y"
                                                                     value="2016">年<input type="text"
                                                                                          id="qx_date_m"
                                                                                          value="12"
                                                                                          disabled="disabled">月<input
                            type="text" id="qx_date_d" value="13" disabled="disabled">日</label>

                    <label for="yxqx_date" class="yx_Date">有限期限：<input type="text" id="qx_date_y"
                                                                       value="2016">年<input type="text"
                                                                                            id="qx_date_m"
                                                                                            value="12">月<input
                            type="text" id="qx_date_d" value="13">日至<input type="text" id="yxqx_date_y"
                                                                           value="2017">年<input
                            type="text" id="yxqx_date_m" value="12">月<input type="text" id="yxqx_date_d"
                                                                            value="12">日</label>


                </div>

            </fieldset>

            <!--   <button type="button" class="btn btnpz btnstyle new_htbd" style="margin:10px 15px;float:right;color:#fff;background-color:#008cee;position:relative;top:30px;right:0px;" id="delete_htbd">删除</button> -->
            <div class="big_box">

                <div class="table-responsive" style="margin-top:15px;">
                    <table class="table table-bordered ht_bd" style=" text-align:center;"
                           id="htbd_bable">
                        <caption style="text-align: left;font-weight:700;margin-bottom:10px;">合同标的
                        </caption>

                        <tbody id="htbd_list">
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
                        <tr>
                            <td><input type="text" value="1"></td>
                            <td><input type="text" value="工业控制计算机"></td>
                            <td><input type="text" value="SW-848"></td>
                            <td><input type="text" value="思伟集成"></td>
                            <td><input type="text" value="台"></td>
                            <td><input type="text" value="1"></td>
                            <td><input type="text" value="8800"></td>
                            <td><input type="text" value="在售"></td>
                            <td>
                                <button type="button" class="btn btnpz btnstyle delete_htbd"
                                        style="float:right;color:#fff;background-color:#008cee;"
                                        id="delete_htbd">删除
                                </button>
                            </td>
                        </tr>


                        </tbody>

                    </table>
                </div>


                <div class="table-responsive" style="margin-top:15px;text-align:center;">
                    <table class="table table-bordered">
                        <caption style="    text-align: left;font-weight:700;margin-bottom:10px;">合同项目
                        </caption>
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
                            <td><input type="text" value="01"></td>
                            <td><input type="text" value="云南轮巨1#"></td>
                            <td><input type="text" value="2000"></td>
                            <td><input type="text" value="执行中"></td>
                        </tr>
                        </tbody>

                    </table>
                </div>
                <div class="table-responsive pz" style="margin:15px 0;" id="pz1">

                    <!--              <div  style="border:1px solid #ddd;height:52px;border-bottom:none;">
                                         <div style="float:left;display:inline-block;    padding: 7px 7px;" class="pzgroup">
                                                <button type="button" class="btn btnpz btnstyle" style="margin-right:10px;color:#fff">配置</button>
                                                <button type="button" class="btn btnjsjd" style="margin-right:10px;color:#008cee">结算进度</button>
                                                <button type="button" class="btn btnkpsk" style="margin-right:10px;color:#008cee">开票收款</button>
                                            </div>
                                     </div> -->
                    <table class="table table-bordered" style="text-align:center;">
                        <caption style="    text-align: left;font-weight:700;margin-bottom:10px;">合同配置
                        </caption>
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


            </div>
        </fieldset>
        <fieldset id="fieldset_htinfomation" class="fieldset">
            <legend style="color:#008cee;line-height:20px;">合同详情</legend>
            <fieldset id="fieldset" class="">
                <legend style="color:#008cee;line-height:20px;">基本信息</legend>
                <div style="text-align:center;" class="cont_ht">

                    <label for="A_name"> 甲 方：<input type="text" id="A_name" value="云南轮巨建设工程有限公司"
                                                    disabled="disabled"></label>

                    <label for="B_name"> 乙 方：<input type="text" id="B_name" value="上海思伟软件有限公司"
                                                    disabled="disabled"></label>

                    <label for="style_name">签订方式：<input type="text" id="style_name" value="传真"
                                                        disabled="disabled"></label>

                    <label for="qx_date" class="qd_date">签订日期：<input type="text" id="qx_date_y"
                                                                     value="2016"
                                                                     disabled="disabled">年<input
                            type="text" id="qx_date_m" value="12">月<input type="text" id="qx_date_d"
                                                                          value="13">日</label>

                    <label for="yxqx_date" class="yx_Date">有限期限：<input type="text" id="qx_date_y"
                                                                       value="2016" disabled="disabled">年<input
                            type="text" id="qx_date_m" value="12" disabled="disabled">月<input
                            type="text" id="qx_date_d" value="13" disabled="disabled">日至<input
                            type="text" id="yxqx_date_y" value="2017" disabled="disabled">年<input
                            type="text" id="yxqx_date_m" value="12" disabled="disabled">月<input
                            type="text" id="yxqx_date_d" value="12" disabled="disabled">日</label>


                </div>

            </fieldset>

            <div class="big_box">

                <div class="table-responsive" style="margin-top:15px;">
                    <table class="table table-bordered htbd" style="text-align:center;">
                        <caption style="    text-align: left;font-weight:700;margin-bottom:10px;">合同标的
                        </caption>

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
                        <caption style="    text-align: left;font-weight:700;margin-bottom:10px;">合同项目
                        </caption>
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
                    <table class="table table-bordered" style="text-align:center;">
                        <caption style="    text-align: left;font-weight:700;margin-bottom:10px;">合同配置
                        </caption>

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
    </div>
</div>
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

</body>
</html>
