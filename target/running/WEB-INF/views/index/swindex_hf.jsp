<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style type="text/css">
.profile-container .profile-header .profile-info {
    min-height: 175px;
    border-right: 0!important;
    padding: 35px 10px 35px 50px;
}
.profile-container .profile-header {
    margin: 0px -4% 0;
}

.task-row {
    margin-right: -15px;
    margin-left: -15px;
    margin-top: 25px;
}
.table thead tr th:first-child{text-align:center}
/* ul.pagination{clear:both!important;} */
.navbar .navbar-inner .a-group{margin-right: 0px;}
.navbar .navbar-inner .a-group  a{color: #eee;cursor: pointer;line-height: 50px;min-width:100px;display: inline-block;}
.navbar .navbar-inner .a-group a:hover{text-decoration:none}
.navbar .navbar-inner .a-group a span{width: 15px;height: 15px;border-radius: 15px;background:#999999;position: relative;display: inline-block;line-height: 45px;cursor: pointer;}
.mt0{margin-top: 0px!important}
.border-radius-5{border-radius: 2px}
#task_list {height: 514px;}
#task_list li{position: relative; height: 88px; border-bottom: 1px solid #e5e5e5}
.select2-container .select2-choice .select2-arrow{top:7px!important}
.mr5{margin-right: 5px}.ml5{margin-left: 5px}
#task{margin:0 auto;}


*{padding: 0px; margin: 0px;}
.content{
	width: 100%;
	height: 0px;
	background:#2dc3e8;
}

.content .select{
	position: relative;
	cursor: pointer;
	height:45px;
}
.content .select::after{
	content: "";
	display: block;
	border-left: 1px solid transparent;
	border-bottom: 1px solid transparent;
	top: 12px;
	right: 12px;
	transform: rotate(-46deg);
	transition: all .3s ease-in;
}
.content .select p{
   line-height: 51px;
   font-size: 12px;
   font-family: "microsoft yahei";
   color:#eee;
   padding: 0px 0px;
}
.content .select ul{
	width: 99px;
	display: block;
	font-size: 16px;
	background: #FFFFFF;
	position: absolute;
	top: 40px;
	left: 0px;
	max-height: 0px;
	overflow: hidden;
	transition: max-height .3s ease-in;
}
.content .select ul li{
	width: 100%;
	height: 30px;
	line-height: 30px;
	padding: 0px 15px;
	list-style: none;
	color: #666666;
}
.content .select ul li.Selected{
	background:#2dc3e8;
	color: #FFFFFF;
}
.content .select ul li:hover{
	background: #D0D0D0;
}
@-webkit-keyframes slide-down{
	0%{transform: scale(1,0);}
	25%{transform: scale(1,1.2);}
	50%{transform: scale(1,0.85);}
	75%{transform: scale(1,1.05);}
	100%{transform: scale(1,1);}
}

.content .select.open ul{
	max-height: 250px;
	transform-origin: 50% 0;
	-webkit-animation: slide-down .5s ease-in;
	transition: max-height .2s ease-in;
}
.content .select.open::after{
	transform: rotate(134deg);
	transition: all .3s ease-in;
	top: 18px;

}
#xgskjl input{
   width:100%;
}
#xgskjl table thead tr  td {
   width: 1%;
}
.btn:hover, .btn:focus {
    background: #008cee!important;
    color: #fff!important;
}
</style>
<script>
	$(function(){
		// $(".noticeCon").hide();

		$(".select p").click(function(e){
			$(".select").toggleClass('open');
			e.stopPropagation();
		});
		$(".content .select ul li").click(function(e){
			var _this=$(this);
			$(".select > p").text(_this.attr('data-value'));
			_this.addClass("Selected").siblings().removeClass("Selected");
			$(".select").removeClass("open");
			e.stopPropagation();
		});
		$(document).on('click',function(){
			$(".select").removeClass("open");
		})
	});
</script>
<title>首页1</title>
</head>
<body style="padding:10px;">
<jsp:include page="../public/menulist.jsp"></jsp:include>
<jsp:include page="../public/lib.jsp"></jsp:include>
<div style="height:50px;width:350px;font-size:26px;font-family:'华文行楷','Arial','Microsoft YaHei','黑体','宋体','sans-serif';margin:0 auto; border:1px solid #008cee;background-color:#008cee;color:#fff;z-index:999;display:inline-block;line-height:50px;text-align:center;border-radius:20px;position:absolute;right: 42%;top: 480px;display:none;" class="noticeCon">
    操作成功
</div>

<div class="main-container container-fluid"style="width: 1610px;float: right; padding-left: 0;">
    <!-- 页面容器 -->
    <div class="page-container"style="background:#fff;    margin-top: 2px;    padding-right: 25px;">
        <!-- 页面内容 -->
        <div class="">
            <div class="row">
                <!-- 输入框 -->

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
								<a class="btn btn-default DTTT_button_copy" id="operateMode_release" name="send" style="margin: 0% 0%;margin-left:10px;border-left:1px solid #ccc;background:#008cee;color:#fff;border-radius: 5px;" onclick="Showbo.Msg.confirm('您确认要进行保存操作吗？')">
									<span > 保存</span>
								</a>
								<a class="btn btn-default DTTT_button_copy" id="operateMode_release1" name="send" style="margin: 0% 0%;margin-left:10px;border-left:1px solid #ccc;background:#008cee;color:#fff;border-radius: 5px;" onclick="Showbo.Msg.confirm('您确认要进行发布操作吗？')">
									<span > 发布</span>
								</a>
								<a class="btn btn-default DTTT_button_copy" id="operateMode_release2" name="send" style="margin: 0% 0%;margin-left:10px;border-left:1px solid #ccc;background:#008cee;color:#fff;border-radius: 5px;" href="swindex_hf.html">
									<span > 回访</span>
								</a>								
									<a class="btn btn-default DTTT_button_copy" id="bnt" name="send" style="margin: 0% 0%;margin-left:10px;border-left:1px solid #ccc;background:#008cee;color:#fff;border-radius: 5px;" href="swindex_sh.jsp">
									<span> 审核</span>
								</a>
																</a>								
									<a class="btn btn-default DTTT_button_copy" id="bntgd" name="send" style="margin: 0% 0%;margin-left:10px;border-left:1px solid #ccc;background:#008cee;color:#fff;border-radius: 5px;background-color:#008cee!important" href="swindex_gd.jsp">
									<span >归档</span>
								</a>						
								<a class="btn btn-default DTTT_button_print" id="operateMode_new2" name="edit1" title="View print view1" style="margin-left:10px;border-left:1px solid #ccc;background:#008cee;color:#fff;border-radius: 5px;" onclick="Showbo.Msg.confirm('您确认要进行作废该任务吗？')">
									<span >作废</span>
								</a>



								<!--
                                <a class="btn btn-default DTTT_button_collection" id="delete" name="delete">
                                <span>删除 </span>
                                </a> -->
							</div>
						</div>
					</div>
	<fieldset id="fieldset" class="fieldset_taskinfo" style="margin:15px 15px;    padding: 15px 15px;">
		<legend style="color:#008cee;line-height:20px;">任务信息</legend>
						<div class="row" style="margin-right:150px;">
                        	<div class="col-md-4">
								    <input id="taskNum" name="taskNum" placeholder="G201641396" disabled class=" right"   readonly="true"   style="height: 22px;width:128px;"/>
                              		<p class="ma_t  ab" style="float: right;">任务编号：</p>
                        	</div>
                            <div class="col-md-4">
								<input id="createdPerson" name="createdPerson" placeholder="王蒙" disabled class=" right"     style="height: 22px; width:128px;"/>
                             	<p class="ma_t  ab" style="float: right;">创建人：</p>
                            </div>
                            <div class="col-md-4">
								<input id="sendTime" name="sendTime" placeholder="2016/12/23" disabled  class=" right" required = "required"  style="width: 180px;"/>
                             	<p class="ma_t  ab" style="float: right;">发布时间：</p>
                            </div>
                        </div>
                        <hr class="wide">
                        <div class="row" style="margin-right:150px;">
	                            <div class="col-md-4" style="position:relative;">
									<!-- <input id="customerId" name="customerId"  class="easyui-textbox right"  required = "required" style="height: 22px;"/> -->
									<input id="customerId" name="customerId"  class=" right"  required = "required" style="height: 22px;" placeholder="北京建筑建材研究院"  value="" disabled="disabled" />
	                                <p class="ma_t  ab" style="float: right;">客户名称：</p>
	                                <!--  <img src="./image/plus.png" alt="" id="addkh"  class="addxm" data-toggle="modal" data-target="#myModalkh" style="z-index:111"> -->
	                            </div>
	                            <div class="col-md-4"style="position:relative;">
									<!-- <input id="taskName" name="taskName"  class="easyui-textbox right" style="height: 22px;"/> -->
									<input id="taskName" name="taskName"  class=" right" style="height: 22px;"placeholder="建筑建材搅拌站一号线" value="" disabled="disabled"  />
									<p class="ma_t  ab" style="float: right;" >项目简称：</p>
									<!-- <img src="./image/plus.png" alt="" id="addxm" class="addxm" data-toggle="modal" data-target="#myModalxm" style="z-index:111"> -->
                                    <input id="id" name="id"  class="textbox"      style="height: 22px; display:none;"/>
                                	<input id="status" name="status"  class="textbox"      style="height: 22px; display:none;"/>
	                        	</div>
	                          <div class="col-md-4">
								  <!--   <input id="executorId"  name ="executorId"  class="easyui-textbox right" required = "required" style="height: 22px;"/> -->
								     <input id="executorId"  name ="executorId"  class=" right" required = "required" style="height: 22px;" placeholder="陈工" value="" disabled="disabled" />
		                            <p class="ma_t  ab" style="float: right;">工程师：</p>
                        	</div>
                        </div>
                       <hr class="wide">
                        <div class="row" style="margin-right:150px;">
                        	<div class="col-md-4">
								    <input id="province" name="province" placeholder="陕西省" disabled  class=" right"   required = "required" style="height: 22px;"/>
		                            <p class="ma_t  ab" style="float: right;">所在省市：</p>
                        	</div>

                            <div class="col-md-4">
                                    <input id="country" name="country" placeholder="碑林区" disabled   class="right"  required = "required"   style="height: 22px;"/>
								    <p class="ma_t  ab" style="float: right;">所在区县：</p>
                            </div>

                            <div class="col-md-4">
                                    <input id="faultCategory" name="faultCategory" placeholder="零件损坏" disabled   class=" right" style="height: 22px;"/>
								    <p class="ma_t  ab" style="float: right;">故障类别：</p>
                            </div>
                        </div>
                        <hr class="wide">
                        <div class="row" style="margin-right:150px;">
                        	<div class="col-md-4">
								<input id="planArriveTime" name="planArriveTime" placeholder="2016/12/01" disabled  class=" right"  required = "required"  style="width: 180px;"/>
								<p class="ma_t  ab" style="float: right;">计划到达时间：</p>
							</div>

                            <div class="col-md-4">
                                <input id="planFinishTime" name="planFinishTime" placeholder="2016/12/11" disabled   class=" right"  required = "required"  style="width: 180px;" />
								<p class="ma_t  ab" style="float: right;">计划完成时间：</p>
							</div>

                            <div class="col-md-4">
								    <input id="taskType"  name ="taskType"  class=" right" placeholder="现场服务" disabled    required = "required"   style="height: 22px;"/>
								    <p class="ma_t  ab" style="float: right;">任务类型：</p>
                            </div>
                        </div>
                        <hr class="wide">
                        <div class="row" style="margin-right:150px;">
                             <div class="col-md-4">
								 <input id="level" name="level"  class=" right" placeholder="一级" disabled      style="height: 22px;"  />
		                            <p class="ma_t  ab" style="float: right;">客户级别：</p>

	                            </div>
                            <div class="col-md-4">
								    <input id="transportation" name= "transportation"  placeholder="出租车" disabled class=" right"  required = "required"     style="height: 22px;"/>
								<p class="ma_t  ab" style="float: right;">交通方式：</p>
                            </div>
                            <div class="col-md-4">
                                    <input id="contactName" name="contactName" placeholder="孙站长" disabled  class=" right"   required = "required"    style="height: 22px;"/>
								    <p class="ma_t  ab" style="float: right;">联系人：</p>
							</div>
                        </div>
                         <hr class="wide">
                        <div class="row" style="margin-right:150px;">
                        	<div class="col-md-4">
                                    <input id="position" name="position" placeholder="工程师" disabled  class="right"  required = "required"     style="height: 22px;"/>

								<p class="ma_t  ab" style="float: right;">联系人职务：</p>
							</div>

                            <div class="col-md-4">
                                    <input id="fixedPhone" name="fixedPhone" placeholder="13587623678" disabled  class=" right"    style="height: 22px;"  value="" />
								<p class="ma_t  ab" style="float: right;">联系电话：</p>
                            </div>

                            <div class="col-md-4">
                                    <input id="contactPhone"  name="contactPhone" placeholder="113556546342" disabled class=" right"   required = "required"    style="height: 22px;"/>
								<p class="ma_t  ab" style="float: right;">联系手机：</p>
							</div>
                        </div>
                         <hr class="wide">
                        <div class="row" style="margin-right:150px;">
                        	<div class="col-md-4">
                                    <input id="charge" name="charge" placeholder="5000" disabled class=" right"   required = "required"    style="height: 22px;"  />
								<p class="ma_t  ab" style="float: right;">标准收费：</p>
							</div>

                            <div class="col-md-4">
                                    <input id="workHours" name="workHours" placeholder="8" disabled class=" right"  required = "required"    style="height: 22px; "  />
								   <p class="ma_t  ab" style="float: right;">标准工时：</p>
							</div>

                            <div class="col-md-4">
                                    <input id="loopTime" name="loopTime" placeholder="3" disabled class=" right"      style="height: 22px;"/>
								<p class="ma_t  ab" style="float: right;">循环次数：</p>
                            </div>
                        </div>
						<hr class="wide">
						<div class="row" style="margin-right:150px;">
							<div class="col-md-4">
								<input id="workHours1" name="workHours" placeholder="333" disabled class=" right"  required = "required"    style="height: 22px; "  />
								<p class="ma_t  ab" style="float: right;">工作量：</p>
							</div>
						</div>

</fieldset>
<!-- <div class="bz_content" style="border-top:none;text-align:center;padding:10px 20px; display:none;">	
		<label for="bz_con">备注</label>           
		<input type="text" value="收费2000元" name="bz_con" id="bz_con">

</div> -->



                    	
                        <div class="row"  style="margin:0px 15px;">
                        <fieldset id="fieldset" class="fieldset_taskinfo">
		<legend style="color:#008cee;line-height:20px;">派单信息</legend>
                           <div class="col-md-6">
							   <textarea style="width:80%;" class="form-control right" name="sendDemand" rows="2" id="sendDemand"  placeholder="派单要求" disabled="disabled">尽快执行</textarea>
							   <p style="margin-right: 8px;float:right;color:#000;">派单要求：</p>
						   </div>
                           <div class="col-md-6">
	                       		<textarea  style="width:80%;" class="form-control right" rows="2" id="issueReason" name="issueReason" placeholder="故障原因" disabled="disabled">设备异常</textarea>
							   <p style="margin-right: 8px;float:right;color:#000;">故障原因：</p>
	                        </div>
	                        </fieldset>
                    	</div>
				</form>
<div class="lrzj_tabCard">
  <div class="title cf">
<!--     <h2 class="fl titlecol">任务详情</h2> -->
    <ul class="title-list fr cf task_Info">
      <li class="on IndexprojectDet1">项目详情</li>
      <li class="IndexprojectRec1">往来记录</li>
      <li class="IndexprojectBx1">报销明细</li>
      <li class="IndexprojectMon1">收款记录</li>
       <li class="IndexprojectSerRec1">服务记录</li>
    </ul>
  </div>
  <div class="product-wrap">
    <!--案例1-->
    <div class="fieldset2_xm">

    <fieldset id="fieldset2_xm" class="fieldset2_xm" style="height:auto;padding:0 0 0 15px ;" >
		<legend style="color:#008cee;line-height:20px;">项目详情</legend>
		 
             
       <div class="section"  style="margin:0px 5px -20px 5px; position:relative;top:-35px;">
        <button type="button" class="btn btnpz btnstyle btn_ht_detail2" style="margin:10px 15px;float:right;color:#fff;background-color:#008cee;">合同详情</button>
        <div class="table-responsive" style="margin-top:15px;">
            <table class="table table-bordered"  style="margin: 0 -5px;text-align:center;">
                <thead>
                <tr>
                    <td>项目编号</td>
                    <td>项目名称</td>
                    <td>客户名称</td>
                    <td>项目代码</td>
                    <td>质保期状态</td>
                    <td>调试日期</td>
                    <td>验收日期</td>
                    <td>联系人</td>
                    <td>联系人电话</td>
                    <td>调试人员</td>
                    <td>项目状态</td>
                    <td>配置明细</td>
                     <td>工艺明细</td>
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
                    <td>1111</td>
                    <td>刘先生</td>
                    <td>1888888888</td>
                    <td>刘工</td>
                    <td>新项目</td>
                    <td style="color:blue;" class="pz_mx">明细</td>
                     <td style="color:blue;" class="gy_mx">明细</td>
                </tr>
                       
                </tbody>
            </table>
        </div>
        
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


	<fieldset id="fieldset_htinfomation" class="fieldset_htinfomation">
		<legend style="color:#008cee;line-height:20px;">合同详情</legend>
	  <fieldset id="fieldset" class="" >
		<legend style="color:#008cee;line-height:20px;">基本信息</legend>
		<div style="text-align:center;" class="cont_ht">

				<label for="A_name"> 甲   方：<input type="text" id="A_name" value="云南轮巨建设工程有限公司" disabled="disabled"></label>
		
				<label for="B_name"> 乙   方：<input type="text" id="B_name" value="上海思伟软件有限公司"  disabled="disabled"></label>
		
				<label for="style_name">签订方式：<input type="text" id="style_name" value="传真"  disabled="disabled"></label>
		
				<label for="qx_date"class="qd_date" >签订日期：<input type="text" id="qx_date_y" value="2016"  disabled="disabled">年<input type="text" id="qx_date_m" value="12"  disabled="disabled">月<input type="text" id="qx_date_d" value="13"  disabled="disabled">日</label>
	
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

    </div>
    <!--案例2-->
    <div class="  fieldset_wljl">
      <!---------------------------------------往来记录---------------------------->
<fieldset id="fieldset"  style="border-radius:5px; margin: 15px 15px;" class="">
		<legend style="color:#008cee;line-height:20px;">往来记录</legend>
                    <div class="table-responsive" style="margin:15px 0;text-align:center;">
                        <table class="table table-bordered" style="margin-bottom:15px;">
                          
                            <thead>
                            <tr style="text-align: center">
                                <td>项目名称</td>
                                <td>服务内容</td>
                                <td>质保期状态</td>
                                <td>任务类型</td>
                                <td>调试人员</td>
                                <td>联系人</td>
                                <td>电话</td>
                                <td>费用</td>
                                <td>调试日期</td>
                                <td>验收日期</td>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>云南轮巨1#</td>
                                <td>修改工程机，系统软件崩溃</td>
                                <td>未过期</td>
                                <td>现场服务</td>
                                <td>李工</td>
                                <td>李先生</td>
                                <td>18829290534</td>
                                <td>3000</td>
                                <td>2016/11/01</td>
                                <td>2016/11/02</td>
                            </tr>
                            <tr>
                                <td>云南轮巨1#</td>
                                <td>修改工程机，系统软件崩溃</td>
                                <td>未过期</td>
                                <td>现场服务</td>
                                <td>李工</td>
                                <td>李先生</td>
                                <td>18829290534</td>
                                <td>3000</td>
                                <td>2016/12/01</td>
                                <td>2016/12/02</td>
                            </tr>
                            <tr>
                                <td>云南轮巨1#</td>
                                <td>修改工程机，系统软件崩溃</td>
                                <td>未过期</td>
                                <td>现场服务</td>
                                <td>李工</td>
                                <td>李先生</td>
                                <td>18829290534</td>
                                <td>3000</td>
                                <td>2016/1/01</td>
                                <td>2016/1/02</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    </fieldset>

    </div>
    <!--案例3-->
    <div class="  fieldset_bxmx">
      <!---------------------------------报销明细-------------------->

						<fieldset id="" class="fieldset1  " style="margin:15px 15px;display:block;padding:15px 15px 0 15px;">
						<legend style="color:#008cee;line-height:20px;">报销明细</legend>
						<div class="table-responsive det" style="margin:0;" >
							<table class="table table-bordered">
								<thead>
								<tr>

									<td>费用类型</td>
									<td>发票号码</td>
									<td>上传日期</td>
									<td>车牌号</td>
									<td>公里数</td>
									<td>酒店名称</td>
								    <td>酒店地址</td>
								    <td>住宿天数</td> 
								    <td>单价</td> 
								    <td>总金额(元)</td>
									<td>停车时长</td>
									<td>通话时长</td> 
									<td>摘要</td>
									<td>状态</td>
								</tr>
								</thead>
								<tbody>
								<tr>

									<td>住宿费</td>
									<td>00692281</td>
									<td>2016/12/01</td>
									<td>/</td>
									<td>/</td>
									<td>香格里拉大酒店</td>
									<td>云南省昆明市春城路</td>
									<td>1</td>
									<td>180</td>
									<td>180</td>
									<td>/</td>
									<td>/</td>
									<td>请尽快报销</td>
									<td style="color:#008cee;">未审核</td>
								</tr>

									<td>交通费</td>
									<td>20692281</td>
									<td>2016/12/01</td>
									<td>陕A999999</td>
									<td>100</td>
									<td>/</td>
									<td>/</td>
									<td>/</td>
									<td>/</td>
									<td>/</td>
									<td>/</td>
									<td>/</td>
									<td>请尽快报销</td>
									<td style="color:#008cee;">未审核</td>
								</tr>
							</tr>

									<td>停车费</td>
									<td>20693381</td>
									<td>2016/12/01</td>
									<td>陕A888888</td>
									<td>/</td>
									<td>/</td>
									<td>/</td>
									<td>/</td>
									<td>4</td>
									<td>40</td>
									<td>10</td>
									<td>/</td>
									<td>请尽快报销</td>
									<td style="color:#008cee;">未审核</td>
								</tr>
							</tr>

									<td>通讯费</td>
									<td>25693381</td>
									<td>2016/12/01</td>
									<td>/</td>
									<td>/</td>
									<td>/</td>
									<td>/</td>
									<td>/</td>
									<td>0.33</td>
									<td>79.2</td>
									<td>/</td>
									<td>4</td>
									<td>请尽快报销</td>
									<td style="color:#008cee;">未审核</td>
								</tr>								
								</tbody>
							</table>
						</div>
						
					</fieldset>




<!---------------------------------行车记录-------------------->
<fieldset  class="fieldset1" style="margin:15px 15px;display:block;padding:15px 15px;">
							<legend style="color:#008cee;line-height:20px;">行车记录</legend>
							<div class="table-responsive det" style="margin:0;" >
								<table class="table table-bordered">
									<thead>
									<tr>
										<td>车次</td>
										<td>路线</td>
										<td>类型</td>
										<td>出发地</td>
										<td>目的地</td>
										<td>开始时间</td>
										<td>结束时间</td>
										<td>车牌号</td>
										<td>开始公里数</td>
										<td>结束公里数</td>
										<td>总历时</td>

									</tr>
									</thead>
									<tbody>
									<tr>
										<td>/</td>
										<td>/</td>
										<td>自驾</td>
										<td>西安市电子三路</td>
										<td>西安火车站</td>
										<td>2016/11/11 10:55:00</td>
										<td>2016/11/11 11:55:00</td>
										<td>陕C74118</td>
										<td>1024</td>
										<td>1081</td>
										<td>01:00</td>
									</tr>
									<tr>
										<td>G662</td>
										<td>/</td>
										<td>高铁</td>
										<td>西安</td>
										<td>云南</td>
										<td>2016/11/11 10:55:00</td>
										<td>2016/11/11 16:55:00</td>
										<td>/</td>
										<td>/</td>
										<td>/</td>
										<td>05:46</td>
									</tr>
									<tr>
										<td>/</td>
										<td>/</td>
										<td>乘车</td>
										<td>昆明火车站</td>
										<td>云南省昆明市春城路</td>
										<td>2016/11/11 17:10:00</td>
										<td>2016/11/11 18:25:00</td>
										<td>陕C74110</td>
										<td>/</td>
										<td>/</td>
										<td>01:15</td>
									</tr>
									<tr>
										<td>/</td>
										<td>10路</td>
										<td>公交</td>
										<td>建国门站</td>
										<td>古城站</td>
										<td>2016/11/11 19:00:00</td>
										<td>2016/11/11 20:15:00</td>
										<td>/</td>
										<td>/</td>
										<td>/</td>
										<td>01:15</td>
									</tr>
									<tr>
										<td>/</td>
										<td>地铁1号线</td>
										<td>地铁</td>
										<td>建邦门站</td>
										<td>春明站</td>
										<td>2016/11/11 19:00:00</td>
										<td>2016/11/11 20:15:00</td>
										<td>/</td>
										<td>/</td>
										<td>/</td>
										<td>01:15</td>
									</tr>										

									</tbody>
								</table>
							</div>
						</fieldset>
    </div>
    <!--案例4-->
    <div class=" fieldset_skjl">
                     <!--收款记录-->
      <fieldset id="fieldset"  style="border-radius:5px; margin: 15px 15px;" class="">
		<legend style="color:#008cee;line-height:20px;">收款记录</legend>
                    <div class="table-responsive" style="margin:15px 0 0 15px;;text-align:center;">
                        <table class="table table-bordered" style="margin-bottom:15px;">
                            
                            <thead>
                            <tr style="text-align: center">
                            	
                                <td>收款日期</td>
                                <td>收款方式</td>
                                <td>收款金额</td>
                                <td>收款摘要</td>
                                <td>是否上交</td>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                            	
                                <td>2016/11/01</td>
                                <td>现金</td>
                                <td>2000</td>
                                <td>收到混凝土公司的服务费</td>
								<td style="color:#008cee">是</td>
                            </tr>
                            <tr>
                            
                                <td>2016/12/01</td>
                                <td>现金</td>
                                <td>1000</td>
                                <td>收到混凝土公司的服务费</td>
                                <td style="color:#008cee">是</td>
                            </tr>
                            </tbody>
                        </table>
                        						
                    </div>
                 </fieldset>

    </div>
    <!--案例5-->
    <div class="  fieldset_fwjl">
                                           <!--服务记录-->
<fieldset id="fieldset"  style="border-radius:5px; margin: 15px 15px;" class="">
		<legend style="color:#008cee;line-height:20px;">服务记录</legend>
					<div class="arcivePart" style="display:block!important;margin-top:-25px;">
						<div class="row change_mar rt1">
							<div class="col-md-9" style="margin-top:10px;">
								<p style="margin-top: 10px;">现场情况信息</p>
								<textarea class="form-control" rows="3" id="liveSituation" name="liveSituation" placeholder="现场情况信息" disabled="disabled"></textarea>
							</div>

							<!-- ／现场情况信息幻灯片 -->
						</div>
						<!-- 现场情况信息幻灯片 -->
						<div class="row rt1">
							<!-- <div class="col-md-2" style="margin-top:20px;"> -->


								<div class="liveSituationImgs  img3 img_smallimg">
                                    <img src="../../image/2.jpg" alt=""/>
                                    <img src="../../image/3.jpg" alt=""/>
                                    <img src="../../image/4.jpg" alt=""/>
                                    <img src="../../image/5.jpg" alt=""/>
								</div>
						</div>
						<div class="row rt1">
							<div class="col-md-9">
								<p style="margin-top: 10px;">服务记录</p>
								<textarea class="form-control" rows="3" id="visiteRecord" name="visiteRecord" placeholder="服务记录" disabled="disabled"></textarea>
							</div>

							<!-- 服务记录幻灯片 -->
<!-- 							<div class="col-md-2">
								<div class="visiteRecordImgs top1 img3" style="backgrand:#0000">
									<img src="image/divyia.jpg" alt=""/>
								</div>
							</div> -->
							<!-- ／服务记录幻灯片 -->
						</div>
						<div class="row rt1">
							<!-- <div class="col-md-2" style="margin-top:20px;"> -->
								<div class="liveSituationImgs  img3 img_smallimg">
                                    <img src="../../image/2.jpg" alt=""/>
                                    <img src="../../image/3.jpg" alt=""/>
                                    <img src="../../image/4.jpg" alt=""/>
                                    <img src="../../image/5.jpg" alt=""/>
								</div>
						</div>
						<div class="row change_mar rt1">
							<div class="col-md-9">
								<p style="margin-top: 10px;">处理结果</p>
								<textarea class="form-control" rows="3" id="processResult" name="processResult" placeholder="处理结果" disabled="disabled"></textarea>
							</div>

							<!-- 处理结果幻灯片 -->
<!-- 							<div class="col-md-2">
								<div class="processResultImgs top1 img3">
									<img src="image/divyia.jpg" alt=""/>
								</div>
							</div> -->
							<!-- ／处理结果幻灯片 -->
						</div>
						<div class="row rt1">
							<!-- <div class="col-md-2" style="margin-top:20px;"> -->
								<div class="liveSituationImgs  img3 img_smallimg">
                                    <img src="../../image/2.jpg" alt=""/>
                                    <img src="../../image/3.jpg" alt=""/>
                                    <img src="../../image/4.jpg" alt=""/>
                                    <img src="../../image/5.jpg" alt=""/>
								</div>
						</div>
						<div class="row change_mar rt1">
							<div class="col-md-9">
								<p>点评</p>
								<textarea class="form-control" rows="3" id="processResult1" name="processResult" placeholder="客户评价" disabled="disabled"> 服务很热情，工作技能扎实。</textarea>
							</div>
						</div>
    

					</div>


					</fieldset>


                        <div class="img_bigimg">
                            <div style="height:40px;"></div>

                            <div id="navigate1">
                                <img src="../../image/delete.png" alt="" class="img_cancel">

                            </div>

                            <div id="img_zzsc">
                                <div id="img_box">
                                   <img id="img1" src="../../images/original/2.jpg"/>
									<img id="img2" src="../../images/original/3.jpg"/>
									<img id="img3" src="../../images/original/4.jpg"/>
									<img id="img4" src="../../images/original/5.jpg"/>
                                    <div style="clear:both;"></div>
                                </div>
                            </div>
                            <div id="imgthumb_box" class="imgthumb_box">
                                <a href="" class="thumblink" id="imglink1"><img src="../../images/thumb/2.jpg"/></a>
                                <a href="" class="thumblink" id="imglink2"><img src="../../images/thumb/3.jpg"/></a>
                                <a href="" class="thumblink" id="imglink3"><img src="../../images/thumb/4.jpg"/></a>
                                <a href="" class="thumblink" id="imglink4"><img src="../../images/thumb/5.jpg"/></a>
                            </div>
                        </div>
                        <div id="ShowBolightBox2" style="display: none; width: 1932px; height: 100%;display:none;"></div>
    </div>
  </div>
 </div>
                     <div class="row change_mar rt1 hf_info" >
                            <div class="col-md-9">
                                <p>回访记录</p>
                                <textarea class="form-control" rows="3" id="taskChecked" name="taskChecked" placeholder="评价内容">客户对我们的服务很满意，有意长期合作</textarea>
                            </div>

                        </div>

                     	<div class="row change_mar rt1 hf_info_suc">
                            <div class="col-md-9">
                                <p>回访记录</p>
                                <textarea class="form-control" rows="3" id="taskChecked" name="taskChecked" placeholder="评价内容" disabled="disabled">客户对我们的服务很满意，有意长期合作</textarea>
                            </div>
                            <div class="col-md-2">
                                <div class="processResultImgs top1 img3">
                                    <img src="image/divyia.jpg" alt=""/>
                                </div>
                            </div>
                        </div>
                         	<div class="shenghe_btn">
								<button type="button" class="btn" style="margin:10px 0;background-color: #008cee;color: #fff;" id="pass_hf">完成回访</button>
							
							</div>
				</div>
				<div class="col-md-3">
					<!--Widget person-->
					<div class="row">
						<div class="col-lg-12 col-xs-12 col-md-12" style="padding:0px;">
							<div class="widget">
								<div class="widget-header bordered-bottom bordered-themesecondary">
									<i class="widget-icon fa fa-tags themesecondary"></i>
									<span class="widget-caption themesecondary">人员列表</span>
									
											<a href="dituall.html"><img src="./image/iconfont-ditu001.png" alt=""style="padding: 10px 10px;margin-right:30px;width:40px;height:40px;float:right;"></a>
								</div>
								<div class="widget-body configure">
									<div id="actionList">
										<div class="table-responsive" style="margin-top:15px;">
											<table class="table table-bordered">
												<thead>
												<tr>
													<td style="text-align: center;font-size:14px;font-weight:700;">姓名</td>
													 <td style="text-align: center;font-size:14px;font-weight:700;">当前位置</td>
													<!--<td style="text-align: center;font-size:14px;font-weight:700;">-->
														<!--<span style="padding: 0 10px;position:absolute;">当前位置</span>-->
														<!--</td>-->
													<td style="text-align: center;font-size:14px;font-weight:700;    width: 30%;">当前状态</td>
												</tr>
												</thead>
												<tbody>
													<tr>
														<td style="text-align: center;">黄飞鹏</td>
														<td style="text-align: center;"><a href="http://j.map.baidu.com/RHkqH" target="_blank">西安</a></td>
														<td style="text-align: center;">工作中</td>
													</tr>
													<tr>
														<td style="text-align: center;">郑健</td>
														<td style="text-align: center;"><a href="http://j.map.baidu.com/XOkqH"target="_blank">新疆</a></td>
														<td style="text-align: center;">工作中</td>
													</tr>
													<tr>
														<td style="text-align: center;">马草</td>
														<td style="text-align: center;"><a href="http://j.map.baidu.com/RHkqH"target="_blank">西安</a></td>
														<td style="text-align: center;">休息中</td>
													</tr>
													<tr>
														<td style="text-align: center;">赵雷</td>
														<td style="text-align: center;"><a href="http://j.map.baidu.com/RHkqH"target="_blank">西安</a></td>
														<td style="text-align: center;">工作中</td>
													</tr>
													<tr>
														<td style="text-align: center;">刘帅</td>
														<td style="text-align: center;"><a href="http://j.map.baidu.com/RHkqH"target="_blank">西安</a></td>
														<td style="text-align: center;">工作中</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<nav style="padding-left: 10px; text-align: center;">
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
					<!--<div class="row">-->
						<!--<div class="col-lg-12 col-xs-12 col-md-12">-->
							<!--<div class="widget">-->
								<!--<div class="widget-header bordered-bottom bordered-themesecondary">-->
									<!--<i class="widget-icon fa fa-tags themesecondary"></i>-->
									<!--<span class="widget-caption themesecondary">报销列表</span>-->
								<!--</div>-->
								<!--<div class="widget-body configure cor">-->
									<!--<div id="ReceiptList"></div>-->
									<!--<div id="ReceiptPage"></div>-->
								<!--</div>-->
							<!--</div>-->
						<!--</div>-->
					<!--</div>-->
					<!--Widget person-->
					<!-- 工作记录 -->
					<div class="task-row row" style="height:100%;">
						<div class="widget" style="margin-top: -30px!important;">
							<div class="widget-header bordered-bottom bordered-themeprimary cor" style="height:53px;padding:10px;">
								<i class="widget-icon fa fa-tasks themeprimary"></i>
								<span class="widget-caption themeprimary">任务列表</span>
									<!-- <span style="color: #2dc3e8 ;line-height:20px;font-size:13px;">工程师</span> -->
           							 <input type="text" placeholder="请输入工程师姓名" class="set inp_soso_gcs"/>
           							  <button type="button" class="btn" style="background-color: #008cee;color: #fff;border-radius:15px;line-height:14px;font-size:12px;margin-right:10px;">搜索</button>								
								<div style="width:69px;height:34px;" class="pull-right">
									<div class="btn-group pull-right">
										<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
											状态 <span class="caret"></span>
										</button>
										<ul class="dropdown-menu" role="menu" style="text-align:center;">
											<li id="menu1"><a href="#">待发布</a></li>
											<li id="menu2"><a href="#">已发布</a></li>
											<li id="menu3"><a href="#">执行中</a></li>
											<li id="menu4"><a href="#">已完成</a></li>
											<li id="menu5"><a href="#">已审核</a></li>
											<li id="menu6"><a href="#">已归档</a></li>
										</ul>
									</div>
								</div>
							</div>


	<!--Widget Header-->
	<div class="widget-body cor" style="position:relative;">
		<div class="widget-main no-padding">
			<div class="task-container">
				<ul class="tasks-list" id="task_list">
					<li id="41008" class="task-item">
						<div class="task-check change_p col-md-3 ">G201641008</div>
						<div class="task-state col-md-3" style="left: 3%;top: 22px"><span
								class="label label-yellow">已完成</span></div>
						<div class="task-state change_p1 col-md-3"><span class="label label-blue">尚庄庄</span></div>
						<div class="task-time col-md-3">2016-11-03</div>
						<div class="task-body col-md-6">走访客户</div>
						<div class="task-creator col-md-6">陕西润邦<a href=""> </a></div>
						<div class="task-assignedto"></div>
					</li>
					<li id="41007" class="task-item">
						<div class="task-check change_p col-md-3 ">G201641007</div>
						<div class="task-state col-md-3" style="left: 3%;top: 22px"><span
								class="label label-yellow">已完成</span></div>
						<div class="task-state change_p1 col-md-3"><span class="label label-blue">尚庄庄</span></div>
						<div class="task-time col-md-3">2016-11-03</div>
						<div class="task-body col-md-6">走访客户</div>
						<div class="task-creator col-md-6">陕西天皓萬业<a href=""> </a></div>
						<div class="task-assignedto"></div>
					</li>
					<li id="41008" class="task-item">
						<div class="task-check change_p col-md-3 ">G201641008</div>
						<div class="task-state col-md-3" style="left: 3%;top: 22px"><span
								class="label label-yellow">已完成</span></div>
						<div class="task-state change_p1 col-md-3"><span class="label label-blue">尚庄庄</span></div>
						<div class="task-time col-md-3">2016-11-03</div>
						<div class="task-body col-md-6">走访客户</div>
						<div class="task-creator col-md-6">陕西润邦<a href=""> </a></div>
						<div class="task-assignedto"></div>
					</li>
					<li id="41007" class="task-item">
						<div class="task-check change_p col-md-3 ">G201641007</div>
						<div class="task-state col-md-3" style="left: 3%;top: 22px"><span
								class="label label-yellow">已完成</span></div>
						<div class="task-state change_p1 col-md-3"><span class="label label-blue">尚庄庄</span></div>
						<div class="task-time col-md-3">2016-11-03</div>
						<div class="task-body col-md-6">走访客户</div>
						<div class="task-creator col-md-6">陕西天皓萬业<a href=""> </a></div>
						<div class="task-assignedto"></div>
					</li>
					<li id="41008" class="task-item">
						<div class="task-check change_p col-md-3 ">G201641008</div>
						<div class="task-state col-md-3" style="left: 3%;top: 22px"><span
								class="label label-yellow">已完成</span></div>
						<div class="task-state change_p1 col-md-3"><span class="label label-blue">尚庄庄</span></div>
						<div class="task-time col-md-3">2016-11-03</div>
						<div class="task-body col-md-6">走访客户</div>
						<div class="task-creator col-md-6">陕西润邦<a href=""> </a></div>
						<div class="task-assignedto"></div>
					</li>
					<li id="41007" class="task-item">
						<div class="task-check change_p col-md-3 ">G201641007</div>
						<div class="task-state col-md-3" style="left: 3%;top: 22px"><span
								class="label label-yellow">已完成</span></div>
						<div class="task-state change_p1 col-md-3"><span class="label label-blue">尚庄庄</span></div>
						<div class="task-time col-md-3">2016-11-03</div>
						<div class="task-body col-md-6">走访客户</div>
						<div class="task-creator col-md-6">陕西天皓萬业<a href=""> </a></div>
						<div class="task-assignedto"></div>
					</li>
					<li id="41008" class="task-item">
						<div class="task-check change_p col-md-3 ">G201641008</div>
						<div class="task-state col-md-3" style="left: 3%;top: 22px"><span
								class="label label-yellow">已完成</span></div>
						<div class="task-state change_p1 col-md-3"><span class="label label-blue">尚庄庄</span></div>
						<div class="task-time col-md-3">2016-11-03</div>
						<div class="task-body col-md-6">走访客户</div>
						<div class="task-creator col-md-6">陕西润邦<a href=""> </a></div>
						<div class="task-assignedto"></div>
					</li>
					<li id="41007" class="task-item">
						<div class="task-check change_p col-md-3 ">G201641007</div>
						<div class="task-state col-md-3" style="left: 3%;top: 22px"><span
								class="label label-yellow">已完成</span></div>
						<div class="task-state change_p1 col-md-3"><span class="label label-blue">尚庄庄</span></div>
						<div class="task-time col-md-3">2016-11-03</div>
						<div class="task-body col-md-6">走访客户</div>
						<div class="task-creator col-md-6">陕西天皓萬业<a href=""> </a></div>
						<div class="task-assignedto"></div>
					</li>
					<li id="41008" class="task-item">
						<div class="task-check change_p col-md-3 ">G201641008</div>
						<div class="task-state col-md-3" style="left: 3%;top: 22px"><span
								class="label label-yellow">已完成</span></div>
						<div class="task-state change_p1 col-md-3"><span class="label label-blue">尚庄庄</span></div>
						<div class="task-time col-md-3">2016-11-03</div>
						<div class="task-body col-md-6">走访客户</div>
						<div class="task-creator col-md-6">陕西润邦<a href=""> </a></div>
						<div class="task-assignedto"></div>
					</li>
					<li id="41007" class="task-item">
						<div class="task-check change_p col-md-3 ">G201641007</div>
						<div class="task-state col-md-3" style="left: 3%;top: 22px"><span
								class="label label-yellow">已完成</span></div>
						<div class="task-state change_p1 col-md-3"><span class="label label-blue">尚庄庄</span></div>
						<div class="task-time col-md-3">2016-11-03</div>
						<div class="task-body col-md-6">走访客户</div>
						<div class="task-creator col-md-6">陕西天皓萬业<a href=""> </a></div>
						<div class="task-assignedto"></div>
					</li>
				</ul>
				<div id="task"></div>
				<div style="position:relative;top:390px;">
					<ul class="pagination" id="pagination1" style="    padding-left: 17px; text-align: center;">
					<li class="first disabled" jp-role="first" jp-data="1"><a href="javascript:;">&lt;&lt;</a></li>
					<li class="prev disabled" jp-role="prev" jp-data="0"><a href="javascript:;">&lt;</a></li>
					<li class="page active" jp-role="page" jp-data="1"><a href="javascript:;">1</a></li>
					<li class="page" jp-role="page" jp-data="2"><a href="javascript:;">2</a></li>
					<li class="page" jp-role="page" jp-data="3"><a href="javascript:;">3</a></li>
					<li class="page" jp-role="page" jp-data="4"><a href="javascript:;">4</a></li>
					<li class="page" jp-role="page" jp-data="5"><a href="javascript:;">5</a></li>
					<li class="page" jp-role="page" jp-data="6"><a href="javascript:;">6</a></li>
					<li class="next" jp-role="next" jp-data="2"><a href="javascript:;">&gt;</a></li>
					<li class="last" jp-role="last" jp-data="6635"><a href="javascript:;">&gt;&gt;</a></li>
				</ul>
				</div>
			</div>
		</div><!--控件容器-->
	</div><!--控件内容-->
						</div>
					</div>
				</div>
                    	<!-- arcivePart-->

                   <!-- /arcivePart-->
                </div>

                </div>
            	<!-- 人员名单 和 工作记录 -->
         <!-- 报销列表 -->
			<div class="row">
                      	<div class="col-lg-12">

	                 <!--Car Record 弹出框-->
					    <div class="modal bs-example-modal-carRecord" tabindex="-1" id="bxModal" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
					        <div class="modal-dialog modal-lg">
					            <div class="modal-content">
					                <div class="modal-header">
					                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					                    <h4 class="modal-title" id="myLargeModalLabel">行车记录</h4>
					                </div>
					                <div class="modal-body" style="height: 392px;">

								       <div id="carRecordDetail"></div>


					                </div>
					            </div><!-- /.modal-content -->
					        </div><!-- /.modal-dialog -->
					    </div>
					    <!--Car Record 弹出框-->

					     <!--Reimburse 弹出框-->
					    <div class="modal bs-example-modal-ReimburseCheck" tabindex="-1" id="bxModal" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
					        <div class="modal-dialog modal-lg">
					            <div class="modal-content">
					                <div class="modal-header">
					                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					                    <h4 class="modal-title" id="myLargeModalLabel">报销列表</h4>
					                </div>
					                <div class="modal-body" style="height: 392px;">
					                <div id = "ReimburseCheckDetail"></div>
					            </div><!-- /.modal-content -->
					        </div><!-- /.modal-dialog -->
					    </div>
					    <!--End -->
                   </div>
                    <!--Reimburse 弹出框-->
            	</div>
            	<!-- 报销列表 -->
               </div>
        <!-- /页面内容 -->
          </div>
    <!-- 主容器 -->
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
<div id="ShowBolightBox1" style="display:none;"></div>
<!-- 		<div id="z_cen">
			<div class="sidebar" >
				<a class="left change_w user1" style="height:76px;">
					<p id="loginName" style="height:100%;line-height:76px;">唐杰</p>
				</a>
				<div class="a-group pull-right row" style="width:100%;text-align:center;">
						<a  class="left change_w" id="a" href="lx.html">
							<h4 class="fa  fa-envelope-o mr5"></h4>
							<p>联系人管理</p>
						</a>
						<a  class="left change_w" id="c"  href="ht.html">
							<h4 class="fa  fa-envelope-o mr5"></h4>
							<p>合同管理</p>
						</a>
						<a  class="left change_w" id="d" href="rw.html">
							<h4 class="fa  fa-envelope-o mr5"></h4>
							<p>任务管理</p>
						</a>

						<a  class="left change_w" id="e" href="yh.html">
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
						<a  class="left change_w" id="j" href="xm.html">
							<h4 class="fa  fa-envelope-o mr5"></h4>
							<p>项目管理</p>
						</a>
					<a  class="left change_w"  href="qx.html">
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
		<!-- <a id="btn1" href="javascript:void(0)"style="top:33%;right:0;height:100px; padding: 10px; width: 36px;line-height:20px;cursor:pointer;" > <img src="./image/function.png" alt="">功能列表</a> --> 
	    <!-- <a  id="btn2" href='swindex.html'style="top:50%;border-radius:50%;height:80px;">返回首页</a> -->
	</div>
</div>
<!-- 模态框（Modal） -->
<div  class="modal fade"  id="myModalxm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content " style="padding:0 0 50px 0;">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                
            </div>
           <div class="kh_touxiang">
           <img src="image/tx.jpg" alt="">
           <input type="text" value="李站长" name="kh_contactName">
           </div>
           <div class="kh_txbgc">
           	
           </div>
            <div class="modal-body" >
            <div class="kh_content xm_content" style="border-top:none;">
            	<ul>
					<li>
						<label for="">项目 </label> <input type="text" value="建筑建材搅拌站一号线" name="xm_name">
					</li>
					<li>
						<label for="">地点 </label> <input type="text" value="北京市东城区古城西街19号" name="xm_address">
					</li>
				</ul>
				<div class="addkh_confirm">
					<button class="" data-dismiss="modal">确认</button>
				</div>
            </div>
				
            </div>
           <!--  <div class="modal-footer">
                <button type="button" class="btn" data-dismiss="modal" onclick="cancel()" style="background-color: #008CEE;color: #ffffff;">保存</button>
                <button type="button" class="btn" onclick="cancel()" style="background-color: #008CEE;color: #ffffff;">取消</button>
            </div> -->
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
    <div></div>

</div>

<!-- 模态框（Modal） -->
<div  class="modal fade"  id="myModalkh" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
    <div class="modal-dialog">
        <div class="modal-content " style="padding:0 0 50px 0;">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
           <div class="kh_touxiang">
           <img src="image/tx.jpg" alt="">
           <input type="text" value="李站长" name="kh_contactName">
           </div>
           <div class="kh_txbgc">
           	
           </div>
            <div class="modal-body" >
            <div class="kh_content" style="border-top:none;">
            	<ul>
					<li>
						<label for="">客户 </label> <input type="text" value="北京建筑建材研究院" name="kh_name">
					</li>
					<li>
						<label for="">部门 </label> <input type="text" value="北京建筑建材研究院" name="kh_name">
					</li>
					<li>
						<label for="">电话 </label><input type="text" value="北京建筑建材研究院" name="kh_tel">
					</li>
					<li>
						<label for="">微信号 </label><input type="text" value="北京建筑建材研究院" name="kh_wechat">
					</li>
					<li>
						<label for="">钉钉号 </label><input type="text" value="北京建筑建材研究院" name="kh_ding">
					</li>
				</ul>
				<div class="addkh_confirm">
					<button class="" data-dismiss="modal">确认</button>
				</div>
            </div>
				
            </div>
           <!--  <div class="modal-footer">
                <button type="button" class="btn" data-dismiss="modal" onclick="cancel()" style="background-color: #008CEE;color: #ffffff;">保存</button>
                <button type="button" class="btn" onclick="cancel()" style="background-color: #008CEE;color: #ffffff;">取消</button>
            </div> -->
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<div id="dvMsgBox" style="width: 400px; display: block; top: 440px; left: 751px;display:none;">
    <div class="top">
        <div class="right">
            <div class="title" id="dvMsgTitle">提示</div>
        </div>
    </div>
    <div class="body">
        <div class="right">
            <div class="ct" id="dvMsgCT">
             <img src="image/警示.png" alt="" style="width:30px;height:30px;margin-right:10px;">
            您确认要进行回访操作吗？
                <div class="clear">
					<img src="image/bottom_smile.png" alt="">	
                </div>
            </div>
        </div>
    </div>
    <div class="bottom" id="dvMsgBottom" style="height: 45px;">
        <div class="right">
            <div class="" id="dvMsgBtns">
                <div class="height"></div>
                <input type="button" class="btn2 btn_confirm_cancel" value="确认" id="btn_confirm_hf">　
                <input type="button" class="btn2 btn_confirm_cancel" value="取消" id="btn_confirm_cancel_hf">
            </div>
        </div>
    </div>
</div>
<div id="ShowBolightBox" style="display: block; width: 1932px; height: 100%;display:none;"></div>

<script>


	$(function(){

    $(".Have_ht").click(function(){
       $(".fieldset").show();
       $(".bz_content").hide();
    }) 
    $(".No_ht").click(function(){
       $(".fieldset").hide();
       $(".bz_content").show();
       
    });
        $(".New_ht").click(function(){
       $(".fieldset").hide();
       $(".fieldset1").show();
       $(".bz_content").hide();
       
    });



$("#addxm").click(function(){  
	$('#myModalxm').modal({
		keyboard: false,
	})
	$('#myModalxm').modal('show');
 });
      $("#addkh").click(function(){  

         $('#myModalkh').modal('show');
   });

		$("#btn1").bind('click',function(){
			var w= $('#z_cen').width();
			if(w==0){
				$('#zhe').show()
				$('#z_cen').animate({width:'490'},500);
			}else{
				$('#zhe').hide()
				$('#z_cen').animate({width:'0'},500);
			}
		});
		$("#zhe").bind('click',function(){
			$('#zhe').hide()
			$('#z_cen').animate({width:'0'},500);
		});
	});
	// $(function(){
	// 	var roleNum = GetUrlSearch('rId');
	// 	if(roleNum != "22") {
	// 		$("#ReceiptList").parent().parent().parent().parent().hide();
	// 	}
	// });
	$('#c_date').bind('click',function(){
		$(".c_li").addClass('easyui-datetimebox')
	})
	$("#ticket-itemRecord").append('<li class="ticket-item"><div class="row"><div class="ticket-type  col-lg-2 col-sm-6 col-xs-12"><span class="divider hidden-xs"></span><span class="type">Info</span></div></div></li>');
	$("#ticket-itemRecord").append('<li class="ticket-item"><div class="row"><div class="ticket-type  col-lg-2 col-sm-6 col-xs-12"><span class="divider hidden-xs"></span><span class="type">Info</span></div></div></li>');
//	$(".arcivePart").css("display","none");




	$("#menu1").click(function(){
		loadlist('listSTaskSchedule.do?statusSch='+encodeURI(encodeURI("待发布")),'task_list','pagination1');
	})
	$("#menu2").click(function(){
		loadlist('listSTaskSchedule.do?statusSch='+encodeURI(encodeURI("已发布")),'task_list','pagination1');
	})
	$("#menu3").click(function(){
		loadlist('listSTaskSchedule.do?statusSch='+encodeURI(encodeURI("执行中")),'task_list','pagination1');
	})
	$("#menu4").click(function(){
		loadlist('listSTaskSchedule.do?statusSch='+encodeURI(encodeURI("已完成")),'task_list','pagination1');
	})
	$("#menu5").click(function(){
		loadlist('listSTaskSchedule.do?statusSch='+encodeURI(encodeURI("已审核")),'task_list','pagination1');
	})
	$("#menu6").click(function(){
		loadlist('listSTaskSchedule.do?statusSch='+encodeURI(encodeURI("已归档")),'task_list','pagination1');
	})


	//--jQuery MiniColors--
	$('.colorpicker').each(function () {
		$(this).minicolors({
			control: $(this).attr('data-control') || 'hue',
			defaultValue: $(this).attr('data-defaultValue') || '',
			inline: $(this).attr('data-inline') === 'true',
			letterCase: $(this).attr('data-letterCase') || 'lowercase',
			opacity: $(this).attr('data-opacity'),
			position: $(this).attr('data-position') || 'bottom left',
			change: function (hex, opacity) {
				if (!hex) return;
				if (opacity) hex += ', ' + opacity;
				try {
					console.log(hex);
				} catch (e) { }
			},
			theme: 'bootstrap'
		});

	});



	// loadlist('listSTaskSchedule.do','task_list','pagination1');

	//客户名称包含分页
	// $.getJSON(ctx+'listSTaskSchedule.do',{},function(parentsJson) {
	// 	$("#taskNum").val("G2016"+(parentsJson.rows[0].id));
	// });



	//确认提交操作
	// $("#operateMode_submit").click(function() {
	// 	if ($('#form').form('validate')) {
	// 		//添加
	// 		$.post(ctx+"addSTaskSchedule.do",fw.serializeObject($('form')), function(result,stauts) {
	// 			if (result.success) {
	// 				loadlist('listSTaskSchedule.do','task_list','pagination1');
	// 				//客户名称包含分页
	// 				$.getJSON(ctx+'listSTaskSchedule.do',{},function(parentsJson) {
	// 					$("#taskNum").val("G2016"+(parentsJson.rows[0].id));
	// 				});
	// 				alert(result.message);

	// 			}
	// 			else
	// 			{
	// 				alert(stauts);
	// 			}
	// 		}, 'json');
	// 	}
	// });


	//确认发布任务操作
	// $("#operateMode_release").click(function() {
	// 	if ($('#form').form('validate')) {
	// 		//添加
	// 		console.log(fw.serializeObject($('form')));
	// 		$.post(ctx+"releaseSTaskSchedule.do",  fw.serializeObject($('form')), function(result,stauts) {
	// 			if (result.success) {
	// 				loadlist('listSTaskSchedule.do','task_list','pagination1');
	// 				$.getJSON(ctx+'listSTaskSchedule.do',{},function(parentsJson) {
	// 					$("#taskNum").val("G2016"+(parentsJson.rows[0].id));
	// 				});
	// 				alert(result.message);
	// 			}
	// 			else
	// 			{
	// 				alert(result.message);
	// 			}
	// 		}, 'json');
	// 	}
	// })



	//发布
	// $("#operateMode_archive").click(function() {
	// 	if ($('#form').form('validate')) {
	// 		//添加
	// 		$.post(ctx+"releaseSTaskSchedule.do",  setRowAfterEdit(fw.serializeObject($('form'))), function(result) {
	// 			if (result.success) {
	// 				$("#task_list li").remove();
	// 				//客户名称包含分页
	// 				$.getJSON(ctx+'listSTaskSchedule.do',{},function(parentsJson) {
	// 					$("#taskNum").val("G2016"+(parentsJson.rows[0].id));
	// 					loadlist('listSTaskSchedule.do','task_list','pagination1');
	// 					$(".arcivePart").css("display","block");
	// 				});
	// 				alert(result.message);
	// 			}
	// 		}, 'json');
	// 	}
	// })



	//回访
	// $("#operateMode_revisit").click(function() {
	// 	if ($('#form').form('validate')) {
	// 		$("#status").val("已回访");

	// 		//添加
	// 		$.post(ctx+"updateSTaskSchedule.do", fw.serializeObject($('form')), function(result) {
	// 			if (result.success) {
	// 				//客户名称包含分页
	// 				$.getJSON(ctx+'listSTaskSchedule.do',{},function(parentsJson) {
	// 					loadlist('listSTaskSchedule.do?statusSch='+encodeURI(encodeURI("已回访")),'task_list','pagination1');
	// 				});
	// 				alert("回访成功");
	// 			}
	// 		}, 'json');
	// 	}
	// })

	// 重置功能
	$("#operateMode_reset").click(function() {
		$("#form").form("reset");
	});

	// 新增功能
	// $("#operateMode_new").click(function() {
	// 	$("#form").form("reset");
	// 	$.getJSON(ctx+'listSTaskSchedule.do',{},function(parentsJson) {
	// 		$("#taskNum").val("G2016"+(parentsJson.rows[0].id+1));
	// 	});
	// 	$.getJSON(ctx+'listAllSUser.do',{idSch:userId },function(parentsJson) {
	// 		var now = new Date();
	// 		var str = now.getFullYear()+"-"+(now.getMonth()+1)+"-"+now.getDate()+" "
	// 				+now.getHours()+":"
	// 				+now.getMinutes()+":"
	// 				+now.getSeconds();
	// 		$("#sendTime").textbox("setValue",str==null?"":str);
	// 		$("#createdPerson").val(parentsJson.rows[0].trueName);
	// 	});

	// });


	// function addTables(JsonDate , id, fieldArrays)
	// {
	// 	var str = '';
	// 	str+='<thead><tr>';
	// 	str+='<th><div class="checker"><span class=""><input type="checkbox" class="group-checkable" data-set="#flip .checkboxes"></span></div></th>';
	// 	var keys = [];
	// 	for (var key in fieldArrays)
	// 	{
	// 		keys.push(key);
	// 		str+='<th>'+fieldArrays[key]+'</th>';
	// 	}

	// 	str+='</tr></thead>';
	// 	str+='<tbody>';

	// 	for(var i = 0 ; i<JsonDate.rows.length;i++)
	// 	{
	// 		str+='<tr>';
	// 		str+='<td><div class="checker"><span class=""><input type="checkbox" class="checkboxes" value="1"></span></div></td>';
	// 		var data = JsonDate.rows[i];
	// 		console.log(JsonDate.rows);
	// 		for(var key in data){
	// 			if(keys.indexOf(key) != -1 )
	// 			{
	// 				str+='<td class="center "> '+ data[key] +'</td>';
	// 			}

	// 		}
	// 		str+='</tr>';
	// 	}

	// 	str+='</tbody>';
	// 	document.getElementById(id).innerHTML =  str;
	// }



	// listActionByUser(1,5,true,'listSUser.do',"#actionList","#page123",["姓名"]);
	// //报销
	// ReimburseCheck(1, 5, true,"listSReceipt.do","#ReceiptList","#ReceiptPage",["费用名称","金额","姓名"]) ;

	// workRecord(1,5,false,'listSMessage.do',"#workRecord","#workRecordPage",["信息"]);


	//  listActionByUser(1,5,false,'listSUser.do',"#reimbursement","#reimbursePage",["姓名"]);


</script>

</body>
</html>
