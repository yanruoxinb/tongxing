/**
 * Created by sw001 on 2016-7-26.
 */

$(document).ready(function () {
    $("#ShowBolightBox2").click(function () {
        $("#ShowBolightBox2").fadeOut();
        $(".img_bigimg").hide();
    });

    $(".img_cancel").click(function () {
        $("#ShowBolightBox2").fadeOut();
        $(".img_bigimg").hide();
    });

    $(document).ready(function () {

        $("#task_list").delegate('li', 'click', function () {

            $("#taskNum").val("G201641396");
            $("#createdPerson").val("王蒙");
            $("#sendTime").val("2016-12-15 15:30:30");
            $("#taskName").val("上海智仪");
            $("#id").val("上海智仪");
            $("#executorId").val("张亚军");
            $("#province").val("/");
            $("#country").val("上海市");
            $("#customerId").val("大唐混凝土有限公司");
            $("#faultCategory").val("安装调试");
            $("#planArriveTime").val("2016-12-15 15:40:30");
            $("#planFinishTime").val("2016-12-18 15:40:30");
            $("#taskType").val("现场服务");
            $("#level").val("二级");
            $(".textbox").find("input").eq(1).css({
                'type': 'text!important',
                'value': '二级',
            });
            $(".textbox-value").css({
                'type': 'text!important',
                'value': '一级',
            });
            $("#transportation").val("其他");
            $("#contactName").val("孙站长");
            $("#position").val("生产部部长");
            $("#fixedPhone").val("13891996968");
            $("#contactPhone").val("13891996968");
            $("#charge").val("5000");
            $("#workHours").val("8");
            $("#loopTime").val("2");
            $("#workHours1").val("16");
            $("#liveSituation").val("现场服务");
            $("#visiteRecord").val("客户走访");
            $("#processResult").val("客户新弄了一条拼装120站，让过去看看能不能把系统改一下，需要等站弄好后在根据配置报价。");
            $("#processResult1").val("客户实力雄厚");
            $("#liveSituation").val("跟踪2条郑州水工生产线改造和砼钱");
            $("#taskChecked").val("砼钱跟踪");

        });


        //  $("#operateMode_new").click(function () {
        //
        //  $("#transportation").val("其他");
        //  $("#contactName").val("孙站长");
        //  $("#position").val("生产部部长");
        //  $("#fixedPhone").val("13891996968");
        //  $("#contactPhone").val("13891996968");
        //  $("#charge").val("5000");
        //   $("#workHours").val("8");
        //  $("#loopTime").val("2");
        //  $("#workHours1").val("16");
        //  $("#liveSituation").val("现场服务");
        //  $("#visiteRecord").val("客户走访");
        //  $("#processResult").val("客户新弄了一条拼装120站，让过去看看能不能把系统改一下，需要等站弄好后在根据配置报价。");
        //  $("#processResult1").val("客户实力雄厚");
        //  $("#liveSituation").val("跟踪2条郑州水工生产线改造和砼钱");
        //  $("#taskChecked").val("砼钱跟踪");
        //
        //});
        $("#operateMode_new").click(function () {
            $("#task_infom input").val("");
            $("#task_infom input").attr("disabled", "false");

        });

        $("#disPass").click(function () {
            if (confirm('您确认要进行该操作吗？')) {
                $("#leftimg").css({"height": "1318"});
                window.location.href = "swindex_sh.html";
            }
        });
        $("#pass_GD").click(function () {
            $("#dvMsgBox").show();
            $("#ShowBolightBox").show();
        });
        $("#pass_SH").click(function () {
            $("#dvMsgBox").show();
            $("#ShowBolightBox").show();
        });
        $("#disPass_SH").click(function () {
            $("#dvMsgBox").hide();
            $("#ShowBolightBox").hide();
        });

    });
    $("#pass_SH_submit").click(function () {
        $(".dvMsgBox_submit_sh").show();
        $(".ShowBolightBox_submit_sh").show();

    });

    $('#bnt').bind('click', function () {

        if ($('#b_table').css('display') == 'none') {
            $("#leftimg").css({"height": "1953"});
            $('#b_table').show(500);
        } else {
            $("#leftimg").css({"height": "1318"});
            $('#b_table').hide(500);
        }
    });

    //$("#pass").click(function () {
    //
    //    if (confirm('您确认要进行该操作吗？')) {
    //        // 如果确定，你这里的代码就开始执行。
    //
    //        $("#leftimg").css({"height": "1318"});
    //        $(".sh_info").hide();
    //        $(".sh_info_suc").show();
    //        window.location.href = "swindex_sh.html";
    //    }
    //});
    $('#bnt').bind('click', function () {

        if ($('#b_table').css('display') == 'none') {
            $("#leftimg").css({"height": "1953"});
            $('#b_table').show(500);
        } else {
            $("#leftimg").css({"height": "1318"});
            $('#b_table').hide(500);
        }
    });

    $('.yes').bind('click', function () {
        if ($('.det').css('display') == 'none') {
            $('.det').show(500);
            $('.yes').css({
                'color': '#333',
                'text-decoration': 'none'
            })
        } else {
            $('.det').hide(500);
            $('.yes').css({
                'color': '#008cee',
                'text-decoration': 'none'
            })
        }
    })

    $('.olct_left').bind('click', function () {
        $('#zhe').show();
        $('.olct_footer').animate({right: 0}, 500);
        $('.olct').animate({'right': 0}, 500);
    })
    $('#a').click(function () {
        $('#page4').show();
        $('#form').hide();
        $('#zhe').hide();
    })

});
$(function () {
    $(".btn1").bind('click', function () {
        $('#zhe').show();
        $('.olct').show();
        $('.olct_footer').animate({right: 0}, 500);
        $('.olct').animate({'right': 0}, 500);
    });

    $(".btnpz").bind('click', function () {
        $("#pz").show();
        if ($("#jsjd").css("display") == "block" || $("#kpsk").css("display") == "block") {
            $("#jsjd").hide();
            $("#kpsk").hide();
        }
    });
    $(".btnjsjd").bind('click', function () {
        $("#jsjd").show();
        if ($("#pz").css("display") == "block" || $("#kpsk").css("display") == "block") {
            $("#pz").hide();
            $("#kpsk").hide();
        }
    });
    $(".btnkpsk").bind('click', function () {
        $("#kpsk").show();
        if ($("#jsjd").css("display") == "block" || $("#pz").css("display") == "block") {
            $("#pz").hide();
            $("#jsjd").hide();
        }
    });


    $("#btn1").bind('click', function () {
        var w = $('#z_cen').width();
        if (w == 0) {
            $('#zhe').show()
            $('#z_cen').animate({width: '490'}, 500);
        } else {
            $('#zhe').hide()
            $('#z_cen').animate({width: '0'}, 500);
        }
    });
    $("#zhe").bind('click', function () {
        $('#zhe').hide()
        $('.olct').animate({right: '-250'}, 500);
        $('.olct_footer').css({'right': -36});
    });
    $(".btngroup").delegate('button', 'click', function () {
        $(this).addClass("btnstyle").siblings().removeClass("btnstyle");
    })

    $(".xg_moneyRecor").click(function () {
        $(".moneyRecor").hide();
        $("#xgskjl").show();
    })


    $(".btn_ht_detail").click(function () {
        $("#fieldset").show();
    });
    $("#operateMode_release").click(function () {
        $("#dvMsgBox").show();
        $("#ShowBolightBox").show();

    });
    $("#operateMode_release1").click(function () {
        $("#dvMsgBox").show();
        $("#ShowBolightBox").show();

    });

//$("#new_htbd").click(function(){
//$("#htbd_list").append(
//  "<tr> <td><input type='text'  value=''></td><td><input type='text'  value=''></td><td><input type='text'  value=''></td><td><input type='text' value=''></td><td><input type='text'  value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><button type='button' class='btn  btn-danger btnpz btnstyle delete_htbd' style='float:right;color:#fff;background-color:#008cee;' id='delete_htbd'>删除</button></td></tr>"
//                    );
//   });
    $(".btn_ht_detail").click(function () {
        $("#fieldset").show();
    });
    $("#operateMode_release").click(function () {
        $("#dvMsgBox").show();
        $("#ShowBolightBox").show();
    });
    $("#operateMode_release1").click(function () {
        $("#dvMsgBox").show();
        $("#ShowBolightBox").show();
    });
    $("#pass_hf").click(function () {
        $("#dvMsgBox").show();
        $("#ShowBolightBox").show();
    });

    $("#operateMode_new2").click(function () {
        $("#dvMsgBox").show();
        $("#ShowBolightBox").show();
        $(".noticeCon").show(200);
        $(".noticeCon").slideUp(500);
        $(".noticeCon").fadeOut(500);

    });
    $("#new_htbd").click(function () {
        $("#htbd_list").append(
            "<tr> <td><input type='text'  value=''></td><td><input type='text'  value=''></td><td><input type='text'  value=''></td><td><input type='text' value=''></td><td><input type='text'  value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><button type='button' class='btn  btn-danger btnpz btnstyle delete_htbd' style='float:right;color:#fff;background-color:#008cee;' id='delete_htbd'>删除</button></td></tr>"
        );
    });


    $("#btn_confirm_delehtbd").click(function () {
        $(".dvMsgBox").hide();
        $(".ShowBolightBox").hide();
        var rs = $(".delete_htbd");
        var tab = $("#htbd_bable");
        var rIndex = rs.parent().parent();
        if (rIndex.hasClass("aaa")) {
            $("#htbd_list").children(".aaa").remove();
        }
        $(".noticeCon").show(200);
        $(".noticeCon").slideUp(500);
        $(".noticeCon").fadeOut(500);
    });


});


$("#disPass_SH").click(function () {
    $("#dvMsgBox").show();
    $("#ShowBolightBox").show();
});
$("#pass_hf").click(function () {
    $("#dvMsgBox").show();
    $("#ShowBolightBox").show();
})


$("#htxm_list").delegate("tr button.delete_htxm", "click", function () {
    $(".dvMsgBox_htxm").show();
    $(".ShowBolightBox_htxm").show();
    $(this).parent().parent().addClass("aaa").siblings().removeClass("aaa");


});

$("#btn_confirm_delehtxm").click(function () {
    $(".dvMsgBox_htxm").hide();
    $(".ShowBolightBox_htxm").hide();
    var rs = $(".delete_htxm");
    var tab = $("#htxm_bable");
    // console.log(rs);
    var rIndex = rs.parent().parent();
    // console.log(rIndex);
    if (rIndex.hasClass("aaa")) {
        $("#htxm_list").children(".aaa").remove();
    }
    $(".noticeCon").show(200);
    $(".noticeCon").slideUp(500);
    $(".noticeCon").fadeOut(500);
});

$("#htbd_list").delegate("tr button.delete_htbd", "click", function () {
    $(".dvMsgBox").show();
    $(".ShowBolightBox").show();
    $(this).parent().parent().addClass("aaa").siblings().removeClass("aaa");
    $("#fieldset2_xm").show();
});


$("#htpz_list").delegate("tr button.delete_htpz", "click", function () {
    $(".dvMsgBox_htpz").show();
    $(".ShowBolightBox_htpz").show();
    $(this).parent().parent().addClass("aaa").siblings().removeClass("aaa");
});

$("#btn_confirm_delehtbd").click(function () {
    $(".dvMsgBox").hide();
    $(".ShowBolightBox").hide();
    var rs = $(".delete_htbd");
    var tab = $("#htbd_bable");
    // console.log(rs);
    var rIndex = rs.parent().parent();
    // console.log(rIndex);
    if (rIndex.hasClass("aaa")) {
        $("#htbd_list").children(".aaa").remove();
    }
    $(".noticeCon").show(200);
    $(".noticeCon").slideUp(500);
    $(".noticeCon").fadeOut(500);
});

$("#btn_confirm").click(function () {
    $("#dvMsgBox").hide();
    $("#ShowBolightBox").hide();
    $(".noticeCon").show(200);
    $(".noticeCon").fadeOut(2000);
});
$("#btn_confirm_cancel").click(function () {
    $("#dvMsgBox").hide();
    $("#ShowBolightBox").hide();
});
$("#btn_confirm_hf").click(function () {
    $("#dvMsgBox").hide();
    $("#ShowBolightBox").hide();
    $(".noticeCon").show(200);
    $(".noticeCon").fadeOut(2000);
    $(".hf_info").hide();
    $(".hf_info_suc").show();
    window.location.href = "swindex_hf.html";
});
$("#btn_confirm_cancel_hf").click(function () {
    $("#dvMsgBox").hide();
    $("#ShowBolightBox").hide();
});
$("#btn_confirm_gd").click(function () {
    $("#dvMsgBox").hide();
    $("#ShowBolightBox").hide();
    $(".noticeCon").show(200);
    $(".noticeCon").fadeOut(2000);
    $(".hf_info").hide();
    $(".hf_info_suc").show();
    window.location.href = "swindex_gd.html";
});
$("#btn_confirm_cancel_gd").click(function () {
    $("#dvMsgBox").hide();
    $("#ShowBolightBox").hide();
});
$("#btn_confirm_SH").click(function () {
    $("#dvMsgBox").hide();
    $("#ShowBolightBox").hide();
    $(".noticeCon").show(200);
    $(".noticeCon").fadeOut(2000);
    $(".hf_info").hide();
    $(".hf_info_suc").show();
    window.location.href = "swindex_sh.html";
});
$("#btn_confirm_cancel_SH").click(function () {
    $("#dvMsgBox").hide();
    $("#ShowBolightBox").hide();
});
$("#btn_confirm_delehtpz").click(function () {
    $(".dvMsgBox_htpz").hide();
    $(".ShowBolightBox_htpz").hide();
    var rs = $(".delete_htpz");
    var tab = $("#htpz_bable");
    // console.log(rs);
    var rIndex = rs.parent().parent();
    // console.log(rIndex);
    if (rIndex.hasClass("aaa")) {
        $("#htpz_list").children(".aaa").remove();
    }
    $(".noticeCon").show(200);
    $(".noticeCon").slideUp(500);
    $(".noticeCon").fadeOut(500);
});

$(".btn_ht_detail2").click(function () {

    $(".fieldset_htinfomation").toggle();
});


$("#new_htxm").click(function () {
    $("#htxm_list").append(
        "<tr><td><input type='text' value=''></td> <td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><button type='button' class='btn  btn-danger btnpz btnstyle delete_htxm' style='float:right;color:#fff;background-color:#008cee;' id='delete_htxm'>删除</button></td></tr>"
    );
});


$("#htxm_list").delegate("tr button.delete_htxm", "click", function () {
    $(".dvMsgBox_htxm").show();
    $(".ShowBolightBox_htxm").show();
    $(this).parent().parent().addClass("aaa").siblings().removeClass("aaa");
});
$("#btn_confirm_delehtxm").click(function () {
    $(".dvMsgBox_htxm").hide();
    $(".ShowBolightBox_htxm").hide();
    var rs = $(".delete_htxm");
    var tab = $("#htxm_bable");
    var rIndex = rs.parent().parent();
    if (rIndex.hasClass("aaa")) {
        $("#htxm_list").children(".aaa").remove();
    }
    $(".noticeCon").show(200);
    $(".noticeCon").slideUp(500);
    $(".noticeCon").fadeOut(500);
});

$("#htpz_list").delegate("tr button.delete_htpz", "click", function () {
    $(".dvMsgBox_htpz").show();
    $(".ShowBolightBox_htpz").show();
    $(this).parent().parent().addClass("aaa").siblings().removeClass("aaa");
});
$("#btn_confirm_delehtpz").click(function () {
    $(".dvMsgBox_htpz").hide();
    $(".ShowBolightBox_htpz").hide();
    var rs = $(".delete_htpz");
    var tab = $("#htpz_bable");
    var rIndex = rs.parent().parent();
    if (rIndex.hasClass("aaa")) {
        $("#htpz_list").children(".aaa").remove();
    }
    $(".noticeCon").show(200);
    $(".noticeCon").slideUp(500);
    $(".noticeCon").fadeOut(500);
});

$("#new_lxr").click(function () {
    $("#lxr_list1").append(
        "<tr><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><span class='left xg'><button class='btn btn-info' style='color:#FFFFFF;'data-target='#edit' data-toggle='modal'>修改</button></span><span class='right xg'><button class='btn btn-danger delete_lxr1' style='color: #FFFFFF;'>删除</button></span></td></tr>"
    );
});


$("#btn_confirm").click(function () {
    $("#dvMsgBox").hide();
    $("#ShowBolightBox").hide();
    $(".noticeCon").show(200);
    $(".noticeCon").fadeOut(2000);
});

$("#btn_confirm_cancel").click(function () {
    $("#dvMsgBox").hide();
    $("#ShowBolightBox").hide();
});
$("#btn_confirm_hf").click(function () {
    $("#dvMsgBox").hide();
    $("#ShowBolightBox").hide();
    $(".noticeCon").show(200);
    $(".noticeCon").fadeOut(2000);
    $(".hf_info").hide();
    $(".hf_info_suc").show();
    window.location.href = "swindex_hf.html";
});
$("#btn_confirm_cancel_hf").click(function () {
    $("#dvMsgBox").hide();
    $("#ShowBolightBox").hide();
});
$("#new_restorelxr").click(function () {
    $(".noticeCon").show(200);
    $(".noticeCon").fadeOut(2000);

});

$("#lxr_list1").delegate("tr button.delete_lxr1", "click", function () {
    $("#dvMsgBox").show();
    $("#ShowBolightBox").show();
    $(this).parent().parent().parent().addClass("aaa").siblings().removeClass("aaa");
});

$("#btn_confirm_delelxr").click(function () {
    $("#dvMsgBox").hide();
    $("#ShowBolightBox").hide();
    var rs = $(".delete_lxr1");
    var tab = $("#lxr");
    console.log(rs);
    var rIndex = rs.parent().parent().parent();
    console.log(rIndex);
    if (rIndex.hasClass("aaa")) {

        $("#lxr_list1").children(".aaa").remove();
    }
    $(".noticeCon").show(200);
    $(".noticeCon").slideUp(500);
    $(".noticeCon").fadeOut(500);
});


$("#btn_confirm_gd").click(function () {
    $("#dvMsgBox").hide();
    $("#ShowBolightBox").hide();
    $(".noticeCon").show(200);
    $(".noticeCon").fadeOut(2000);
    $(".hf_info").hide();
    $(".hf_info_suc").show();
    window.location.href = "swindex_gd.html";
});
$("#btn_confirm_cancel_gd").click(function () {
    $("#dvMsgBox").hide();
    $("#ShowBolightBox").hide();
});
$("#btn_confirm_SH").click(function () {
    $("#dvMsgBox").hide();
    $("#ShowBolightBox").hide();
    $(".noticeCon").show(200);
    $(".noticeCon").fadeOut(2000);
    $(".hf_info").hide();
    $(".hf_info_suc").show();
    window.location.href = "swindex_sh.html";
});
$("#btn_confirm_shtj").click(function () {
    $("#dvMsgBox").hide();
    $("#ShowBolightBox").hide();
    $(".noticeCon").show(200);
    $(".noticeCon").fadeOut(2000);
    $(".hf_info").hide();
    $(".hf_info_suc").show();
    window.location.href = "swindex_sh.html";
});

$("#btn_confirm_cancel_SH").click(function () {
    $("#dvMsgBox").hide();
    $("#ShowBolightBox").hide();
});

$(".btn_ht_detail2").click(function () {

    $(".fieldset_htinfomation").toggle();
});


$(".task_Info").delegate("li", "click", function () {
    $(this).addClass("on b").siblings().removeClass("on b");
});


// 归档
$(".IndexprojectDet").click(function () {
    $(".fieldset2_xm").toggle();
    $(".fieldset_wljl").hide();
    $(".fieldset_bxmx").hide();
    $(".fieldset_skjl").hide();
    $(".fieldset_fwjl").hide();
});
$(".IndexprojectRec").click(function () {
    $(".fieldset_wljl").toggle();
    $(".fieldset2_xm").hide();
    $(".fieldset_bxmx").hide();
    $(".fieldset_skjl").hide();
    $(".fieldset_fwjl").hide();
});
$(".IndexprojectBx").click(function () {
    $(".fieldset_wljl").hide();
    $(".fieldset2_xm").hide();
    $(".fieldset_bxmx").toggle();
    $(".fieldset_skjl").hide();
    $(".fieldset_fwjl").hide();
});
$(".IndexprojectMon").click(function () {
    $(".fieldset_wljl").hide();
    $(".fieldset2_xm").hide();
    $(".fieldset_bxmx").hide();
    $(".fieldset_skjl").toggle();
    $(".fieldset_fwjl").hide();
});
$(".IndexprojectSerRec").click(function () {
    $(".fieldset_wljl").hide();
    $(".fieldset2_xm").hide();
    $(".fieldset_bxmx").hide();
    $(".fieldset_skjl").hide();
    $(".fieldset_fwjl").toggle();
});


// 回访
$(".IndexprojectDet1").click(function () {
    $(".fieldset2_xm").toggle();
    $(".fieldset_wljl").hide();
    $(".fieldset_bxmx").hide();
    $(".fieldset_skjl").hide();
    $(".fieldset_fwjl").hide();
});
$(".IndexprojectRec1").click(function () {
    $(".fieldset_wljl").toggle();
    $(".fieldset2_xm").hide();
    $(".fieldset_bxmx").hide();
    $(".fieldset_skjl").hide();
    $(".fieldset_fwjl").hide();
});
$(".IndexprojectBx1").click(function () {
    $(".fieldset_wljl").hide();
    $(".fieldset2_xm").hide();
    $(".fieldset_bxmx").toggle();
    $(".fieldset_skjl").hide();
    $(".fieldset_fwjl").hide();
});
$(".IndexprojectMon1").click(function () {
    $(".fieldset_wljl").hide();
    $(".fieldset2_xm").hide();
    $(".fieldset_bxmx").hide();
    $(".fieldset_skjl").toggle();
    $(".fieldset_fwjl").hide();
});
$(".IndexprojectSerRec1").click(function () {
    $(".fieldset_wljl").hide();
    $(".fieldset2_xm").hide();
    $(".fieldset_bxmx").hide();
    $(".fieldset_skjl").hide();
    $(".fieldset_fwjl").toggle();
});
// 审核
$(".IndexprojectWljl_sh").click(function () {
    $(".fieldset2_wljl_sh").toggle();
    //  $(".fieldset_skjl").hide();
    // $(".fieldset_fwjl").hide();
});
$(".IndexprojectBx_sh").click(function () {
    $(".fieldset2_bxmx_sh").toggle();
    //  $(".fieldset_skjl").hide();
    // $(".fieldset_fwjl").hide();
});
$(".IndexprojectSerRec_sh").click(function () {
    // $(".fieldset_bxmx").hide();
    // $(".fieldset_skjl").hide();
    $(".fieldset_fwjl_sh").toggle();
});

$(".IndexprojectDet_sh").click(function () {
    $(".fieldset2_xm_sh").toggle();
    // $(".fieldset_wljl").hide();
    //  $(".fieldset_bxmx").hide();
    //  $(".fieldset_skjl").hide();
    // $(".fieldset_fwjl").hide();
});
$(".IndexprojectSkjl_sh").click(function () {
    $(".fieldset_skjl_sh").toggle();
    // $(".fieldset_wljl").hide();
    //  $(".fieldset_bxmx").hide();
    //  $(".fieldset_skjl").hide();
    // $(".fieldset_fwjl").hide();
});
$(document).ready(function () {
    $("#new_htpz").click(function () {
        $("#htpz_list").append(
            "<tr><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><button type='button' class='btn btn-danger btnpz btnstyle delete_htpz' style='float:right;color:#fff;background-color:#008cee;' id='delete_htpz'>删除</button></td></td>"
        );
    });
    $("#btn_confirm").click(function () {
        $("#dvMsgBox").hide();
        $("#ShowBolightBox").hide();
        $(".noticeCon").show(200);
        $(".noticeCon").fadeOut(2000);
    });
    $(document).ready(function () {


        $("#btn_confirm_cancel").click(function () {
            $("#dvMsgBox").hide();
            $("#ShowBolightBox").hide();
        });
        $("#btn_confirm_hf").click(function () {
            $("#dvMsgBox").hide();
            $("#ShowBolightBox").hide();
            $(".noticeCon").show(200);
            $(".noticeCon").fadeOut(2000);
            $(".hf_info").hide();
            $(".hf_info_suc").show();
            window.location.href = "swindex_hf.html";
        });
        $("#btn_confirm_cancel_hf").click(function () {
            $("#dvMsgBox").hide();
            $("#ShowBolightBox").hide();
        });
        $("#new_restorelxr").click(function () {
            //  $("#dvMsgBox").show();
            // $("#ShowBolightBox").show();
            $(".noticeCon").show(200);
            $(".noticeCon").fadeOut(2000);

        });

        $("#lxr_list1").delegate("tr button.delete_lxr1", "click", function () {
            $("#dvMsgBox").show();
            $("#ShowBolightBox").show();
            $(this).parent().parent().parent().addClass("aaa").siblings().removeClass("aaa");
        });

        $("#btn_confirm_delelxr").click(function () {
            $("#dvMsgBox").hide();
            $("#ShowBolightBox").hide();
            // var rs = $(".delete_lxr1").parent("tr").parent();
            var rs = $(".delete_lxr1");
            // console.log(rs);
            var tab = $("#lxr");
            // var rIndex;
            // for(var i=0;i<=rs.length;i++){
            console.log(rs);
            var rIndex = rs.parent().parent().parent();
            console.log(rIndex);
            if (rIndex.hasClass("aaa")) {

                $("#lxr_list1").children(".aaa").remove();
            }
            $(".noticeCon").show(200);
            $(".noticeCon").slideUp(500);
            // $("#lxr_list").children(".aaa").remove();
            $(".noticeCon").fadeOut(500);

        });

        $("#btn_confirm_gd").click(function () {
            $("#dvMsgBox").hide();
            $("#ShowBolightBox").hide();
            $(".noticeCon").show(200);
            $(".noticeCon").fadeOut(2000);
            $(".hf_info").hide();
            $(".hf_info_suc").show();
            window.location.href = "swindex_gd.html";
        });
        $("#btn_confirm_cancel_gd").click(function () {
            $("#dvMsgBox").hide();
            $("#ShowBolightBox").hide();
        });
        $("#btn_confirm_SH").click(function () {
            $("#dvMsgBox").hide();
            $("#ShowBolightBox").hide();
            $(".noticeCon").show(200);
            $(".noticeCon").fadeOut(2000);
            $(".hf_info").hide();
            $(".hf_info_suc").show();
            window.location.href = "swindex_sh.html";
        });
        $("#btn_confirm_cancel_SH").click(function () {
            $("#dvMsgBox").hide();
            $("#ShowBolightBox").hide();
        });

        $(".btn_ht_detail2").click(function () {

            $(".fieldset_htinfomation").toggle();
        });
        $(".img_smallimg").delegate("img", "click", function () {
            $("#ShowBolightBox2").show();
            $(".img_bigimg").show();
        });

    })

    $('#menuTable').delegate("tr button.menuDele", "click", function () {
        $('#dvMsgBox').show();
        $('#ShowBolightBox').show();
        $(this).parent().parent().parent().addClass("aaa").siblings().removeClass("aaa");
    });

    $("#btn_confirm_deletemenu").click(function () {
        $("#dvMsgBox").hide();
        $("#ShowBolightBox").hide();
        // var rs = $(".delete_lxr1").parent("tr").parent();
        var rs = $(".menuDele");
        // console.log(rs);
        var tab = $("#deletemenu");
        // var rIndex;
        // for(var i=0;i<=rs.length;i++){
        console.log(rs);
        var rIndex = rs.parent().parent().parent();
        console.log(rIndex);
        if (rIndex.hasClass("aaa")) {

            $("#bodyMenu").children(".aaa").remove();
        }
    })
    $('#deleteLimitTable').delegate("tr button.deleLimit", "click", function () {
        $('#dvMsgBox').show();
        $('#ShowBolightBox').show();
        $(this).parent().parent().parent().addClass("aaa").siblings().removeClass("aaa");
    });

    $("#btn_confirm_deleteLimit").click(function () {
        $("#dvMsgBox").hide();
        $("#ShowBolightBox").hide();
        var rs = $(".deleLimit");
        console.log(rs);
        var rIndex = rs.parent().parent().parent();
        console.log(rIndex);
        if (rIndex.hasClass("aaa")) {

            $("#limitBody").children(".aaa").remove();
        }
        $(".noticeCon").show(200);
        $(".noticeCon").fadeOut(2000);
    });

    $('#deleteUserTable').delegate("tr button.deleUser", "click", function () {
        $('#dvMsgBox').show();
        $('#ShowBolightBox').show();
        $(this).parent().parent().parent().addClass("aaa").siblings().removeClass("aaa");
    });

    $(".btnpz").bind('click', function () {
        $("#pz").show();
        if ($("#htjsjd").css("display") == "block" || $("#htkpsk").css("display") == "block" || $("#htgymx").css("display") == "block") {
            $("#htjsjd").hide();
            $("#htkpsk").hide();
            $("#htgymx").hide();
        }
    });
    $(".btnjsjd").bind('click', function () {
        $("#htjsjd").show();
        if ($("#pz").css("display") == "block" || $("#htkpsk").css("display") == "block" || $("#htgymx").css("display") == "block") {
            $("#pz").hide();
            $("#htkpsk").hide();
            $("#htgymx").hide();
        }
    });
    $(".btnkpsk").bind('click', function () {
        $("#htkpsk").show();
        if ($("#htjsjd").css("display") == "block" || $("#pz").css("display") == "block" || $("#htgymx").css("display") == "block") {
            $("#pz").hide();
            $("#htjsjd").hide();
            $("#htgymx").hide();

        }
    });
    $(".btnCraftDetail").bind('click', function () {
        $("#htgymx").show();
        if ($("#htjsjd").css("display") == "block" || $("#pz").css("display") == "block" || $("#kpsk").css("display") == "block") {
            $("#pz").hide();
            $("#htjsjd").hide();
            $("#htkpsk").hide();
        }
    });
//合同详情中合同项目和合同标的的新增
    $("#addBiaodi").bind('click', function () {
        $("#addContractBiaoTable").append(
            "<tr><td><input type='checkbox' name='test'></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td></tr>"
        );
    });
    $("#addContractItems").bind("click", function () {
        $("#addContractItemsTable").append(
            "<tr><td><input type='checkbox' name='item'></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td></tr>"
        );
    });
//合同详情中配置，开款收票，结算进度，工艺明细新增
    $(".pzgroup1").delegate("button", "click", function () {
        console.log($(this));
        $(this).addClass("toggle_htbgc").siblings().removeClass("toggle_htbgc");
        if ($(this).hasClass("btnpz")) {
            $('#addDetail').unbind('click');
            $('#addDetail').bind('click', function () {
                console.log("aaa");
                $("#addSettingTable").append(
                    "<tr><td><input type='checkbox' name='pzz'></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td></tr>"
                );
            });
        }
        else if ($(this).hasClass("btnkpsk")) {
            $('#addDetail').unbind('click');
            $('#addDetail').bind('click', function () {
                $("#addCountCheckoutTable").append(
                    "<tr><td><input type='checkbox' name='kpsk'></td><td><input type='text' value=''></td><td><input type='text' value=''><td><input type='text' value=''></td></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td></tr>"
                );
            });
        }
        else if ($(this).hasClass("btnjsjd")) {
            $('#addDetail').unbind('click');
            $('#addDetail').bind('click', function () {
                $("#addCountProgressTable").append(
                    "<tr><td><input type='checkbox' name='jsjd'></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td></tr>"
                );
            })
        }
        else if ($(this).hasClass("btnCraftDetail")) {
            $('#addDetail').unbind('click');
            $('#addDetail').bind('click', function () {
                $("#addCraftDetailTable").append(
                    "<tr><td><input type='checkbox' name='craft'></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td></tr>"
                );
            })
        }
    });
//合同详情删除操作--删除合同标的
    $('#deleteContractBiaodi').on('click', function () {
        $("input[name='test']:checked").each(function () { // 遍历选中的checkbox
            n = $(this).parents("tr").index();  // 获取checkbox所在行的顺序
            console.log(n);
            $("#addContractBiaoTable").find("tr:eq(" + n + ")").remove();
        });
    });
//合同详情删除操作--删除合同项目
    $('#deleteContractItems').on('click', function () {
        $("input[name='item']:checked").each(function () { // 遍历选中的checkbox
            n = $(this).parents("tr").index();  // 获取checkbox所在行的顺序
            console.log(n);
            $("#addContractItemsTable").find("tr:eq(" + n + ")").remove();
        });
    });
//合同详情删除操作--删除合同配置，开票收款，结算进度和工艺明细
    $(".pzgroup1").delegate("button", "click", function () {
        console.log($(this));
        $(this).addClass("toggle_htbgc").siblings().removeClass("toggle_htbgc");
        if ($(this).hasClass("btnpz")) {
            $('#deleteDetail').unbind('click');
            $('#deleteDetail').bind('click', function () {
                $("input[name='pzz']:checked").each(function () { // 遍历选中的checkbox
                    n = $(this).parents("tr").index();  // 获取checkbox所在行的顺序
                    console.log(n);
                    $("#addSettingTable").find("tr:eq(" + n + ")").remove();
                })
            });
        }
        else if ($(this).hasClass("btnkpsk")) {
            $('#deleteDetail').unbind('click');
            $('#deleteDetail').bind('click', function () {
                $("input[name='kpsk']:checked").each(function () { // 遍历选中的checkbox
                    n = $(this).parents("tr").index();  // 获取checkbox所在行的顺序
                    console.log(n);
                    $("#addCountCheckoutTable").find("tr:eq(" + n + ")").remove();
                })
            });
        }
        else if ($(this).hasClass("btnjsjd")) {
            $('#deleteDetail').unbind('click');
            $('#deleteDetail').bind('click', function () {
                $("input[name='jsjd']:checked").each(function () { // 遍历选中的checkbox
                    n = $(this).parents("tr").index();  // 获取checkbox所在行的顺序
                    console.log(n);
                    $("#addCountProgressTable").find("tr:eq(" + n + ")").remove();
                })
            });
        }
        else if ($(this).hasClass("btnCraftDetail")) {
            $('#deleteDetail').unbind('click');
            $('#deleteDetail').bind('click', function () {
                $("input[name='craft']:checked").each(function () { // 遍历选中的checkbox
                    n = $(this).parents("tr").index();  // 获取checkbox所在行的顺序
                    console.log(n);
                    $("#addCraftDetailTable").find("tr:eq(" + n + ")").remove();
                })
            });
        }
    });
    //收款页面新增
    $("#addCollection").bind('click', function () {
        $("#collectionTable").append(
            "<tr><td><input type='checkbox' name='collection'></td><td><input type='text'></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><button class='btn btn-info'>修改</button> </td></tr>"
        );
    });
//收款页面删除
    $('#deleteCollection').on('click', function () {
        $("input[name='collection']:checked").each(function () { // 遍历选中的checkbox
            n = $(this).parents("tr").index();  // 获取checkbox所在行的顺序
            console.log(n);
            $("#collectionTable").find("tr:eq(" + n + ")").remove();
        });
    });


//合同详情--内部结算新增
    $("#addInternalSettlement").bind('click', function () {
        $("#internalSettlrmentTable").append(
            "<tr><td><input type='checkbox' name='nbjs'></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td></tr>"
        );
    });
//合同详情--内部结算删除
    $('#deleteInternalSettlement').on('click', function () {
        $("input[name='nbjs']:checked").each(function () { // 遍历选中的checkbox
            n = $(this).parents("tr").index();  // 获取checkbox所在行的顺序
            console.log(n);
            $("#internalSettlrmentTable").find("tr:eq(" + n + ")").remove();
        });
    });

    $("#btn_confirm_deleteUser").click(function () {
        $("#dvMsgBox").hide();
        $("#ShowBolightBox").hide();
        var rs = $(".deleUser");
        var rIndex = rs.parent().parent().parent();
        if (rIndex.hasClass("aaa")) {
            $("#userBody").children(".aaa").remove();
        }
        $(".noticeCon").show(200);
        $(".noticeCon").fadeOut(2000);

    });

    $('#deleteApplyTable').delegate("tr button.deleApply", "click", function () {
        $('#dvMsgBox').show();
        $('#ShowBolightBox').show();
        $(this).parent().parent().parent().addClass("aaa").siblings().removeClass("aaa");
    });

    $("#btn_confirm_deleteApply").click(function () {
        $("#dvMsgBox").hide();
        $("#ShowBolightBox").hide();
        var rs = $(".deleApply");
        var rIndex = rs.parent().parent().parent();
        if (rIndex.hasClass("aaa")) {
            $("#applyBody").children(".aaa").remove();
        }

        $(".noticeCon").show(200);
        $(".noticeCon").fadeOut(2000);
    });

    $('#deleteTaskTable').delegate("tr button.deleTask", "click", function () {
        $('#dvMsgBox').show();
        $('#ShowBolightBox').show();
        $(this).parent().parent().parent().addClass("aaa").siblings().removeClass("aaa");
    });

    $("#btn_confirm_deleteTask").click(function () {
        $("#dvMsgBox").hide();
        $("#ShowBolightBox").hide();
        var rs = $(".deleTask");
        var rIndex = rs.parent().parent().parent();
        if (rIndex.hasClass("aaa")) {
            $("#taskBody").children(".aaa").remove();
        }

        $(".noticeCon").show(200);
        $(".noticeCon").fadeOut(2000);
    });

    $('#deleteCustomerTable').delegate("tr button.deleCustomer", "click", function () {
        $('#dvMsgBox').show();
        $('#ShowBolightBox').show();
        $(this).parent().parent().parent().addClass("aaa").siblings().removeClass("aaa");
    });

    $("#btn_confirm_deleteCustomer").click(function () {
        $("#dvMsgBox").hide();
        $("#ShowBolightBox").hide();
        var rs = $(".deleCustomer");
        var rIndex = rs.parent().parent().parent();
        if (rIndex.hasClass("aaa")) {
            $("#customerBody").children(".aaa").remove();
        }

        $(".noticeCon").show(200);
        $(".noticeCon").fadeOut(2000);
    });
})