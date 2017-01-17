<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>合同管理</title>
</head>
<body>
<!------------------------------合同管理---------------------------------->
<jsp:include page="../public/menulist.jsp"></jsp:include>
<jsp:include page="../public/lib.jsp"></jsp:include>
<div class="main-container container-fluid" class="top"style="padding-left: 0;">
<img src="./image/2.png" alt="">
</div>
<div class="main-container container-fluid" class="left"style="display:inline-block;    padding-left: 0;">
<img src="./image/1.png" alt=""style="width:230px;    height: 1300px;">
</div>

<div style="height:200px;width:350px;font-size:26px;font-family:'华文行楷','Arial','Microsoft YaHei','黑体','宋体','sans-serif';margin:0 auto; border:1px solid #008cee;background-color:#008cee;color:#fff;z-index:999;display:inline-block;line-height:50px;text-align:center;border-radius:20px;position:absolute;right: 42%;top: 480px;display:none;" class="noticeCon">
    操作成功
</div>

<div class="contaner"  id="page2"style="width:86%;float:right;padding:0 35px;border:1px solid #ddd;    margin: 10px 10px 0 0;">
<a id="btn1" href="swindex.html"style="left: -30px;padding: 17px 10px;float: left;position: relative;" > 首页 / </a>
    <a class="btn1" href="javascript:void(0)"style="left: -30px;padding: 17px 5px;float: left;position: relative;" > 功能列表</a>
    <div class="section">
        <h3 class="baoxiao">合同管理</h3>
        <form style="border:1px solid #ddd;padding:10px 20px;border-radius:5px;text-align:left;">
            <label>合同编号</label>&nbsp;&nbsp;
            <input type="text" placeholder="请输入合同编号" class="set"/>&nbsp;&nbsp;

            <label>费用类型</label>&nbsp;&nbsp;
            <input type="text" placeholder="输入合同名、客户名" class="set"/>&nbsp;&nbsp;

            <label>是否欠款</label>&nbsp;&nbsp;
            <select name="cr" class="set">
                <option value="">------请选择------</option>
                <option value="1">是</option>
                <option value="2">否</option>
            </select>&nbsp;&nbsp;
            <label>生效日期</label>&nbsp;&nbsp;
            <input type="date" placeholder="请选择申请时间" class="set" style="line-height: normal;"/>&nbsp;&nbsp;
            <button type="button" class="btn" style="background-color: #008cee;color: #fff">搜索</button>
            <button type="reset" class="btn" style="background-color: #008cee;color: #fff">重置</button>
        </form>
        <div class="table-responsive htxq" style="margin-top:15px;">
            <table class="table table-bordered">
                <caption style="    text-align: left;font-weight:700;margin-bottom:10px;">合同列表</caption>
                <thead>
                <tr>
                    <td>合同编号</td>
                    <td>合同金额</td>
                    <td>收款</td>
                    <td>欠款</td>
                    <td>开票</td>
                    <td>欠票</td>
                    <td>购货单位</td>
                    <td>客户名称</td>
                    <td>客户经办人</td>
                    <td>我方经办人</td>
                    <td>生效日期</td>
                    <td>部门审核</td>
                    <td>财务审核</td>
                    <td>操作</td>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>CDSW-2016</td>
                    <td>50000</td>
                    <td>30000</td>
                    <td>20000</td>
                    <td>1</td>
                    <td>1</td>
                    <td>大唐混凝土公司</td>
                    <td>唐三藏</td>
                    <td>悟空</td>
                    <td>八戒</td>
                    <td>2016.11.11</td>
                    <td>已审核</td>
                    <td>待审核</td>
                    <td style=" color:blue;cursor: pointer;" class="xq">
                             <a href="htxq.jsp"><span class="left"><button class="btn"> 详情</button></span></a>
                            <a href="htxqxg.jsp"><span class="right"><button class="btn btn-info" style="color: #ffffff" >修改</button></span></a>
                    </td>
                </tr>
                <tr>
                    <td>CDSW-2016</td>
                    <td>50000</td>
                    <td>30000</td>
                    <td>20000</td>
                    <td>1</td>
                    <td>1</td>
                    <td>大唐混凝土公司</td>
                    <td>唐三藏</td>
                    <td>悟空</td>
                    <td>八戒</td>
                    <td>2016.11.11</td>
                    <td>已审核</td>
                    <td>待审核</td>
                    <td style=" color:blue;cursor: pointer;" class="xq"><a href="htxq.jsp"><span class="left"><button class="btn"> 详情</button></span></a><a href="htxqxg.jsp"><span class="right"><button class="btn btn-info" style="color: #ffffff" >修改</button></span></a></td>
                </tr>
                <tr>
                    <td>CDSW-2016</td>
                    <td>50000</td>
                    <td>30000</td>
                    <td>20000</td>
                    <td>1</td>
                    <td>1</td>
                    <td>大唐混凝土公司</td>
                    <td>唐三藏</td>
                    <td>悟空</td>
                    <td>八戒</td>
                    <td>2016.11.11</td>
                    <td>已审核</td>
                    <td>待审核</td>
                    <td style=" color:blue;cursor: pointer;" class="xq"><a href="htxq.jsp"><span class="left"><button class="btn"> 详情</button></span></a><a href="htxqxg.jsp"><span class="right"><button class="btn btn-info" style="color: #ffffff" >修改</button></span></a></td>
                </tr>
                 <tr>
                    <td>CDSW-2016</td>
                    <td>50000</td>
                    <td>30000</td>
                    <td>20000</td>
                    <td>1</td>
                    <td>1</td>
                    <td>大唐混凝土公司</td>
                    <td>唐三藏</td>
                    <td>悟空</td>
                    <td>八戒</td>
                    <td>2016.11.11</td>
                    <td>已审核</td>
                    <td>待审核</td>
                    <td style=" color:blue;cursor: pointer;" class="xq">
                             <a href="htxq.jsp"><span class="left"><button class="btn"> 详情</button></span></a>
                            <a href="htxqxg.jsp"><span class="right"><button class="btn btn-info" style="color: #ffffff" >修改</button></span></a>
                    </td>
                </tr>
                <tr>
                    <td>CDSW-2016</td>
                    <td>50000</td>
                    <td>30000</td>
                    <td>20000</td>
                    <td>1</td>
                    <td>1</td>
                    <td>大唐混凝土公司</td>
                    <td>唐三藏</td>
                    <td>悟空</td>
                    <td>八戒</td>
                    <td>2016.11.11</td>
                    <td>已审核</td>
                    <td>待审核</td>
                    <td style=" color:blue;cursor: pointer;" class="xq"><a href="htxq.jsp"><span class="left"><button class="btn"> 详情</button></span></a><a href="htxqxg.jsp"><span class="right"><button class="btn btn-info" style="color: #ffffff" >修改</button></span></a></td>
                </tr>
                <tr>
                    <td>CDSW-2016</td>
                    <td>50000</td>
                    <td>30000</td>
                    <td>20000</td>
                    <td>1</td>
                    <td>1</td>
                    <td>大唐混凝土公司</td>
                    <td>唐三藏</td>
                    <td>悟空</td>
                    <td>八戒</td>
                    <td>2016.11.11</td>
                    <td>已审核</td>
                    <td>待审核</td>
                    <td style=" color:blue;cursor: pointer;" class="xq"><a href="htxq.jsp"><span class="left"><button class="btn"> 详情</button></span></a><a href="htxqxg.jsp"><span class="right"><button class="btn btn-info" style="color: #ffffff" >修改</button></span></a></td>
                </tr>
                 <tr>
                    <td>CDSW-2016</td>
                    <td>50000</td>
                    <td>30000</td>
                    <td>20000</td>
                    <td>1</td>
                    <td>1</td>
                    <td>大唐混凝土公司</td>
                    <td>唐三藏</td>
                    <td>悟空</td>
                    <td>八戒</td>
                    <td>2016.11.11</td>
                    <td>已审核</td>
                    <td>待审核</td>
                    <td style=" color:blue;cursor: pointer;" class="xq">
                             <a href="htxq.jsp"><span class="left"><button class="btn"> 详情</button></span></a>
                            <a href="htxqxg.jsp"><span class="right"><button class="btn btn-info" style="color: #ffffff" >修改</button></span></a>
                    </td>
                </tr>
                <tr>
                    <td>CDSW-2016</td>
                    <td>50000</td>
                    <td>30000</td>
                    <td>20000</td>
                    <td>1</td>
                    <td>1</td>
                    <td>大唐混凝土公司</td>
                    <td>唐三藏</td>
                    <td>悟空</td>
                    <td>八戒</td>
                    <td>2016.11.11</td>
                    <td>已审核</td>
                    <td>待审核</td>
                    <td style=" color:blue;cursor: pointer;" class="xq"><a href="htxq.jsp"><span class="left"><button class="btn"> 详情</button></span></a><a href="htxqxg.jsp"><span class="right"><button class="btn btn-info" style="color: #ffffff" >修改</button></span></a></td>
                </tr>
                <tr>
                    <td>CDSW-2016</td>
                    <td>50000</td>
                    <td>30000</td>
                    <td>20000</td>
                    <td>1</td>
                    <td>1</td>
                    <td>大唐混凝土公司</td>
                    <td>唐三藏</td>
                    <td>悟空</td>
                    <td>八戒</td>
                    <td>2016.11.11</td>
                    <td>已审核</td>
                    <td>待审核</td>
                    <td style=" color:blue;cursor: pointer;" class="xq"><a href="htxq.jsp"><span class="left"><button class="btn"> 详情</button></span></a><a href="htxqxg.jsp"><span class="right"><button class="btn btn-info" style="color: #ffffff" >修改</button></span></a></td>
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

<!-- <a id="btn1" href="javascript:void(0)" >功能列表</a> -->
<!-- <a  id="btn2" href='swindex.html'>返回首页</a> -->
<script src="js/app.js"></script>
</body>
</html>