<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">

    <title>修改报销管理</title>
</head>
<body>
<jsp:include page="../public/menulist.jsp"></jsp:include>
<jsp:include page="../public/lib.jsp"></jsp:include>
<!------------------------------修改报销管理---------------------------------->

<div style="height:50px;width:350px;font-size:26px;font-family:'华文行楷','Arial','Microsoft YaHei','黑体','宋体','sans-serif';margin:0 auto; border:1px solid #008cee;background-color:#008cee;color:#fff;z-index:999;display:inline-block;line-height:50px;text-align:center;border-radius:20px;position:absolute;right: 42%;top: 480px;display:none;" class="noticeCon">
    操作成功
</div>

<div class="contaner"  id="page9"style="width:86%;float:right;padding:0 35px;border:1px solid #ddd">
    <a id="btn1" href="swindex.html"style="left: -30px;padding: 17px 10px;float: left;position: relative;" > 首页 / </a>
    <a class="btn1" href="javascript:void(0)"style="left: -30px;padding: 17px 5px;float: left;position: relative;" > 功能列表</a>
    <div class="section">
        <h3 class="baoxiao" style="text-align:center;padding:0 100px;margin:15px 0">报销详情</h3>
        <hr/>
        <form class="form-horizontal" role="form">
            <div class="row">
                <div class="col-sm-4 col-sm-offset-2">
                    <div class="form-group">
                        <label class="col-sm-3 control-label">费用名称</label>
                       <div class="col-sm-4">
                            <select class="form-control">
                                <option>住宿费</option>
                                <option>交通费</option>
                                <option>采购费</option>
                                <option>燃油费</option>
                                <option>1其他</option>
                            </select>
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">票据号码</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control"  placeholder="" value="12345678">
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                    
                </div>
                <div class="col-sm-4 col-sm-offset-2" style="text-align:left;">
                   
                    <div class="form-group">
                        <label class="col-sm-3 control-label">费用类型</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control"  placeholder="" value="住宿费">
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                    <div class="form-group">
                        <label  class="col-sm-3 control-label">金额</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control"  placeholder="" value="800">
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group">
                        <div>
                            <a href="bx.jsp"><button type="button" class="btn" style="background-color: #008cee;color: #fff">确定</button></a>
                            <button type="reset" class="btn" style="background-color: #008cee;color: #fff">重置</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>


    
</div>

</body>
</html>