<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">


    <title>报销管理</title>
</head>
<body>
<jsp:include page="../public/menulist.jsp"></jsp:include>
<jsp:include page="../public/lib.jsp"></jsp:include>
<!------------------------------报销管理---------------------------------->
<div class="main-container container-fluid" class="top"style="padding-left: 0;">
<img src="../../../image/2.png" alt="">
</div>
<div class="main-container container-fluid" class="left"style="display:inline-block;    padding-left: 0;">
<img src="../../../image/1.png" alt="" style="width:230px;    height: 100%;">
</div>

<div style="height:200px;width:350px;font-size:26px;font-family:'华文行楷','Arial','Microsoft YaHei','黑体','宋体','sans-serif';margin:0 auto; border:1px solid #008cee;background-color:#008cee;color:#fff;z-index:999;display:inline-block;line-height:50px;text-align:center;border-radius:20px;position:absolute;right: 42%;top: 480px;display:none;" class="noticeCon">
    操作成功
</div>

<div class="contaner"  id="page1"style="width:86%;float:right;padding:0 35px;border:1px solid #ddd">
     <a id="btn1" href="swindex.html"style="left: -30px;padding: 17px 10px;float: left;position: relative;color:#008cee!important" > 首页 / </a>
    <a class="btn1" href="javascript:void(0)"style="left: -30px;padding: 17px 5px;float: left;position: relative;color:#008cee!important" > 功能列表</a>
    <div class="section">
        <h3 class="baoxiao" style="    margin: 15px 0;text-align:center;padding:0 100px;" >报销管理</h3>
        <form style="border:1px solid #ddd;padding:10px 20px;border-radius:5px;text-align:left;margin:10px 10px 0 0;">
             <label>工程师</label>&nbsp;&nbsp;
            <select name="cr" id="car" class="set">
                <option value="">------请选择------</option>
                <option value="1">李工</option>
                <option value="2">何工</option>
                <option value="3">张工</option>
            </select>&nbsp;&nbsp;

            <label>费用名称</label>&nbsp;&nbsp;
            <input type="text" placeholder="请输入费用名称" class="set"/>&nbsp;&nbsp;

            <label>费用类型</label>&nbsp;&nbsp;
            <select name="set" id="set" class="set">
                <option value="">------请选择------</option>
                <option value="1">交通费</option>
                <option value="2">邮费</option>
                <option value="3">报销费</option>
            </select>&nbsp;&nbsp;

           

            <label>状态</label>&nbsp;&nbsp;
            <select name="zt" id="zt" class="set">
                <option value="">------请选择------</option>
                <option value="1">未报销</option>
                <option value="2">已报销</option>
                <option value="3">过期</option>
            </select>&nbsp;&nbsp;

            <label>上传日期</label>&nbsp;&nbsp;
            <input type="date" placeholder="请选择申请时间" class="set" style="line-height: normal;"/>&nbsp;&nbsp;

            <button type="button" class="btn" style="background-color: #008CEE;color: #fff">搜索</button>
            <button type="reset" class="btn" style="background-color: #008CEE;color: #fff">重置</button>
        </form>

        <div class="table-responsive" style="margin:15px 0; ">
            <table class="table table-bordered" id="deleteApplyTable">
                <thead>
                <tr>
                    <td>编号</td>
                    <td>工程师</td>
                    <td>费用名称</td>
                    <td>费用类型</td>
                    <td>票据号码</td>
                    <td>金额</td>
                    <td>摘要</td>
                    <td>上传日期</td>
                    <td>行车记录</td>
                    <td>状态</td>
                    <td>操作</td>
                </tr>
                </thead>
                <tbody id="applyBody">
                <tr>
                    <td>01</td>
                    <td>张三</td>
                    <td>住宿费</td>
                    <td>住宿费</td>
                    <td>12345678</td>
                    <td>100</td>
                    <td>xxx</td>
                    <td>2016.11.11</td>
                    <td>否</td>
                    <td>已审核</td>
                    <td>
                        <a href="bxxg.jsp" style="text-decoration:none;color:#fff"> <span class="left xg"><button class="btn btn-info" style="color: #ffffff;"> 修改</button></span></a>

                        <span  class="right xg " ><button class="btn btn-danger deleApply" style="color: #ffffff">删除</button></span>
                    </td>
                </tr>
                <tr>
                    <td>02</td>
                    <td>李四</td>
                    <td>住宿费</td>
                    <td>住宿费</td>
                    <td>12345678</td>
                    <td>100</td>
                    <td>xxx</td>
                    <td>2016.11.11</td>
                    <td>否</td>
                    <td>已审核</td>
                    <td>
                     <a href="bxxg.jsp" style="text-decoration:none;color:#fff"> <span class="left xg"><button class="btn btn-info" style="color: #ffffff;"> 修改</button></span></a>
                        <span  class="right xg" ><button class="btn btn-danger deleApply" style="color: #ffffff">删除</button></span>
                    </td>
                </tr>
                <tr>
                    <td>03</td>
                    <td>王麻子</td>
                    <td>住宿费</td>
                    <td>住宿费</td>
                    <td>12345678</td>
                    <td>100</td>
                    <td>xxx</td>
                    <td>2016.11.11</td>
                    <td><a href="javascript:;" class="yes"style="color:#008cee;">是</a></td>
                    <td>已审核</td>
                    <td>
                           <a href="bxxg.jsp" style="text-decoration:none;color:#fff"> <span class="left xg"><button class="btn btn-info" style="color: #ffffff;"> 修改</button></span></a>

                        <span  class="right xg"id="xg1" ><button class="btn btn-danger deleApply" style="color: #ffffff">删除</button></span>
                    </td>
                </tr>
                 <tr>
                    <td>04</td>
                    <td>张三</td>
                    <td>住宿费</td>
                    <td>住宿费</td>
                    <td>12345678</td>
                    <td>100</td>
                    <td>xxx</td>
                    <td>2016.11.11</td>
                    <td>否</td>
                    <td>已审核</td>
                    <td>
                        <a href="bxxg.jsp" style="text-decoration:none;color:#fff"> <span class="left xg"><button class="btn btn-info" style="color: #ffffff;"> 修改</button></span></a>

                        <span  class="right xg " ><button class="btn btn-danger deleApply" style="color: #ffffff">删除</button></span>
                    </td>
                </tr>
                <tr>
                    <td>05</td>
                    <td>李四</td>
                    <td>住宿费</td>
                    <td>住宿费</td>
                    <td>12345678</td>
                    <td>100</td>
                    <td>xxx</td>
                    <td>2016.11.11</td>
                    <td>否</td>
                    <td>已审核</td>
                    <td>
                     <a href="bxxg.jsp" style="text-decoration:none;color:#fff"> <span class="left xg"><button class="btn btn-info" style="color: #ffffff;"> 修改</button></span></a>
                        <span  class="right xg" ><button class="btn btn-danger deleApply" style="color: #ffffff">删除</button></span>
                    </td>
                </tr>
                <tr>
                    <td>06</td>
                    <td>王麻子</td>
                    <td>住宿费</td>
                    <td>住宿费</td>
                    <td>12345678</td>
                    <td>100</td>
                    <td>xxx</td>
                    <td>2016.11.11</td>
                    <td><a href="javascript:;" class="yes"style="color:#008cee;">是</a></td>
                    <td>已审核</td>
                    <td>
                           <a href="bxxg.jsp" style="text-decoration:none;color:#fff"> <span class="left xg"><button class="btn btn-info" style="color: #ffffff;"> 修改</button></span></a>

                        <span  class="right xg"id="xg1" ><button class="btn btn-danger deleApply" style="color: #ffffff">删除</button></span>
                    </td>
                </tr>
                 <tr>
                    <td>07</td>
                    <td>张三</td>
                    <td>住宿费</td>
                    <td>住宿费</td>
                    <td>12345678</td>
                    <td>100</td>
                    <td>xxx</td>
                    <td>2016.11.11</td>
                    <td>否</td>
                    <td>已审核</td>
                    <td>
                        <a href="bxxg.jsp" style="text-decoration:none;color:#fff"> <span class="left xg"><button class="btn btn-info" style="color: #ffffff;"> 修改</button></span></a>

                        <span  class="right xg " ><button class="btn btn-danger deleApply" style="color: #ffffff">删除</button></span>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
        <div class="table-responsive det" style="margin:15px 0;display:none;" >
            <table class="table table-bordered">
                <thead>
                <tr>
                    <td>车牌号</td>
                    <td>类型</td>
                    <td>开始时间</td>
                    <td>结束时间</td>
                    <td>开始公里数</td>
                    <td>到达公里数</td>
                    <td>起始位置</td>
                    <td>结束位置</td>

                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>888888</td>
                    <td>自驾</td>
                    <td>2016.11.11 08:30:59</td>
                    <td>2016.11.11 09:30:59</td>
                    <td>999</td>
                    <td>1000</td>
                    <td>玉祥门</td>
                    <td>市建四公司</td>
                </tr>
                </tbody>
            </table>

        </div>
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
    <!-- <a id="btn1" href="javascript:void(0)"style="left: -30px;padding: 17px 0px;float: left;position: relative;" >功能列表</a> -->
    
</div>

<!-- 主容器 -->

<div id="dvMsgBox" style="width: 400px;  top: 440px; left: 751px;display:none;">
    <div class="top">
        <div class="right">
            <div class="title" id="dvMsgTitle">提示</div>
        </div>
    </div>
    <div class="body">
        <div class="right">
            <div class="ct" id="dvMsgCT">
                <img src="../../../image/警示.png" alt="" style="width:30px;height:30px;margin-right:10px;">
                您确认要进行保存操作吗？
                <div class="clear">
                    <img src="../../../image/bottom_smile.png" alt="">
                </div>
            </div>
        </div>
    </div>
    <div class="bottom" id="dvMsgBottom" style="height: 45px;">
        <div class="right">
            <div class="" id="dvMsgBtns">
                <div class="height"></div>
                <input type="button" class="btn2 btn_confirm_cancel" value="确认" id="btn_confirm_deleteApply">　
                <input type="button" class="btn2 btn_confirm_cancel" value="取消" id="btn_confirm_cancel">
            </div>
        </div>
    </div>
</div>
<div id="ShowBolightBox" style=" width: 1932px; height: 100%;display:none;"></div>
<script src="../../../js/app.js"></script>
</body>
</html>