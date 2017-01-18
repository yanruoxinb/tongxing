<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>修改收款管理</title>
</head>
<body>
<!------------------------------修改收款管理---------------------------------->
<jsp:include page="../public/menulist.jsp"></jsp:include>
<jsp:include page="../public/lib.jsp"></jsp:include>
<div style="height:50px;width:350px;font-size:26px;font-family:'华文行楷','Arial','Microsoft YaHei','黑体','宋体','sans-serif';margin:0 auto; border:1px solid #008cee;background-color:#008cee;color:#fff;z-index:999;display:inline-block;line-height:50px;text-align:center;border-radius:20px;position:absolute;right: 42%;top: 480px;display:none;"
     class="noticeCon">
    操作成功
</div>
<div class="contaner" id="page9" style="width:86%;float:right;padding:0 35px;border:1px solid #ddd">
    <a id="btn1" href="swindex.html" style="left: -30px;padding: 17px 10px;float: left;position: relative;"> 首页 / </a>
    <a class="btn1" href="javascript:void(0)" style="left: -30px;padding: 17px 5px;float: left;position: relative;">
        功能列表</a>
    <div class="section">
        <h3 class="baoxiao" style="text-align:center;padding:0 100px;margin:15px 0">收款详情</h3>
        <hr/>
        <form class="form-horizontal" role="form">
            <div class="row">
                <div class="col-sm-4 col-sm-offset-2">
                    <div class="form-group">
                        <label class="col-sm-3 control-label">费用名称</label>
                        <div class="col-sm-4">
                            <select class="form-control">
                                <option>服务费</option>
                                <option>调试费</option>
                                <option>安装费</option>
                                <option>/</option>
                                <option>/</option>
                            </select>
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">票据号码</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" placeholder="" value="12345678">
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">任务编号</label>
                        <div class="col-sm-4">
                            <select class="form-control">
                                <option>G201640971</option>
                                <option>G201640972</option>
                                <option>G201640973</option>
                                <option>G201640974</option>
                                <option>G201640975</option>
                            </select>
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                </div>
                <div class="col-sm-4 col-sm-offset-2" style="text-align:left;">

                    <div class="form-group">
                        <label class="col-sm-3 control-label">所收金额</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" placeholder="" value="5000">
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">收款人员</label>
                        <div class="col-sm-4">
                            <select class="form-control">
                                <option>王工</option>
                                <option>李工</option>
                                <option>张工</option>
                                <option>段工</option>
                                <option>赵工</option>
                            </select>
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">收款日期</label>
                        <div class="col-sm-4">
                            <input type="tel" class="form-control" placeholder="" value="2016-10-01">
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group">
                        <div>
                            <a href="sk.html">
                                <button type="button" class="btn" style="background-color: #008cee;color: #fff;">确定
                                </button>
                            </a>
                            <button type="reset" class="btn" style="background-color: #008cee;color: #fff;">重置</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>

</body>
</html>