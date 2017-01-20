<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/css/tq.css">
    <link rel="stylesheet" href="/css/index.css"/>
    <link rel="stylesheet" href="/css/change_style.css"/>
    <link rel="stylesheet" href="/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="/assets/bootstrap/css/font-awesome.min.css" />
    <jsp:include page="../public/lib.jsp"></jsp:include>
    <title>用户详情</title>
</head>
<body>
<!------------------------------用户详情---------------------------------->
<div class="main-container container-fluid" class="top"style="padding-left: 0;">
<img src="./image/2.png" alt="">
</div>
<div class="main-container container-fluid" class="left"style="display:inline-block;    padding-left: 0;">
<img src="./image/1.png" alt=""style="width:230px;    height: 100%;">
</div>

<div style="height200px;width:350px;font-size:26px;font-family:'华文行楷','Arial','Microsoft YaHei','黑体','宋体','sans-serif';margin:0 auto; border:1px solid #008cee;background-color:#008cee;color:#fff;z-index:999;display:inline-block;line-height:50px;text-align:center;border-radius:20px;position:absolute;right: 42%;top: 480px;display:none;" class="noticeCon">
    操作成功
</div>

<div class="contaner"  id="page9"style="width:86%;float:right;padding:0 35px;border:1px solid #ddd">
    <a id="btn1" href="swindex.html"style="left: -30px;padding: 17px 10px;float: left;position: relative;" > 首页 / </a>
    <a class="btn1" href="javascript:void(0)"style="left: -30px;padding: 17px 5px;float: left;position: relative;" > 功能列表</a>
    <div class="section">
        <h3 class="baoxiao" style="padding:0 100px;">用户详情</h3>
        <hr/>
        <form id="form-horizontal" class="form-horizontal" role="form">
            <div class="row">
                <div class="col-sm-4 col-sm-offset-2">
                    <div class="form-group">
                        <label class="col-sm-2 control-label" >用户名</label>
                        <div class="col-sm-4">
                            <input type="hidden" id="id" name="id" value="${user.id}">
                            <input type="text" id="username" name="username" class="form-control"  placeholder="6~16位数字、字母组成" value="${user.username}">
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">姓名</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" name="trueName" placeholder="请输入真实姓名" value="${user.trueName}">
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">部门</label>
                        <div class="col-sm-4">
                            <select name="deptId" class="form-control">
                                <option value="0">研发部</option>
                                <option value="1">客服部</option>
                                <option value="2">项目部</option>
                                <option value="3">财务部</option>
                                <option value="4">BOSS</option>
                            </select>
                        </div>
                        <i class="items pull-left">*</i>
                    </div>

                    <div class="form-group">
                        <label  class="col-sm-2 control-label">地址</label>
                        <div class="col-sm-4">
                            <input type="text" name="address" class="form-control"  placeholder="请输入地址" value="${user.address}">
                        </div>
                        <i class="items pull-left">*</i>
                    </div>

                    <div class="form-group">
                        <label  class="col-sm-2 control-label">微信</label>
                        <div class="col-sm-4">
                            <input type="text" name="weixin" class="form-control"  placeholder="请输入微信号" value="${user.weixin}">
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-sm-offset-2">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">密码</label>
                        <div class="col-sm-4">
                            <input type="password" name="password" class="form-control"  placeholder="请输入密码" value="${user.password}">
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">公司</label>
                        <div class="col-sm-4">
                            <input type="text" name="company" class="form-control"  placeholder="请输入公司名" value="${user.company}">
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">职务</label>
                        <div class="col-sm-4">
                            <input type="text" name="roleId" class="form-control"  placeholder="请输入职务" value="${user.roleId}">
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">电话</label>
                        <div class="col-sm-4">
                            <input type="tel" name="tel" class="form-control"  placeholder="请输入电话" value="${user.tel}">
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">QQ</label>
                        <div class="col-sm-4">
                            <input type="text" name="qq" class="form-control"  placeholder="请输入QQ" value="${user.qq}">
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group">
                        <div>
                            <a><button  type="button" id="btn" class="btn" style="background-color: #008cee;color: #fff">确定</button></a>
                            <button type="reset" class="btn" style="background-color: #008cee;color: #fff">重置</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>


<script>
    $("#btn").click(function(){
        var json = formToJson("#form-horizontal");
        var url = "/user/insert";
        if(json.id != null && json.id != "") {
            url = "/user/update";
        }
        callSapiServer(url,function(data){
            if(data.code == 200) {
                window.location.href = ctx + "/user/toUserManager";
            } else {
                alert(data.message);
            }
        },"POST",json);
    });
</script>
</body>
</html>