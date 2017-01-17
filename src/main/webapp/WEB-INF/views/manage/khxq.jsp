<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/tq.css">
    <link rel="stylesheet" href="css/index.css"/>
        <link rel="stylesheet" href="css/tqcss.css"/>
    <link rel="stylesheet" href="css/change_style.css"/>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="assets/bootstrap/css/font-awesome.min.css"/>
    <script src="js/jquery-1.11.3.min.js"></script>
    <script src="js/bootstrap1.js"></script>
        <script src="js/app.js"></script>
    <title>客户详情</title>
    <style>
        .padright {
            padding-right: 47px;
        }

        .padding {
            margin: 0 30px;
        }

        .khbz {
            padding-top: 7px;
            margin-bottom: 0;
            text-align: left;
        }

        .wtt {
            margin: 90px 72px !important;
        }
        .setLabelStyle label{
            color:#666;
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

<div class="container" id="page7" style="width:86%;float:right;padding:0 35px;">
    <a id="btn1" href="swindex.html" style="left: -30px;padding: 17px 10px;float: left;position: relative;"> 首页 / </a>
    <a class="btn1" href="javascript:void(0)" style="left: -30px;padding: 17px 5px;float: left;position: relative;">
        功能列表</a>
    <div class="section" style="margin:15px 120px;">
        <fieldset style="border:1px dashed #ddd!important;">
            <legend>
                <h3 class="baoxiao" style="text-align: center;position: relative;right: 8px;">客户详情</h3>
            </legend>
                <form class="form-horizontal" role="form">
                    <div class="row setLabelStyle">
                        <div class="col-sm-4 col-sm-offset-2">
                            <div class="form-group">
                                <label class="col-sm-4 control-label">客户名称:</label>
                                <div class="col-sm-8 khbz">
                                    <span>湖北老河口市慧江混凝土有限公司</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">客户性质:</label>
                                <div class="col-sm-8 khbz">
                                    <span>代理商</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label padright">状态:</label>
                                <div class="col-sm-8 khbz">
                                    <span>合作中</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label padright">来源:</label>
                                <div class="col-sm-8 khbz">
                                    <span>走访</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label padright">省市:</label>
                                <div class="col-sm-8 khbz">
                                    <span>湖北省</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label padright">县区:</label>
                                <div class="col-sm-8 khbz">
                                    <span>武汉市</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 col-sm-offset-1">
                            <div class="form-group">
                                <label class="col-sm-4 control-label">客户等级:</label>
                                <div class="col-sm-8 khbz">
                                    <span>一级</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">主要业务</label>
                                <div class="col-sm-8 khbz">
                                    <span>混凝土</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">上属公司:</label>
                                <div class="col-sm-8 khbz">
                                    <span>大唐有限公司</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">企业性质:</label>
                                <div class="col-sm-8 khbz">
                                    <span>私企</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">详细地址:</label>
                                <div class="col-sm-8 khbz">
                                    <span>陕西省西安市雁塔区市建四公司</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label padright">备注:</label>
                                <div class="col-sm-8 khbz">
                                    <span>请尽快为我们服务</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
        </fieldset>
    </div>
 

    <div class="section" id="lxr_xz_restore">
     <div style="text-align:center;">
          <h3 class="baoxiao" style="display:inline-block;margin:20px 0 10px 0;">联系人信息</h3>
     </div>
    
        <div class="row col-sm-8   col-xs-offset-2" style="text-align: center">
            <div class="table-responsive" style="margin:15px 0; ">
                <table class="table table-bordered" id="lxr">
                 
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
                        <td>张三</td>
                        <td>18829206371</td>
                        <td>管理部</td>
                        <td>主管</td>
                        <td>you_are_beautiful</td>
                        <td>163527389</td>
                    </tr>
                    <tr>
                        <td>李四</td>
                        <td>18829206371</td>
                        <td>管理部</td>
                        <td>主管</td>
                        <td>you_are_beautiful</td>
                        <td>163527389</td>
                    </tr>
                    <tr>
                        <td>王五</td>
                        <td>18829206371</td>
                        <td>管理部</td>
                        <td>主管</td>
                        <td>you_are_beautiful</td>
                        <td>163527389</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>


    <div class="modal fade" id="edit">
        <div class="modal-dialog">
            <div class="modal-content wtt" style="padding:18px 0 64px 0;text-align: center; width: 500px;">
                <fieldset>
                    <legend><h3 style="color: #008CEE">修改联系人信息</h3></legend>
                    <div style="position: relative;left: -60px;">
                        <div class="col-sm-12" style="padding-top: 20px;">
                            <label class="col-sm-3 col-sm-offset-3">客户姓名:</label>
                            <div class="col-sm-5" style="padding-left: 25px;">
                                <input type="text" value="张三" name="kh_name">
                            </div>
                        </div>
                        <div class="col-sm-12" style="padding-top: 20px;">
                            <label class="col-sm-3 col-sm-offset-3">电话:</label>
                            <div class="col-sm-5 " style="padding-left: 25px;">
                                <input type="text" value="18829206371" name="kh_name">
                            </div>
                        </div>
                        <div class="col-sm-12" style="padding-top: 20px;">
                            <label class="col-sm-3 col-sm-offset-3">部门:</label>
                            <div class="col-sm-5" style="padding-left: 25px;">
                                <input type="text" value="管理部" name="kh_tel">
                            </div>
                        </div>
                        <div class="col-sm-12" style="padding-top: 20px;">
                            <label class="col-sm-3 col-sm-offset-3">职位:</label>
                            <div class="col-sm-5" style="padding-left: 25px;"><input type="text" value="主管"
                                                                                     name="kh_tel">
                            </div>
                        </div>
                        <div class="col-sm-12" style="padding-top: 20px;">
                            <label class="col-sm-3 col-sm-offset-3">微信号:</label>
                            <div class="col-sm-5" style="padding-left: 25px;"><input type="text"
                                                                                     value="you_are_beautiful"
                                                                                     name="kh_wechat">
                            </div>
                        </div>
                        <div class="col-sm-12" style="padding-top: 20px;">
                            <label class="col-sm-3 col-sm-offset-3">钉钉号:</label>
                            <div class="col-sm-5" style="padding-left: 25px;"><input type="text" value="163527389"
                                                                                     name="kh_ding">
                            </div>
                        </div>
                        <div style="text-align: center">
                            <button class="btn btn-info"
                                    style="margin-top: 25px;padding: 6px 46px;position: relative;left:42px;"
                                    data-dismiss="modal">确认
                            </button>
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>
    </div>
    <div class="olct" style="position: fixed; top: 69px;    right: -250px;">
        <div class="clearfloat">
            <div class="olct_left"></div>
            <div class="olct_right">
                <div class="olct_box">
                    <div class="olct_top"
                         style=" z-index:2;   display: inline-block;width: 100px;position: relative;right: -130px;">
                        <a href="javascript:void(0);" style=""><img
                                src="image/lADOjttrRMykXQ_93_164.png" alt=""
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

                                <div class="olct_teacher clearfloat col-lg-10"
                                     style="    position: relative; top: -19px;">
                                    <li class="row info col-lg-12">
                                        <a id="f" href="kh.html">
                                            <img src="image/客户管理.png" class="col-lg-offset-2">
                                            <span class="list">客户管理</span>
                                        </a>
                                    </li>
                                    <li class="row info col-lg-12">
                                        <a id="c" href="../../contract/ht.jsp">
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
                                        <a id="j" href="xm.jsp">
                                            <img src="image/项目管理.png" class="col-lg-offset-2">
                                            <span class="list">项目管理</span>

                                        </a>
                                    </li>
                                    <li class="row info col-lg-12">
                                        <a id="j" href="rw.html">
                                            <img src="image/任务管理.png" class="col-lg-offset-2">
                                            <span class="list">任务管理</span>
                                        </a>
                                    </li>
                                    <li class="row info col-lg-12">
                                        <a id="h" href="bx.html">
                                            <img src="image/报销管理.png" class="col-lg-offset-2">
                                            <span class="list">报销管理</span>
                                        </a>
                                    </li>
                                    <li class="row info col-lg-12">
                                        <a id="e" href="yh.jsp">
                                            <img src="image/用户管理.png" class="col-lg-offset-2">
                                            <span class="list">用户管理</span>
                                        </a>
                                    </li>
                                    <li class="row info col-lg-12">
                                        <a href="qx.jsp">
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
</div>

<!-- 确认confirm -->
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
            您确认要进行保存操作吗？
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
                <input type="button" class="btn2 btn_confirm_cancel" value="确认" id="btn_confirm_delelxr">　
                <input type="button" class="btn2 btn_confirm_cancel" value="取消" id="btn_confirm_cancel">
            </div>
        </div>
    </div>
</div>
<div id="ShowBolightBox" style=" width: 1932px; height: 100%;display:none;"></div>

</body>
</html>