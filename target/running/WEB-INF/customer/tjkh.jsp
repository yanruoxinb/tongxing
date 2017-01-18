<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/tq.css">
    <link rel="stylesheet" href="css/index.css"/>
    <link rel="stylesheet" href="css/change_style.css"/>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="assets/bootstrap/css/font-awesome.min.css"/>
    <script src="js/jquery-1.11.3.min.js"></script>

    <title>客户详情</title>
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
<!------------------------------客户详情---------------------------------->
<div class="main-container container-fluid" class="top" style="padding-left: 0;">
    <img src="./image/2.png" alt="">
</div>
<div class="main-container container-fluid" class="left" style="display:inline-block;    padding-left: 0;">
    <img src="./image/1.png" alt="" style="width:230px;    height: 100%;">
</div>

<div style="height:50px;width:350px;font-size:26px;font-family:'华文行楷','Arial','Microsoft YaHei','黑体','宋体','sans-serif';margin:0 auto; border:1px solid #008cee;background-color:#008cee;color:#fff;z-index:999;display:inline-block;line-height:50px;text-align:center;border-radius:20px;position:absolute;right: 42%;top: 480px;display:none;"
     class="noticeCon">
    操作成功
</div>

<div class="contaner" id="page7" style="width:86%;float:right;padding:0 35px;border:1px solid #ddd">
    <a id="btn1" href="swindex.html" style="left: -30px;padding: 17px 10px;float: left;position: relative;"> 首页 / </a>
    <a class="btn1" href="javascript:void(0)" style="left: -30px;padding: 17px 5px;float: left;position: relative;">
        功能列表</a>
    <div class="section">
        <h3 class="baoxiao">客户详情</h3>
        <hr/>
        <form class="form-horizontal" role="form">
            <div class="row">
                <div class="col-sm-4 col-sm-offset-2">
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-3 control-label">客户名称</label>
                        <div class="col-sm-4">
                            <input type="email" class="form-control width" id="inputEmail3" placeholder="请输入客户名">
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">客户性质</label>
                        <div class="col-sm-4">
                            <select class="form-control">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                            </select>
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label padright">状态</label>
                        <div class="col-sm-4">
                            <select class="form-control">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                            </select>
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-3 control-label padright">来源</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="inputEmail31" placeholder="请输入来源">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label padright">省市</label>
                        <div class="col-sm-4">
                            <select class="form-control">
                                <option>陕西省</option>
                                <option>山西省</option>
                                <option>湖南省</option>
                                <option>甘肃省</option>
                                <option>湖北省</option>
                            </select>
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label padright">县区</label>
                        <div class="col-sm-4">
                            <select class="form-control">
                                <option>蓝田县</option>
                                <option>扶风县</option>
                                <option>泾阳县</option>
                                <option>乾县</option>
                                <option>户县</option>
                            </select>
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-3 control-label">固定电话</label>
                        <div class="col-sm-4">
                            <input type="tel" class="form-control" id="inputEmail" placeholder="请输入固定电话">
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                </div>
                <div class="col-sm-4 col-sm-offset-2">
                    <div class="form-group">
                        <label class="col-sm-3 control-label">客户等级</label>
                        <div class="col-sm-4">
                            <select class="form-control">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                            </select>
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-3 control-label">主要业务</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="11" placeholder="请输入主要业务">
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-3 control-label">上属公司</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="22" placeholder="请输入上属公司">
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">企业性质</label>
                        <div class="col-sm-4">
                            <select class="form-control">
                                <option>私企</option>
                                <option>国企</option>
                                <option>其他</option>
                            </select>
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-3 control-label">详细地址</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="33" placeholder="请输入详细地址">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-3 control-label padright">备注</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="44" placeholder="">
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group">
                        <!--  <div style="text-align:center;display:inline-block;width:50%;float:left;"> -->
                        <a href="kh.html">
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
</body>
</html>