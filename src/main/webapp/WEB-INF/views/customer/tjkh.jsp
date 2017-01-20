<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/css/tq.css">
    <link rel="stylesheet" href="/css/index.css"/>
    <link rel="stylesheet" href="/css/change_style.css"/>
    <link rel="stylesheet" href="/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="/assets/bootstrap/css/font-awesome.min.css" />
    <script src="/js/jquery-1.11.3.min.js"></script>
    <jsp:include page="../public/lib.jsp"></jsp:include>
    <title>客户详情</title>
    <style>
.padright{
    padding-right: 47px;
}
.padding{
    margin:0 30px;
}

    </style>
</head>
<body>
<!------------------------------客户详情---------------------------------->
<div class="main-container container-fluid" class="top"style="padding-left: 0;">
<img src="/image/2.png" alt="">
</div>
<div class="main-container container-fluid" class="left"style="display:inline-block;    padding-left: 0;">
<img src="/image/1.png" alt=""style="width:230px;    height: 100%;">
</div>

<div style="height200px;width:350px;font-size:26px;font-family:'华文行楷','Arial','Microsoft YaHei','黑体','宋体','sans-serif';margin:0 auto; border:1px solid #008cee;background-color:#008cee;color:#fff;z-index:999;display:inline-block;line-height:50px;text-align:center;border-radius:20px;position:absolute;right: 42%;top: 480px;display:none;" class="noticeCon">
    操作成功
</div>

<div class="contaner"  id="page7"style="width:86%;float:right;padding:0 35px;border:1px solid #ddd">
<a id="btn1" href="swindex.html"style="left: -30px;padding: 17px 10px;float: left;position: relative;" > 首页 / </a>
    <a class="btn1" href="javascript:void(0)"style="left: -30px;padding: 17px 5px;float: left;position: relative;" > 功能列表</a>
    <div class="section">
        <h3 class="baoxiao">客户详情</h3>
        <hr/>
        <form class="form-horizontal" role="form" id="customer">
            <div class="row">
                <div class="col-sm-4 col-sm-offset-2">
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-3 control-label">客户名称</label>
                        <div class="col-sm-4">
                            <input type="hidden" id="id" name="id" value="${customer.id}">
                            <input type="email" class="form-control width" id="inputEmail3" name="customerName"  value="${customer.customerName}" placeholder="请输入客户名">
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                    <div class="form-group">
                        <label  class="col-sm-3 control-label">客户性质</label>
                        <div class="col-sm-4">
                            <select class="form-control" name="customerProperty">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                            </select>
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                    <div class="form-group">
                        <label  class="col-sm-3 control-label padright">状态</label>
                        <div class="col-sm-4">
                            <select class="form-control" name="status">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                            </select>
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-3 control-label padright">来源</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="inputEmail31" name="source" placeholder="请输入来源">
                        </div>
                    </div>
                    <div class="form-group">
                        <label  class="col-sm-3 control-label padright">省市</label>
                        <div class="col-sm-4">
                            <select class="form-control" name="province">
                                <option value="1">陕西省</option>
                                <option value="2">山西省</option>
                                <option value="3">湖南省</option>
                                <option value="4">甘肃省</option>
                                <option value="5">湖北省</option>
                            </select>
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                    <div class="form-group">
                        <label  class="col-sm-3 control-label padright">县区</label>
                        <div class="col-sm-4">
                            <select class="form-control" name="county">
                                <option value="1">蓝田县</option>
                                <option value="2">扶风县</option>
                                <option value="3">泾阳县</option>
                                <option value="4">乾县</option>
                                <option value="5">户县</option>
                            </select>
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-3 control-label">固定电话</label>
                        <div class="col-sm-4">
                            <input type="tel" class="form-control" id="inputEmail" name="fixedPhone" placeholder="请输入固定电话">
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                </div>
                <div class="col-sm-4 col-sm-offset-2">
                    <div class="form-group">
                        <label  class="col-sm-3 control-label">客户等级</label>
                        <div class="col-sm-4">
                            <select class="form-control" name="level">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                            </select>
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-3 control-label">主要业务</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="11" name="mainBusiness" placeholder="请输入主要业务">
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-3 control-label">上属公司</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="22" name="superiorBelong" placeholder="请输入上属公司">
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                    <div class="form-group">
                        <label  class="col-sm-3 control-label">企业性质</label>
                        <div class="col-sm-4">
                            <select class="form-control" name="enterpriseProperty">
                                <option value="1">私企</option>
                                <option value="2">国企</option>
                                <option value="3">其他</option>
                            </select>
                        </div>
                        <i class="items pull-left">*</i>
                    </div>
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-3 control-label">详细地址</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="33" name="address" placeholder="请输入详细地址">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-3 control-label padright">备注</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="44" name="remark" placeholder="">
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group">
                       <!--  <div style="text-align:center;display:inline-block;width:50%;float:left;"> -->
                            <a><button type="button" class="btn padding" style="background-color: #008cee;color: #fff" id="but">确定</button></a>
                       <!--  </div> -->
                       <!--  <div style="text-align:center;display:inline-block;width:50%;float:right;"> -->
                            <button type="reset" class="btn" style="background-color: #008cee;color: #fff">重置</button>
                       <!--  </div> -->
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<div class="olct" style="position: fixed; top: 69px;    right: -250px;">
<div class="clearfloat">
  <div class="olct_left"></div>  
  <div class="olct_right">    
    <div class="olct_box">
      <div class="olct_top" style=" z-index:2;   display: inline-block;width: 100px;position: relative;right: -130px;"><a href="javascript:void(0);"style=""><img src="image/lADOjttrRMykXQ_93_164.png" alt="" style="height: 150px; position: absolute;"></a></div>
      <div class="olct_conwrap clearfloat">
      <div class="scrollbar" style="height: 280px;"><div class="track" style="height: 280px;"><div class="thumb" style="top: 0px; height: 100.384px;"><div class="end"></div></div></div></div>
      <div class="olct_conbox">
      <div class="olct_con" style="top: 0px;">

            <div class="olct_teacher clearfloat col-lg-10"style="    position: relative; top: -19px;">
              <li class="row info col-lg-12">
                    <a id="f" href="kh.html">
                        <img src="image/客户管理.png" class="col-lg-offset-2">
                        <span class="list">客户管理</span>
                    </a>
              </li>
                <li class="row info col-lg-12">
                    <a id="a" href="lx.html">
                        <img src="image/联系人管理.png" class="col-lg-offset-2">
                        <span class="list">联系人管理</span>
                    </a>
                </li>

                <li class="row info col-lg-12">
                    <a id="c" href="ht.html">
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
                    <a id="j" href="xm.html">
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
                    <a id="e" href="yh.html">
                        <img src="image/用户管理.png" class="col-lg-offset-2">
                        <span class="list">用户管理</span>
                    </a>
                </li>
                <li class="row info col-lg-12">
                    <a href="qx.html">
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
<script>
//    $(function(){
//        var json = {
//            customerName : 1,
//            customerProperty :2,
//            status :3,
//            source :4,
//            province:5,
//            county:6,
//            fixedPhone:7,
//            level:8,
//            mainBusiness:9,
//            superiorBelong:10,
//            enterpriseProperty:12,
//            address:10,
//            remark:1
//        };
//        jsonToForm("#customer",json);
////        jsonToSelect("/user/login","#executorId",null,"id","trueName",true,false);
//    });

    $("#but").click(function(){
        var json = formToJson("#customer");
        var url = "/customer/insert";
        debugger;
        if(json.id != null && json.id != ""){
            url = "/customer/update";
        }
        callSapiServer(url,function(data){
            if(data.code = 200){
                window.location.href = ctx + "/customer/toList"
            }else{
                alert(data.message)
            }
        },"POST",json);

    });
</script>