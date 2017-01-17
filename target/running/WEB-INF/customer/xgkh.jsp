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

<div style="height:200px;width:350px;font-size:26px;font-family:'华文行楷','Arial','Microsoft YaHei','黑体','宋体','sans-serif';margin:0 auto; border:1px solid #008cee;background-color:#008cee;color:#fff;z-index:999;display:inline-block;line-height:50px;text-align:center;border-radius:20px;position:absolute;right: 42%;top: 480px;display:none;"
     class="noticeCon">
    操作成功
</div>
<div class="contaner" id="page7" style="width:86%;float:right;padding:0 35px;border:1px solid #ddd">
    <a id="btn1" href="swindex.html" style="left: -30px;padding: 17px 10px;float: left;position: relative;"> 首页 / </a>
    <a class="btn1" href="javascript:void(0)" style="left: -30px;padding: 17px 5px;float: left;position: relative;">
        功能列表</a>
    <div class="section">
        <h3 class="baoxiao">客户信息修改</h3>
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
        </form>
    </div>

    <div class="row col-sm-8   col-xs-offset-2" style="text-align: center">
        <div class="table-responsive" style="margin:15px 0;">
            <table class="table table-bordered" id="editConcactTable">
                <caption class="baoxiao" style="font-size: 24px;padding: 10px;">联系人信息修改</caption>
                <button type="button" class="btn btnpz btnstyle" id="addConcact" style="padding:5px 18px;float:right;color:#fff;background-color:#008cee;position:relative;top:50px;    right: -127px;">新增</button>
                <thead>
                <tr>
                    <td>客户姓名</td>
                    <td>电话</td>
                    <td>部门</td>
                    <td>职位</td>
                    <td>微信号</td>
                    <td>QQ</td>
                </tr>
                </thead>
                <tbody id="lxr_list1">
                <tr>
                    <td><input type="text" value="张三"></td>
                    <td><input type="text" value="18829206371"></td>
                    <td><input type="text" value="管理部"></td>
                    <td><input type="text" value="主管"></td>
                    <td><input type="text" value="you_are_beautiful"></td>
                    <td><input type="tel" value="163527389"></td>
                </tr>
                <tr>
                    <td><input type="text" value="李四"></td>
                    <td><input type="text" value="18829206371"></td>
                    <td><input type="text" value="管理部"></td>
                    <td><input type="text" value="主管"></td>
                    <td><input type="text" value="you_are_beautifu"></td>
                    <td><input type="tel" value="163527389"></td>
                </tr>
                <tr>
                    <td><input type="text" value="王五"></td>
                    <td><input type="text" value="18829206371"></td>
                    <td><input type="text" value="管理部"></td>
                    <td><input type="text" value=" 主管"></td>
                    <td><input type="text" value="you_are_beautiful"></td>
                    <td><input type="tel" value="163527389"></td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <div class="form-group">
                <!--  <div style="text-align:center;display:inline-block;width:50%;float:left;"> -->
                    <button type="button" class="btn padding" style="background-color: #008cee;color: #fff">保存
                    </button>
                <!--  </div> -->
                <!--  <div style="text-align:center;display:inline-block;width:50%;float:right;"> -->
                <a href="kh.html">
                <button type="submit" class="btn" style="background-color: #008cee;color: #fff">提交</button>
                </a>
                <!--  </div> -->
            </div>
        </div>
    </div>

    <!-- <a id="btn1" href="javascript:void(0)"style="left: -30px;padding: 17px 0px;float: left;position: relative;" >功能列表</a> -->
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
                                    <a id="c" href="../contract/ht.jsp">
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
                                    <a id="e" href="../views/manage/yh.jsp">
                                        <img src="image/用户管理.png" class="col-lg-offset-2">
                                        <span class="list">用户管理</span>
                                    </a>
                                </li>
                                <li class="row info col-lg-12">
                                    <a href="../views/limitAndMenu/qx.jsp">
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
<script src="js/app.js"></script>
</body>
</html>