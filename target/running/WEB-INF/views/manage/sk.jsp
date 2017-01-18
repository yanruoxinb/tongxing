<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>收款管理</title>
</head>
<body>
<!------------------------------收款管理---------------------------------->
<jsp:include page="../public/menulist.jsp"></jsp:include>
<jsp:include page="../public/lib.jsp"></jsp:include>

<div style="height:50px;width:350px;font-size:26px;font-family:'华文行楷','Arial','Microsoft YaHei','黑体','宋体','sans-serif';margin:0 auto; border:1px solid #008cee;background-color:#008cee;color:#fff;z-index:999;display:inline-block;line-height:50px;text-align:center;border-radius:20px;position:absolute;right: 42%;top: 480px;display:none;"
     class="noticeCon">
    操作成功
</div>

<div class="contaner" id="page6" style="width:86%;float:right;margin: 5px 5px;padding:0 35px;border:1px solid #ddd;">
    <a id="btn1" href="swindex.html" style="left: -30px;padding: 17px 10px;float: left;position: relative;"> 首页 / </a>
    <a class="btn1" href="javascript:void(0)" style="left: -30px;padding: 17px 5px;float: left;position: relative;">
        功能列表</a>
    <div class="section">
        <h3 class="baoxiao" style="margin:10px 0;">收款管理</h3>
        <form style="border:1px solid #ddd;padding:10px 20px;border-radius:5px;text-align:left;margin:10px 0 ;">

            <!--  <label>费用名称</label>&nbsp;&nbsp;
             <input type="text" placeholder="请输入费用名称" class="set" style="line-height: normal;"/>&nbsp;&nbsp; -->

            <label>任务编号</label>&nbsp;&nbsp;
            <select name="set" class="set">
                <option value="">------请选择------</option>
                <option value="1">888888</option>
                <option value="2">888888</option>
                <option value="2">888888</option>
            </select>&nbsp;&nbsp;

            <!--  <label>收款日期</label>&nbsp;&nbsp;
             <input type="date" placeholder="请选择添加时间" class="set5" style="line-height: normal;"/>&nbsp;&nbsp;
  -->
            <label>状态</label>&nbsp;&nbsp;
            <select name="set" class="set">
                <option value="">------请选择------</option>
                <option value="1">已收款</option>
                <option value="2">未收款</option>
            </select>&nbsp;&nbsp;
            <label>收款人</label>&nbsp;&nbsp;
            <select name="set" class="set">
                <option value="">------请选择------</option>
                <option value="1">张绿箭</option>
                <option value="2">张益达</option>
            </select>&nbsp;&nbsp;
            <button type="button" class="btn" style="margin-left:10px;background-color: #008cee;color: #fff">搜索</button>
            <button type="reset" class="btn" style="margin-left:10px;background-color: #008cee;color: #fff">重置</button>
            <button type="button" class="btn btn-danger" id="deleteCollection"
                    style="padding:5px 18px;float:right;position: relative;top: 9px;right: 38px;">
                删除
            </button>
            <button type="button" class="btn" id="addCollection"
                    style="padding:5px 18px;float:right;color:#fff;background-color:#008cee;    position: relative;top: 9px;right: 46px;">
                新增
            </button>
        </form>
        <div class="table-responsive" style="margin:15px 0; ">
            <table class="table table-bordered" id="collectionTable">
                <thead>
                <tr>
                    <td></td>
                    <td>费用名称</td>
                    <td>收款方式</td>
                    <td>票据号码</td>
                    <td>金额</td>
                    <td>任务编号</td>
                    <td>收款人</td>
                    <td>收款日期</td>
                    <td>状态</td>
                    <td>是否上交</td>
                    <td>上交时间</td>
                    <td>操作</td>
                </tr>
                </thead>
                <tbody id="collectionBody">
                <tr>
                    <td><input type="checkbox" name="collection"></td>
                    <td>xxx</td>
                    <td>网上转账</td>
                    <td>无</td>
                    <td>1600.00</td>
                    <td>G2016888888</td>
                    <td>王大</td>
                    <td>2016.11.11</td>
                    <td>已转账</td>
                    <td>是</td>
                    <td>2016.11.11</td>
                    <td>
                        <button class="btn btn-info"> 修改</button>
                    </td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="collection"></td>
                    <td>xxx</td>
                    <td>现金</td>
                    <td>无</td>
                    <td>1600.00</td>
                    <td>G2016888888</td>
                    <td>王二</td>
                    <td>2016.11.11</td>
                    <td>未收款</td>
                    <td>否</td>
                    <td>2016.11.11</td>
                    <td>
                        <button class="btn btn-info"> 修改</button>
                    </td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="collection"></td>
                    <td>xxx</td>
                    <td>现金</td>
                    <td>无</td>
                    <td>1600.00</td>
                    <td>G2016888888</td>
                    <td>王三</td>
                    <td>2016.11.11</td>
                    <td>已收款</td>
                    <td>否</td>
                    <td>2016.11.11</td>
                    <td>
                        <button class="btn btn-info"> 修改</button>
                    </td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="collection"></td>
                    <td>xxx</td>
                    <td>现金</td>
                    <td>无</td>
                    <td>1600.00</td>
                    <td>G2016888888</td>
                    <td>王三</td>
                    <td>2016.11.11</td>
                    <td>已收款</td>
                    <td>是</td>
                    <td>2016.11.12</td>
                    <td>
                        <button class="btn btn-info"> 修改</button>
                    </td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="collection"></td>
                    <td>xxx</td>
                    <td>网上转账</td>
                    <td>无</td>
                    <td>1600.00</td>
                    <td>G2016888888</td>
                    <td>王大</td>
                    <td>2016.11.11</td>
                    <td>已转账</td>
                    <td>是</td>
                    <td>2016.11.11</td>
                    <td>
                        <button class="btn btn-info"> 修改</button>
                    </td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="collection"></td>
                    <td>xxx</td>
                    <td>现金</td>
                    <td>无</td>
                    <td>1600.00</td>
                    <td>G2016888888</td>
                    <td>王二</td>
                    <td>2016.11.11</td>
                    <td>未收款</td>
                    <td>否</td>
                    <td>2016.11.11</td>
                    <td>
                        <button class="btn btn-info"> 修改</button>
                    </td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="collection"></td>
                    <td>xxx</td>
                    <td>现金</td>
                    <td>无</td>
                    <td>1600.00</td>
                    <td>G2016888888</td>
                    <td>王三</td>
                    <td>2016.11.11</td>
                    <td>已收款</td>
                    <td>否</td>
                    <td>2016.11.11</td>
                    <td>
                        <button class="btn btn-info"> 修改</button>
                    </td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="collection"></td>
                    <td>xxx</td>
                    <td>现金</td>
                    <td>无</td>
                    <td>1600.00</td>
                    <td>G2016888888</td>
                    <td>王三</td>
                    <td>2016.11.11</td>
                    <td>已收款</td>
                    <td>是</td>
                    <td>2016.11.12</td>
                    <td>
                        <button class="btn btn-info">修改</button>
                    </td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="collection"></td>
                    <td>xxx</td>
                    <td>现金</td>
                    <td>无</td>
                    <td>1600.00</td>
                    <td>G2016888888</td>
                    <td>王三</td>
                    <td>2016.11.11</td>
                    <td>已收款</td>
                    <td>是</td>
                    <td>2016.11.12</td>
                    <td>
                        <button class="btn btn-info"> 修改</button>
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
    <!-- <a id="btn1" href="javascript:void(0)"style="left: -30px;padding: 17px 0px;float: left;position: relative;" >功能列表</a> -->
</div>


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
                <input type="button" class="btn2 btn_confirm_cancel" value="确认" id="btn_confirm_deleteCollections">　
                <input type="button" class="btn2 btn_confirm_cancel" value="取消" id="btn_confirm_cancel">
            </div>
        </div>
    </div>
</div>
<div id="ShowBolightBox" style=" width: 1932px; height: 100%;display:none;"></div>
<div id="zhe" style="display:none;"></div>
</body>
</html>
</html>