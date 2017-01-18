<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>用户详情</title>
</head>
<body>
<!------------------------------用户详情---------------------------------->
<jsp:include page="../public/menulist.jsp"></jsp:include>
<jsp:include page="../public/lib.jsp"></jsp:include>
<div style="height:50px;width:350px;font-size:26px;font-family:'华文行楷','Arial','Microsoft YaHei','黑体','宋体','sans-serif';margin:0 auto; border:1px solid #008cee;background-color:#008cee;color:#fff;z-index:999;display:inline-block;line-height:50px;text-align:center;border-radius:20px;position:absolute;right: 42%;top: 480px;display:none;" class="noticeCon">
    操作成功
</div>

<div class="contaner"  id="page9"style="width:86%;float:right;padding:0 35px;border:1px solid #ddd">
    <a id="btn1" href="swindex.html"style="left: -30px;padding: 17px 10px;float: left;position: relative;" >首页/</a>
    <a class="btn1" href="javascript:void(0)"style="left: -30px;padding: 17px 5px;float: left;position: relative;" > 功能列表</a>
    <div class="section">
        <h3 class="baoxiao" style="padding:0 100px;margin: 15px 0">用户详情</h3>
        <hr/>
        <form class="form-horizontal" role="form">
            <div class="row">
                <div class="col-sm-4 col-sm-offset-2">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">用户名</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control"  placeholder="6~16位数字、字母组成">
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">姓名</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control"  placeholder="请输入真实姓名">
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">部门</label>
                        <div class="col-sm-4">
                            <select class="form-control">
                                <option>研发部</option>
                                <option>客服部</option>
                                <option>项目部</option>
                                <option>财务部</option>
                                <option>BOSS</option>
                            </select>
                        </div>
                        <i class="items pull-left">*</i>
                    </div>

                    <div class="form-group">
                        <label  class="col-sm-2 control-label">地址</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control"  placeholder="请输入地址">
                        </div>
                        <i class="items pull-left">*</i>
                    </div>

                    <div class="form-group">
                        <label  class="col-sm-2 control-label">微信</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control"  placeholder="请输入微信号">
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-sm-offset-2">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">密码</label>
                        <div class="col-sm-4">
                            <input type="password" class="form-control"  placeholder="请输入密码">
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">公司</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control"  placeholder="请输入公司名">
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">职务</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control"  placeholder="请输入职务">
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">电话</label>
                        <div class="col-sm-4">
                            <input type="tel" class="form-control"  placeholder="请输入电话">
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">QQ</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control"  placeholder="请输入QQ">
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group">
                        <div>
                            <a href="yh.jsp"><button type="button" class="btn" style="background-color: #008cee;color: #fff">确定</button></a>
                            <button type="reset" class="btn" style="background-color: #008cee;color: #fff">重置</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>

   <!-- <a id="btn1" href="javascript:void(0)"style="left: -30px;padding: 17px 0px;float: left;position: relative;" >功能列表</a> -->
    
</div>
</body>
</html>