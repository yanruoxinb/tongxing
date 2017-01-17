<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>开票新增</title>
    <style>
        .padright {
            padding-right: 47px;
        }

        .padding {
            margin: 0 30px;
        }
    </style>
</head>
<body>
<!------------------------------开票新增---------------------------------->
<jsp:include page="../public/menulist.jsp"></jsp:include>
<jsp:include page="../public/lib.jsp"></jsp:include>
<div style="height:50px;width:350px;font-size:26px;font-family:'华文行楷','Arial','Microsoft YaHei','黑体','宋体','sans-serif';margin:0 auto; border:1px solid #008cee;background-color:#008cee;color:#fff;z-index:999;display:inline-block;line-height:50px;text-align:center;border-radius:20px;position:absolute;right: 42%;top: 480px;display:none;"
     class="noticeCon">
    操作成功
</div>
<div class="contaner" id="page7" style="width:86%;float:right;padding:0 35px;border:1px solid #ddd">
    <a id="btn1" href="swindex.html" style="left: -30px;padding: 17px 10px;float: left;position: relative;"> 首页 / </a>
    <a class="btn1" href="javascript:void(0)" style="left: -30px;padding: 17px 5px;float: left;position: relative;">
        功能列表</a>
    <div class="section">
        <h3 class="baoxiao" style="padding:0 100px">开票新增</h3>
        <hr/>
        <form class="form-horizontal" role="form">
            <div class="row">
                <div class="col-sm-4 col-sm-offset-2">
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-3 control-label">开票性质</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control width" id="inputEmail3" placeholder="请输入开票性质">
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">开票金额</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control width" id="inputEmail3" placeholder="请输入开票金额">
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">财务负责</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control width" id="inputEmail3" placeholder="请输入财务负责人">
                        </div>
                        <i class="items pull-left">*</i>
                    </div>

                </div>
                <div class="col-sm-4 col-sm-offset-2">
                    <div class="form-group">
                        <label class="col-sm-3 control-label">票据编号</label>
                        <div class="col-sm-4">
                            <input type="number" class="form-control width" id="inputEmail3" placeholder="请输入票据编号">
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-3 control-label">票据类型</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="11" placeholder="请输入票据类型">
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">经办人</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control width" id="inputEmail3" placeholder="请输入经办人">
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group">
                        <!--  <div style="text-align:center;display:inline-block;width:50%;float:left;"> -->
                        <a href="../../contract/ht.jsp">
                            <button type="button" class="btn padding" style="background-color: #008cee;color: #fff">确定
                            </button>
                        </a>
                        <!--  </div> -->
                        <!--  <div style="text-align:center;display:inline-block;width:50%;float:right;"> -->
                        <button type="reset" class="btn" style="background-color: #008cee;color: #fff">重置</button>
                        <!--  </div> -->
                    </div>
                </div>
            </div>
        </form>
    </div>

    <!-- <a id="btn1" href="javascript:void(0)"style="left: -30px;padding: 17px 0px;float: left;position: relative;" >功能列表</a> -->
</div>


</div>
<div id="zhe" style="display:none;"></div>

<script src="js/app.js"></script>
</body>
</html>