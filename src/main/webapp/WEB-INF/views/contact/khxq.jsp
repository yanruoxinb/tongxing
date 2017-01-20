<!DOCTYPE html>
<html lang="en">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/css/tq.css">
    <link rel="stylesheet" href="/css/index.css"/>
        <link rel="stylesheet" href="/css/tqcss.css"/>
    <link rel="stylesheet" href="/css/change_style.css"/>
    <link rel="stylesheet" href="/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="/text/css" href="assets/bootstrap/css/font-awesome.min.css"/>
    <%--<script src="/js/bootstrap1.js"></script>--%>
    <jsp:include page="../public/lib.jsp"></jsp:include>
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
    <img src="/image/2.png" alt="">
</div>
<div class="main-container container-fluid" class="left" style="display:inline-block;    padding-left: 0;">
    <img src="/image/1.png" alt="" style="width:230px;    height: 100%;">
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
                <h3 class="baoxiao" style="text-align: center;position: relative;right: 60px;">客户详情</h3>
            </legend>
                <form class="form-horizontal" role="form">
                    <div class="row setLabelStyle">
                        <div class="col-sm-4 col-sm-offset-2">
                            <div class="form-group">
                                <label class="col-sm-4 control-label">客户名称:</label>
                                <div class="col-sm-8 khbz">
                                    <input type="hidden" id="id" name="id" value="${customer.id}" />
                                    <span>${customer.customerName}</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">客户性质:</label>
                                <div class="col-sm-8 khbz">
                                    <span>${customer.customerProperty}</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label padright">状态:</label>
                                <div class="col-sm-8 khbz">
                                    <span>${customer.status}</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label padright">来源:</label>
                                <div class="col-sm-8 khbz">
                                    <span>${customer.source}</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label padright">省市:</label>
                                <div class="col-sm-8 khbz">
                                    <span>${customer.province}</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label padright">县区:</label>
                                <div class="col-sm-8 khbz">
                                    <span>${customer.county}</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 col-sm-offset-1">
                            <div class="form-group">
                                <label class="col-sm-4 control-label">客户等级:</label>
                                <div class="col-sm-8 khbz">
                                    <span>${customer.level}</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">主要业务</label>
                                <div class="col-sm-8 khbz">
                                    <span>${customer.mainBusiness}</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">上属公司:</label>
                                <div class="col-sm-8 khbz">
                                    <span>${customer.superiorBelong}</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">企业性质:</label>
                                <div class="col-sm-8 khbz">
                                    <span>${customer.enterpriseProperty}</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">详细地址:</label>
                                <div class="col-sm-8 khbz">
                                    <span>${customer.address}</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label padright">备注:</label>
                                <div class="col-sm-8 khbz">
                                    <span>${customer.remark}</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
        </fieldset>
    </div>
 

    <div class="section" id="lxr_xz_restore">
  <div class="lxr_xz_restore">
     <button type="button" class="btn   new_restorelxr" style="margin:10px 15px;float:right;color:#fff;background-color:#008cee;   cursor: pointer;" id="but">保存</button>
      <button type="button" class="btn   new_lxr" style="margin:10px 15px;float:right;color:#fff;background-color:#008cee;   cursor: pointer;" id="new_lxr">新增</button>
  </div>
     <div style="text-align:center;">
          <h3 class="baoxiao" style="display:inline-block;margin:20px 0 10px 0;">联系人信息</h3>
     </div>
    
        <div class="row col-sm-8   col-xs-offset-2" style="text-align: center">
            <div class="table-responsive" style="margin:15px 0; " id="contact"></div>
        </div>
    </div>


    <div class="modal fade" id="edit">
        <div class="modal-dialog">
            <div class="modal-content wtt" style="padding:18px 0 64px 0;text-align: center; width: 500px;">
                <fieldset>
                    <legend><h3 style="color: #008CEE">修改联系人信息</h3></legend>
                    <div style="position: relative;left: -60px;">
                        <div class="col-sm-12" style="padding-top: 20px;">
                            <label class="col-sm-3 col-sm-offset-3">名称:</label>
                            <div class="col-sm-5" style="padding-left: 25px;">
                                <input type="text" value="张三" name="model_contactName">
                            </div>
                        </div>
                        <div class="col-sm-12" style="padding-top: 20px;">
                            <label class="col-sm-3 col-sm-offset-3">电话:</label>
                            <div class="col-sm-5 " style="padding-left: 25px;">
                                <input type="text" value="18829206371" name="model_phone">
                            </div>
                        </div>
                        <div class="col-sm-12" style="padding-top: 20px;">
                            <label class="col-sm-3 col-sm-offset-3">部门:</label>
                            <div class="col-sm-5" style="padding-left: 25px;">
                                <input type="text" value="管理部" name="model_dept">
                            </div>
                        </div>
                        <div class="col-sm-12" style="padding-top: 20px;">
                            <label class="col-sm-3 col-sm-offset-3">职位:</label>
                            <div class="col-sm-5" style="padding-left: 25px;"><input type="text" value="主管"
                                                                                     name="model_position">
                            </div>
                        </div>
                        <div class="col-sm-12" style="padding-top: 20px;">
                            <label class="col-sm-3 col-sm-offset-3">微信号:</label>
                            <div class="col-sm-5" style="padding-left: 25px;"><input type="text"
                                                                                     value="you_are_beautiful"
                                                                                     name="model_weixin">
                            </div>
                        </div>
                        <div class="col-sm-12" style="padding-top: 20px;">
                            <label class="col-sm-3 col-sm-offset-3">QQ号:</label>
                            <div class="col-sm-5" style="padding-left: 25px;"><input type="text" value="163527389"
                                                                                     name="model_qq">
                            </div>
                        </div>
                        <div style="text-align: center">
                            <button class="btn btn-info"
                                    style="margin-top: 25px;padding: 6px 46px;position: relative;left:42px;"
                                    data-dismiss="modal" id="save_contact">确认
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
<script>
    //初始化方法
    $(function(){
        initContact();
    });

    function initContact() {
        callSapiServer("/contact/lxr",function(data){
            listLxr(data);
        },"GET");
    }

    $("#new_lxr").click(function(){
        //console.log("ssssssssss");
        var tr = $('<tr class="new_tr">' +
                '<td style="text-align: center;"></td>' +
                '<td style="text-align: center;"><input name="contactName" type="text" style="width: 80px"></a></td>' +
                '<td style="text-align: center;"><a href="javascript:void(0);"><input name="phone" type="text" style="width: 80px"></a></td>' +
                '<td style="text-align: center;"><a href="javascript:void(0);"><input name="dept" type="text" style="width: 80px"></a></td>' +
                '<td style="text-align: center;"><a href="javascript:void(0);"><input name="position" type="text" style="width: 80px"></a></td>' +
                '<td style="text-align: center;"><a href="javascript:void(0);"><input name="weixin" type="text" style="width: 80px"></a></td>' +
                '<td style="text-align: center;"><a href="javascript:void(0);"><input name="qq" type="text" style="width: 80px"></a></td>' +
                '<td style="text-align: center;"><button name="delete_new" class="btn btn-danger delete_lxr1">删除</button></td></tr>');
        $(tr).find("button[name='delete_new']").click(function(){
            $(this).parents("tr").remove();
        });
        $("#contact tbody").append(tr);
    });



    function listLxr(data){
        //列名初始化
        var head = ["选择","姓名","电话","部门","职位","微信号","QQ","操作"];
        tab_jsonTable($("#contact"), data.result, head,
                function (td, row, col, content) {
                    $(td).css("text-align", "center");//添加td的样式
                    //初始化每一行的数据
                    switch (col) {
                        case 0:
                            return "<input name='id' type='checkbox' value='"+content.id+"'/>";
                        case 1:
                            return nullToString(content.contactName) + "<input name='contactName' type='hidden' value='"+content.id+"'>";
                        case 2:
                            return nullToString(content.phone)+ "<input name='phone' type='hidden' value='"+content.id+"'>";
                        case 3:
                            return nullToString(content.position)+ "<input name='position' type='hidden' value='"+content.id+"'>";
                        case 4:
                            return nullToString(content.dept)+ "<input name='dept' type='hidden' value='"+content.id+"'>";
                        case 5:
                            return nullToString(content.weixin)+ "<input name='weixin' type='hidden' value='"+content.id+"'>";
                        case 6:
                            return nullToString(content.qq)+ "<input name='qq' type='hidden' value='"+content.id+"'>";
                        case 7:
                            var html = '<button name="update" class="btn btn-info "  data-target="#edit" data-toggle="modal">修改</button>&nbsp;<button name="delete" class="btn btn-danger delete_lxr1">删除</button>';
                            return $(html);
                        default :
                            return null;
                    }
                }, function (table) {
                    //设置table的样式
                    $(table).addClass("table table-striped table-hover table-bordered");
                    $(table).attr("border","1");
                    //通过检索table里面所有button赋值，当button的name为delete时，为它执行删除操作
                    $(table).find("button[name='delete']").click(function(){
                        var flag = confirm("您确定删除该元数据吗？一旦删除，将无法恢复！");
                        var tr = $(this).parents("tr");
                        if(flag) {
                            //检索当前行中，name为id的input
                            var id = $(this).parents("tr").find("input[name='id']").val();
                            //参数列表
                            var json = {
                                id : id
                            };
                            //请求后台
                            callSapiServer("/contact/delete",function(data){
                                //成功后，执行此回调函数
                                alert(data.message);
                                if(data.code == 200) {
                                    //如果后台删除成功，直接删除当前行，不需要再请求后台，减少后台压力
                                    $(tr).remove();
                                }
                            },"POST",json);
                        }
                    });
                    $(table).find("button[name='update']").click(function(){
                        var tr = $(this).parents("tr");
                        var json = formToJson(tr);
                        jsonToForm("#edit",json,true,"model_");
                    });
                })

        $("#but").click(function(){
            var newTrs = $("tr[class='new_tr']");
            var lxrs = [];
            var cusId = $("#id").val();
            newTrs.each(function(i){
                var obj = formToJson(this);
                obj.customerId = cusId;
                lxrs.push(obj);
            });
            var json = {
                lxrs: JSON.stringify(lxrs)
            };
            var url = "/contact/batchInsert";
            callSapiServer(url,function(data){
                if(data.code = 200){
                    initContact();
                }else{
                    alert(data.message)
                }
            },"POST",json);


           /* var json = {
                contactName : contactName
            }*/

        });

        $("#save_contact").click(function(){
            var json = formToJson("#edit","model_");
            console.log(json);
        });
    }
</script>
