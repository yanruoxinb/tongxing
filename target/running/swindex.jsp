<%--
  Created by IntelliJ IDEA.
  User: sw011
  Date: 2017-1-14
  Time: 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="/assets/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="/assets/bootstrap/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="/assets/bootstrap/css/weather-icons.min.css" />
    <link href="/assets/bootstrap/css/beyond.min.css" rel="stylesheet" type="text/css" />
    <link href="/assets/bootstrap/css/demo.min.css" rel="stylesheet" />
    <link href="/assets/bootstrap/css/typicons.min.css" rel="stylesheet" />
    <link href="/assets/bootstrap/css/animate.min.css" rel="stylesheet" />
    <link href="/assets/css/change_style.css" rel="stylesheet" />
    <link type="text/css" rel="stylesheet" href="http://cdn.staticfile.org/twitter-bootstrap/3.1.1/css/bootstrap.min.css"/>


    <link rel="stylesheet" href="css/index.css"/>
    <link rel="stylesheet" href="css/change_style.css"/>
    <link rel="stylesheet" href="css/tq.css"/>
    <link rel="stylesheet" href="css/tqcss.css"/>
    <link rel="stylesheet" href="css/swindex.css"/>

    <script type="text/javascript" src="/js/jquery-2.0.3.min.js" charset="UTF-8"></script>
    <script src="js/app.js"></script>

    <script type="text/javascript">var ctx = '${ctx}';</script>

    <script type="text/javascript" src="assets/jquery.js/jquery.fw.ext.js"></script>
    <script src="assets/bootstrap/js/jquery-2.0.3.min.js"></script>

    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/bootstrap/js/skins.min.js"></script>
    <script src="assets/bootstrap/js/select2/select2.js"></script>
    <!--Bootstrap Tags Input-->
    <script src="assets/bootstrap/js/tagsinput/bootstrap-tagsinput.js"></script>
    <!--Bootstrap Date Picker-->
    <script src="assets/bootstrap/js/datetime/bootstrap-datepicker.js"></script>
    <!--Bootstrap Time Picker-->
    <script src="assets/bootstrap/js/datetime/bootstrap-timepicker.js"></script>
    <!--Bootstrap Date Range Picker-->
    <script src="assets/bootstrap/js/datetime/moment.js"></script>
    <script src="assets/bootstrap/js/datetime/daterangepicker.js"></script>
    <!--Jquery Autosize-->
    <script src="assets/bootstrap/js/textarea/jquery.autosize.js"></script>
    <!--Fuelux Spinner-->
    <script src="assets/bootstrap/js/fuelux/spinner/fuelux.spinner.min.js"></script>
    <!--jQUery MiniColors-->
    <script src="assets/bootstrap/js/colorpicker/jquery.minicolors.js"></script>
    <!--jQUery Knob-->
    <script src="assets/bootstrap/js/knob/jquery.knob.js"></script>
    <!-- paginator -->
    <script src="assets/bootstrap/js/datatable/jqPaginator.js"></script>
    <!--noUiSlider-->
    <script src="assets/bootstrap/js/slider/jquery.nouislider.js"></script>
    <script type="text/javascript" src="assets/js/message.js"></script>

    <!--jQRangeSlider-->
    <script src="assets/bootstrap/js/jquery-ui-1.10.4.custom.js"></script>
    <script src="assets/bootstrap/js/slider/jQRangeSlider/jQAllRangeSliders-withRuler-min.js"></script>
    <script src="assets/bootstrap/js/laypage.js"></script>
    <script src="assets/js/zzsc.js"></script>
    <script src="assets/js/swtx.js"></script>
    <script src="assets/js/myDataGride.js"></script>
    <script type="text/javascript" src="assets/jquery-easyui-1.4.2/jquery.min.js"></script>
    <script type="text/javascript" src="assets/jquery-easyui-1.4.2/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="assets/jquery-easyui-1.4.2/locale/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="assets/easyui.js/easyui.ext.js"></script>
    <script type="text/javascript" src="assets/easyui.js/jqPaginator.js"></script>
    <link rel="stylesheet" type="text/css" href="assets/jquery-easyui-1.4.2/themes/default/easyui.css" />
    <link rel="stylesheet" type="text/css" href="assets/jquery-easyui-1.4.2/themes/icon.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/easyui.icon.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/viewer.min.css" />
    <script type="text/javascript" src="assets/js/plugin/viewer.min.js"></script>
    <script type="text/javascript" src="/js/common.js" charset="UTF-8"></script>
    <style type="text/css">

    </style>
    <script>
        $(".select p").click(function(e){
            $(".select").toggleClass('open');
            e.stopPropagation();
        });
        $(".content .select ul li").click(function(e){
            var _this=$(this);
            $(".select > p").text(_this.attr('data-value'));
            _this.addClass("Selected").siblings().removeClass("Selected");
            $(".select").removeClass("open");
            e.stopPropagation();
        });
        $(document).on('click',function(){
            $(".select").removeClass("open");
        })
    </script>
    <title>首页1</title>
</head>
<body style="padding:10px;">
<div class="main-container container-fluid" class="top"style="padding-left: 0;">
    <img src="./image/2.png" alt="">
</div>
<div class="main-container container-fluid" class="left"style="display:inline-block;    padding-left: 0;">
    <img src="./image/1.png" alt=""class="imgheight"id="leftimg">
</div>

<div style="height200px;width:350px;font-size:26px;font-family:'华文行楷','Arial','Microsoft YaHei','黑体','宋体','sans-serif';margin:0 auto; border:1px solid #008cee;background-color:#008cee;color:#fff;z-index:999;display:inline-block;line-height:50px;text-align:center;border-radius:20px;position:absolute;right: 42%;top: 480px;display:none;" class="noticeCon">
    操作成功
</div>

<div class="main-container container-fluid"style="width: 1610px;float: right; padding-left: 0;">
    <!-- 页面容器 -->
    <div class="page-container"style="background:#fff;    margin-top: 2px;    padding-right: 25px;">
        <!-- 页面内容 -->
        <div class="">
            <div class="row">
                <!-- 输入框 -->
                <jsp:include page="WEB-INF/views/layout/form.jsp"></jsp:include>
                <div class="col-md-3">
                    <jsp:include page="WEB-INF/views/user/user_index_list.jsp"></jsp:include>
                    <jsp:include page="WEB-INF/views/task/history_task.jsp"></jsp:include>

                </div>
            </div>

        </div>
        <!-- /页面内容 -->
    </div>
    <jsp:include page="WEB-INF/views/layout/menu.jsp"></jsp:include>
    <div id="zhe" style="display:none;"></div>
    <div id="ShowBolightBox1" style="display:none;"></div>
</div>
</div>


<!-- 模态框（Modal）项目管理 -->

<div class="modal fade" id="myModalxm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="margin-top: 150px;">
    <div class="modal-dialog">
        <div class="modal-content " style="padding:21px 8px;margin: 91px -48px;">
            <fieldset class="addxminfo">
                <legend style="color: #008CEE;font-size: 24px;padding-top: 10px;">添加项目信息</legend>
                <div class="col-sm-6">
                    <label class="addCustom" for="itemName">项目名称:</label>
                    <input type="text" id="itemName" name="itemName">
                </div>
                <div class="col-sm-6">
                    <label class="addCustom" for="itemCode">项目代码:</label>
                    <input type="text" id="itemCode" name="itemCode">
                </div>
                <div class="col-sm-6 setDistance">
                    <label class="addCustom" for="itemCustomerNmae">客户名称:</label>
                    <input type="text" id="itemCustomerNmae" name="itemCustomerNmae">
                </div>
                <div class="col-sm-6 setDistance">
                    <label class="addCustom" for="itemQualityAssurance">质保期状态:</label>
                    <input type="text" id="itemQualityAssurance" name="itemQualityAssurance">
                </div>
                <div class="col-sm-6 setDistance">
                    <label class="addCustom" for="itemConcact">联系人:</label>
                    <input type="text" id="itemConcact" name="itemConcact">
                </div>
                <div class="col-sm-6 setDistance">
                    <label class="addCustom" for="itemConcactTel">联系人电话:</label>
                    <input type="text" id="itemConcactTel" name="itemConcactTel">
                </div>
                <div class="col-sm-6 setDistance">
                    <label class="addCustom" for="itemCommisionPerson">调试人员:</label>
                    <input type="text" id="itemCommisionPerson" name="itemCommisionPerson">
                </div>
                <div class="col-sm-6 setDistance">
                    <label class="addCustom" for="itemState">项目状态:</label>
                    <input type="text" id="itemState" name="itemState">
                </div>
                <div class="col-sm-6 setDistance">
                    <label class="addCustom" for="itemCommissioningDate">试运行日期:</label>
                    <input type="date" id="itemCommissioningDate" name="itemCommissioningDate">
                </div>
                <div class="col-sm-6 setDistance">
                    <label class="addCustom" for="itemCommisioning">调试日期:</label>
                    <input type="date" id="itemCommisioning" name="itemCommisioning">
                </div>
                <div class="col-sm-6 setDistance">
                    <label class="addCustom" for="itemCheckDate">验收日期:</label>
                    <input type="date" id="itemCheckDate" name="itemCheckDate">
                </div>
            </fieldset>
            <div class="addkh_confirm">
                <button class="" data-dismiss="modal">提交</button>
            </div>
        </div>
    </div>
</div>

<!-- 模态框（Modal） -->
<div class="modal fade" id="myModalkh" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true" style="margin-top: 150px;">
    <div class="modal-dialog">
        <div class="modal-content " style="padding:15px 8px;margin: 0px -71px;">
            <fieldset>
                <legend style="color: #008CEE;font-size: 24px;padding-top: 10px;">添加客户信息</legend>
                <div class="col-sm-6">
                    <label class="addCustom" for="customName">客户:</label>
                    <input type="text" id="customName" name="customName">
                </div>
                <div class="col-sm-6">
                    <label class="addCustom" for="customLevel">等级:</label>
                    <select id="customLevel">
                        <option>一级</option>
                        <option>一级</option>
                        <option>一级</option>
                    </select>
                </div>
                <div class="col-sm-6 setDistance">
                    <label class="addCustom" for="customStyle">客户性质:</label>
                    <input type="text" id="customStyle" name="customStyle">
                </div>
                <div class="col-sm-6 setDistance">
                    <label class="addCustom" for="customTask">主要业务:</label>
                    <input type="text" id="customTask" name="customTask">
                </div>
                <div class="col-sm-6 setDistance">
                    <label class="addCustom" for="customState">状态:</label>
                    <input type="text" id="customState" name="customState">
                </div>
                <div class="col-sm-6 setDistance">
                    <label class="addCustom" for="customCompany">上属公司:</label>
                    <input type="text" id="customCompany" name="customCompany">
                </div>
                <div class="col-sm-6 setDistance">
                    <label class="addCustom" for="customOrigin">来源:</label>
                    <input type="text" id="customOrigin" name="customOrigin">
                </div>
                <div class="col-sm-6 setDistance">
                    <label class="addCustom" for="customCompanyStyle">企业性质:</label>
                    <input type="text" id="customCompanyStyle" name="customCompanyStyle">
                </div>
                <div class="col-sm-6 setDistance">
                    <label class="addCustom" for="customProvince">省市:</label>
                    <input type="text" id="customProvince" name="customProvince">
                </div>
                <div class="col-sm-6 setDistance">
                    <label class="addCustom" for="customCity">县区:</label>
                    <input type="text" id="customCity" name="customCity">
                </div>
                <div class="col-sm-6 setDistance">
                    <label class="addCustom" for="customAddr">详细地址:</label>
                    <input type="text" id="customAddr" name="customAddr">
                </div>
                <div class="col-sm-6 setDistance">
                    <label class="addCustom" for="customMore">备注:</label>
                    <input type="text" id="customMore" name="customMore">
                </div>
            </fieldset>
            <fieldset>
                <legend style="color: #008CEE;font-size: 24px;padding-top: 10px;">添加联系人信息</legend>
                <div class="col-sm-6">
                    <label class="addCustom" for="customContact">联系人:</label>
                    <input type="text" id="customContact" name="customContact">
                </div>
                <div class="col-sm-6">
                    <label class="addCustom" for="customTel">固定号码:</label>
                    <input type="text" id="customTel" name="customTel">
                </div>
                <div class="col-sm-6 setDistance">
                    <label class="addCustom" for="customTelMobile">联系电话:</label>
                    <input type="text" id="customTelMobile" name="customTelMobile">
                </div>
                <div class="col-sm-6 setDistance">
                    <label class="addCustom" for="customQQ">QQ:</label>
                    <input type="text" id="customQQ" name="customQQ">
                </div>
                <div class="col-sm-6 setDistance">
                    <label class="addCustom" for="customWechat">微信:</label>
                    <input type="text" id="customWechat" name="customWechat">
                </div>
                <div class="col-sm-6 setDistance">
                    <label class="addCustom" for="customFax">传真:</label>
                    <input type="text" id="customFax" name="customFax">
                </div>
                <div class="col-sm-6 setDistance">
                    <label class="addCustom" for="customDepartment">部门:</label>
                    <input type="text" id="customDepartment" name="customDepartmemt">
                </div>
                <div class="col-sm-6 setDistance">
                    <label class="addCustom" for="customWork">职位:</label>
                    <input type="text" id="customWork" name="customWork">
                </div>
            </fieldset>
            <div class="addkh_confirm">
                <button class="" data-dismiss="modal">提交</button>
            </div>
        </div>
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
                <input type="button" class="btn2 btn_confirm_cancel" value="确认" id="btn_confirm">　
                <input type="button" class="btn2 btn_confirm_cancel" value="取消" id="btn_confirm_cancel">
            </div>
        </div>
    </div>
</div>
<div id="ShowBolightBox" style="display: block; width: 1932px; height: 100%;display:none;"></div>

<script>

    $(function(){
        $(".btnpz").bind('click',function(){
            $("#pz1").show();
            if($("#jsjd1").css("display") == "block"||$("#kpsk1").css("display") == "block"){
                $("#jsjd1").hide();
                $("#kpsk1").hide();
            }
        });
        $(".btnjsjd").bind('click',function(){
            $("#jsjd1").show();
            if($("#pz1").css("display") == "block"||$("#kpsk1").css("display") == "block"){
                $("#pz1").hide();
                $("#kpsk1").hide();
            }
        });
        $(".btnkpsk").bind('click',function(){
            $("#kpsk1").show();
            if($("#jsjd1").css("display") == "block"||$("#pz1").css("display") == "block"){
                $("#pz1").hide();
                $("#jsjd1").hide();
            }
        });


        $(".Have_ht").click(function(){

            $(".btn_ht_detail").show();


            $(".btn_ht_detail1").hide();
            $(".fieldset_newht").hide();
        })
        $(".No_ht").click(function(){
            $(".fieldset").hide();
            $(".btn_ht_detail").hide();
            $("#fieldset_htinfomation").hide();


            $(".fieldset_newht").hide();
        });
        $(".New_ht").click(function(){
            $(".btn_ht_detail").hide();
            $(".btn_ht_detail1").show();

            $(".fieldset").hide();


        });

        $(".btn_ht_detail").click(function(){

            $("#fieldset_htinfomation").toggle();
        });
        $(".btn_ht_detail1").click(function(){
            $(".fieldset_newht").toggle();
        })
        $("#addxm").click(function(){
            $('#myModalxm').modal({
                keyboard: false,
            })
            $('#myModalxm').modal('show');
        });
        $("#addkh").click(function(){

            $('#myModalkh').modal('show');
        });

        $("#btn1").bind('click',function(){
            var w= $('#z_cen').width();
            if(w==0){
                $('#zhe').show()
                $('#z_cen').animate({width:'490'},500);
            }else{
                $('#zhe').hide()
                $('#z_cen').animate({width:'0'},500);
            }
        });
        $("#zhe").bind('click',function(){
            $('#zhe').hide()
            $('#z_cen').animate({width:'0'},500);
        });
    });
    $('#c_date').bind('click',function(){
        $(".c_li").addClass('easyui-datetimebox')
    })
    $("#ticket-itemRecord").append('<li class="ticket-item"><div class="row"><div class="ticket-type  col-lg-2 col-sm-6 col-xs-12"><span class="divider hidden-xs"></span><span class="type">Info</span></div></div></li>');
    $("#ticket-itemRecord").append('<li class="ticket-item"><div class="row"><div class="ticket-type  col-lg-2 col-sm-6 col-xs-12"><span class="divider hidden-xs"></span><span class="type">Info</span></div></div></li>');
    //	$(".arcivePart").css("display","none");

    //--jQuery MiniColors--
    $('.colorpicker').each(function () {
        $(this).minicolors({
            control: $(this).attr('data-control') || 'hue',
            defaultValue: $(this).attr('data-defaultValue') || '',
            inline: $(this).attr('data-inline') === 'true',
            letterCase: $(this).attr('data-letterCase') || 'lowercase',
            opacity: $(this).attr('data-opacity'),
            position: $(this).attr('data-position') || 'bottom left',
            change: function (hex, opacity) {
                if (!hex) return;
                if (opacity) hex += ', ' + opacity;
                try {
                    console.log(hex);
                } catch (e) { }
            },
            theme: 'bootstrap'
        });
    });

    // 重置功能
    $("#operateMode_reset").click(function() {
        $("#form").form("reset");
    });
</script>

</body>
</html>
