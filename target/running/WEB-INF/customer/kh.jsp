<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/index.css"/>
    <link rel="stylesheet" href="css/change_style.css"/>
    <link rel="stylesheet" href="css/change_style1.css"/>
     <link rel="stylesheet" href="css/tq.css"/>
    <link rel="stylesheet" type="text/css" href="assets/bootstrap/css/font-awesome.min.css" />
    <script src="js/jquery-1.11.3.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
         <link rel="stylesheet" href="css/tqcss.css"/>
        <script src="js/showBo.js"></script> 
    <title>客户管理</title>
    <style>
.width{
    width: 7%;
}
.contaner {
    margin-right:10px;
}
.row img{
    width: 20px;
    height: 20px;
}
.row a{
    font-weight: bold;
    /*color:#E3C477;*/
    color:#fff;
}
.olct_con li{
    outline: none;
    list-style: none;
    padding:11px 10px;
    line-height: 18px;
    font-size: 14px;
    font-family: '微软雅黑', '幼圆雅黑', Sans-serif;
    color: #fff;
}
.olct_con li span{
    padding-left:10px ;
}
    </style>


</head>
<body>
<!------------------------------客户管理---------------------------------->
<div class="main-container container-fluid" class="top"style="padding-left: 0;">
<img src="./image/2.png" alt="">
</div>
<div class="main-container container-fluid" class="left"style="display:inline-block;    padding-left: 0;">
<img src="./image/1.png" alt=""style="width:230px;    height: 100%;">
</div>

<div style="height200px;width:350px;font-size:26px;font-family:'华文行楷','Arial','Microsoft YaHei','黑体','宋体','sans-serif';margin:0 auto; border:1px solid #008cee;background-color:#008cee;color:#fff;z-index:999;display:inline-block;line-height:50px;text-align:center;border-radius:20px;position:absolute;right: 42%;top: 480px;display:none;" class="noticeCon">
    操作成功
</div>


<div class="contaner"  id="page3"style="width:86%;float:right;padding:0 35px;border:1px solid #ddd;">
    <a id="btn1" href="swindex.html"style="left: -30px;padding: 17px 10px;float: left;position: relative;" > 首页 / </a>
    <a class="btn1" href="javascript:void(0)"style="left: -30px;padding: 17px 5px;float: left;position: relative;" > 功能列表</a>
    <div class="section">
        <h3 class="baoxiao" style="margin:10px 0;">客户管理</h3>
        <form style="border:1px solid #ddd;padding:10px 20px;border-radius:5px;text-align:left;style="margin:5px 0;"">

            <label>名称</label>&nbsp;&nbsp;
            <input type="text" placeholder="请输入客户名" class="noset width"/>&nbsp;&nbsp;

            <label>省份</label>&nbsp;&nbsp;
            <select name="set" class="noset">
                <option value="">-----请选择-----</option>
                <option value="1">陕西省</option>
                <option value="2">上海市</option>
                <option value="3">北京市</option>
            </select>&nbsp;&nbsp;

            <label>县区</label>&nbsp;&nbsp;
            <select name="cr"  class="noset">
                <option value="">-----请选择-----</option>
                <option value="1">蓝田县</option>
                <option value="2">户县</option>
                <option value="3">高陵县</option>
            </select>&nbsp;&nbsp;

            <label>等级</label>&nbsp;&nbsp;
            <select name="zt"  class="noset">
                <option value="">-----请选择-----</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
            </select>&nbsp;&nbsp;

            <label>状态</label>&nbsp;&nbsp;
            <select name="zt"  class="noset">
                <option value="">-----请选择-----</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
            </select>&nbsp;&nbsp;

            <label>客户性质</label>&nbsp;&nbsp;
            <select name="zt"  class="noset">
                <option value="">-----请选择-----</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
            </select>&nbsp;&nbsp;


            <label>来源</label>&nbsp;&nbsp;
            <input type="text" placeholder="请输入客户来源" class="noset width"/>&nbsp;&nbsp;

            <label>创建时间</label>&nbsp;&nbsp;
            <input type="date" placeholder="请选择申请时间" class="noset" style="line-height: normal;"/>&nbsp;&nbsp;


            <button type="button" class="btn pull-right" style="margin:0 10px;background-color: #008cee;color: #fff">搜索</button>
            <button type="reset" class="btn pull-right" style="background-color: #008cee;color: #fff">重置</button>
            <div>
                <a href="tjkh.jsp"><button type="button" class="btn pull-left" style="    margin: 20px 0 10px 0;background-color: #008cee;color: #fff">新增</button></a>
            </div>


        </form>

        <div class="table-responsive" style="margin:15px 0; ">
            <table class="table table-bordered" id="deleteCustomerTable">
                <thead>
                <tr>
                    <td>客户编号</td>
                    <td>客户名称</td>
                    <td>客户性质</td>
                    <td>主要业务</td>
                    <td>等级</td>
                    <td>状态</td>
                    <td>上属公司</td>
                    <td>企业性质</td>
                    <td>省份</td>
                    <td>城市</td>
                    <td>详细地址</td>
                    <td>联系电话</td>
                    <td>来源</td>
                    <td>添加时间</td>
                    <td>添加人</td>
                    <td>详情</td>
                    <td>操作</td>
                </tr>
                </thead>
                <tbody id="customerBody">
                <tr>
                    <td>01</td>
                    <td>湖北老河口市慧江混凝土有限公司</td>
                    <td>代理商</td>
                    <td>混凝土</td>
                    <td>一级</td>
                    <td>合作中</td>
                    <td>大唐有限公司</td>
                    <td>私企</td>
                    <td>湖北省</td>
                    <td>老河口市</td>
                    <td>xxxxxx</td>
                    <td>13991999199</td>
                    <td>走访</td>
                    <td>2016.11.11</td>
                    <td>赵</td>
                    <td>
                        <a href="../views/manage/khxq.jsp">
                            <button class="btn" style="color:#FFFFFF;background-color: #008CEE">详情</button>
                        </a>
                    </td>
                    <td>
                        <a href="xgkh.jsp"><span class="left xg"><button class="btn btn-info" style="color:#FFFFFF;">修改</button></span></a>
                        <span  class="right xg"><button class="btn btn-danger deleCustomer" style="color: #FFFFFF;">删除</button></span>
                    </td>
                </tr>
                <tr>
                    <td>02</td>
                    <td>湖北老河口市慧江混凝土有限公司</td>
                    <td>最终客户</td>
                    <td>混凝土</td>
                    <td>二级</td>
                    <td>合作中</td>
                    <td>大唐有限公司</td>
                    <td>私企</td>
                    <td>湖北省</td>
                    <td>老河口市</td>
                    <td>xxxxxx</td>
                    <td>13991999199</td>
                    <td>走访</td>
                    <td>2016.11.11</td>
                    <td>李</td>
                    <td>
                        <a href="../views/manage/khxq.jsp">
                            <button class="btn" style="color:#FFFFFF;background-color: #008CEE">详情</button>
                        </a>
                    </td>
                    <td>
                        <a href="xgkh.jsp"><span class="left xg"><button class="btn btn-info" style="color:#FFFFFF;">修改</button></span></a>
                        <span  class="right xg"><button class="btn btn-danger deleCustomer" style="color: #FFFFFF;">删除</button></span>
                    </td>
                </tr>
                <tr>
                    <td>03</td>
                    <td>湖北老河口市慧江混凝土有限公司</td>
                    <td>代理商</td>
                    <td>混凝土</td>
                    <td>一级</td>
                    <td>合作中</td>
                    <td>大唐有限公司</td>
                    <td>私企</td>
                    <td>湖北省</td>
                    <td>老河口市</td>
                    <td>xxxxxx</td>
                    <td>13991999199</td>
                    <td>走访</td>
                    <td>2016.11.11</td>
                    <td>赵</td>
                    <td>
                        <a href="../views/manage/khxq.jsp">
                            <button class="btn" style="color:#FFFFFF;background-color: #008CEE">详情</button>
                        </a>
                    </td>
                    <td>
                        <a href="xgkh.jsp"><span class="left xg"><button class="btn btn-info" style="color:#FFFFFF;">修改</button></span></a>
                        <span  class="right xg"><button class="btn btn-danger deleCustomer" style="color: #FFFFFF;">删除</button></span>
                    </td>
                </tr>
                <tr>
                    <td>04</td>
                    <td>湖北老河口市慧江混凝土有限公司</td>
                    <td>最终客户</td>
                    <td>混凝土</td>
                    <td>二级</td>
                    <td>合作中</td>
                    <td>大唐有限公司</td>
                    <td>私企</td>
                    <td>湖北省</td>
                    <td>老河口市</td>
                    <td>xxxxxx</td>
                    <td>13991999199</td>
                    <td>走访</td>
                    <td>2016.11.11</td>
                    <td>李</td>
                    <td>
                        <a href="../views/manage/khxq.jsp">
                            <button class="btn" style="color:#FFFFFF;background-color: #008CEE">详情</button>
                        </a>
                    </td>
                    <td>
                        <a href="xgkh.jsp"><span class="left xg"><button class="btn btn-info" style="color:#FFFFFF;">修改</button></span></a>
                        <span  class="right xg"><button class="btn btn-danger deleCustomer" style="color: #FFFFFF;">删除</button></span>
                    </td>
                </tr>
                <tr>
                    <td>05</td>
                    <td>湖北老河口市慧江混凝土有限公司</td>
                    <td>代理商</td>
                    <td>混凝土</td>
                    <td>一级</td>
                    <td>合作中</td>
                    <td>大唐有限公司</td>
                    <td>私企</td>
                    <td>湖北省</td>
                    <td>老河口市</td>
                    <td>xxxxxx</td>
                    <td>13991999199</td>
                    <td>走访</td>
                    <td>2016.11.11</td>
                    <td>赵</td>
                    <td>
                        <a href="../views/manage/khxq.jsp">
                            <button class="btn" style="color:#FFFFFF;background-color: #008CEE">详情</button>
                        </a>
                    </td>
                    <td>
                        <a href="xgkh.jsp"><span class="left xg"><button class="btn btn-info" style="color:#FFFFFF;">修改</button></span></a>
                        <span  class="right xg"><button class="btn btn-danger deleCustomer" style="color: #FFFFFF;">删除</button></span>
                    </td>
                </tr>
                <tr>
                    <td>06</td>
                    <td>湖北老河口市慧江混凝土有限公司</td>
                    <td>最终客户</td>
                    <td>混凝土</td>
                    <td>二级</td>
                    <td>合作中</td>
                    <td>大唐有限公司</td>
                    <td>私企</td>
                    <td>湖北省</td>
                    <td>老河口市</td>
                    <td>xxxxxx</td>
                    <td>13991999199</td>
                    <td>走访</td>
                    <td>2016.11.11</td>
                    <td>李</td>
                    <td>
                        <a href="../views/manage/khxq.jsp">
                            <button class="btn" style="color:#FFFFFF;background-color: #008CEE">详情</button>
                        </a>
                    </td>
                    <td>
                        <a href="xgkh.jsp"><span class="left xg"><button class="btn btn-info" style="color:#FFFFFF;">修改</button></span></a>
                        <span  class="right xg"><button class="btn btn-danger deleCustomer" style="color: #FFFFFF;">删除</button></span>
                    </td>
                </tr>
                <tr>
                    <td>07</td>
                    <td>湖北老河口市慧江混凝土有限公司</td>
                    <td>代理商</td>
                    <td>混凝土</td>
                    <td>一级</td>
                    <td>合作中</td>
                    <td>大唐有限公司</td>
                    <td>私企</td>
                    <td>湖北省</td>
                    <td>老河口市</td>
                    <td>xxxxxx</td>
                    <td>13991999199</td>
                    <td>走访</td>
                    <td>2016.11.11</td>
                    <td>赵</td>
                    <td>
                        <a href="../views/manage/khxq.jsp">
                            <button class="btn" style="color:#FFFFFF;background-color: #008CEE">详情</button>
                        </a>
                    </td>
                    <td>
                        <a href="xgkh.jsp"><span class="left xg"><button class="btn btn-info" style="color:#FFFFFF;">修改</button></span></a>
                        <span  class="right xg"><button class="btn btn-danger deleCustomer" style="color: #FFFFFF;">删除</button></span>
                    </td>
                </tr>
                <tr>
                    <td>08</td>
                    <td>湖北老河口市慧江混凝土有限公司</td>
                    <td>最终客户</td>
                    <td>混凝土</td>
                    <td>二级</td>
                    <td>合作中</td>
                    <td>大唐有限公司</td>
                    <td>私企</td>
                    <td>湖北省</td>
                    <td>老河口市</td>
                    <td>xxxxxx</td>
                    <td>13991999199</td>
                    <td>走访</td>
                    <td>2016.11.11</td>
                    <td>李</td>
                    <td>
                        <a href="../views/manage/khxq.jsp">
                            <button class="btn" style="color:#FFFFFF;background-color: #008CEE">详情</button>
                        </a>
                    </td>
                    <td>
                        <a href="xgkh.jsp"><span class="left xg"><button class="btn btn-info" style="color:#FFFFFF;">修改</button></span></a>
                        <span  class="right xg"><button class="btn btn-danger deleCustomer" style="color: #FFFFFF;">删除</button></span>
                    </td>
                </tr>
                <tr>
                    <td>09 </td>
                    <td>湖北老河口市慧江混凝土有限公司</td>
                    <td>最终客户</td>
                    <td>混凝土</td>
                    <td>二级</td>
                    <td>合作中</td>
                    <td>大唐有限公司</td>
                    <td>私企</td>
                    <td>湖北省</td>
                    <td>老河口市</td>
                    <td>xxxxxx</td>
                    <td>13991999199</td>
                    <td>走访</td>
                    <td>2016.11.11</td>
                    <td>李</td>
                    <td>
                        <a href="../views/manage/khxq.jsp">
                            <button class="btn" style="color:#FFFFFF;background-color: #008CEE">详情</button>
                        </a>
                    </td>
                    <td>
                        <a href="xgkh.jsp"><span class="left xg"><button class="btn btn-info" style="color:#FFFFFF;">修改</button></span></a>
                        <span  class="right xg"><button class="btn btn-danger deleCustomer" style="color: #FFFFFF;">删除</button></span>
                    </td>
                </tr>
                </tbody>
            </table>
            <nav style="    padding-left: 10px; text-align: center;">
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
                                        <a id="j" href="../views/manage/rw.jsp">
                                            <img src="image/任务管理.png" class="col-lg-offset-2">
                                            <span class="list">任务管理</span>
                                        </a>
                                    </li>
                                    <li class="row info col-lg-12">
                                        <a id="h" href="../views/manage/sk.jsp">
                                            <img src="image/收款管理.png" class="col-lg-offset-2">
                                            <span class="list">收款管理</span>
                                        </a>
                                    </li>


                                    <li class="row info col-lg-12">
                                        <a id="h" href="../views/manage/bx.jsp">
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
                                        <a href="../views/manage/qx.jsp">
                                            <img src="image/权限管理.png" class="col-lg-offset-2">
                                            <span class="list">权限管理</span>
                                        </a>
                                    </li>

                                    <li class="row info col-lg-12">
                                        <a href="../views/manage/cdmang.jsp">
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
    <div id="dvMsgBox" style="width: 400px;  top: 440px; left: 751px;display:none;">
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
                    <input type="button" class="btn2 btn_confirm_cancel" value="确认" id="btn_confirm_deleteCustomer">　
                    <input type="button" class="btn2 btn_confirm_cancel" value="取消" id="btn_confirm_cancel">
                </div>
            </div>
        </div>
    </div>
    <div id="ShowBolightBox" style=" width: 1932px; height: 100%;display:none;"></div>
    <div id="zhe" style="display:none;"></div>
<!-- <a id="btn1" href="javascript:void(0)" >功能列表</a> -->
<!-- <a  id="btn2" href='swindex.html'>返回首页</a> -->
<script src="js/app.js"></script>
</body>
</html>