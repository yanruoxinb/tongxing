/**
 * Created by sw001 on 2016-7-26.
 */


$(document).ready(function(){
$("#ShowBolightBox2").click(function(){
  $("#ShowBolightBox2").fadeOut();
  $(".img_bigimg").hide();
});
  
  $(".img_cancel").click(function(){
  $("#ShowBolightBox2").fadeOut();
  $(".img_bigimg").hide();
});
     $("#task_list").delegate('li','click',function(){
            
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
            'type':'text!important',
            'value':'二级',
    });
    $(".textbox-value").css({
            'type':'text!important',
            'value':'一级',
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
     $("#operateMode_new").click(function(){
        $("#task_infom input").val("");
            // $("#task_infom input").removeAttr("disabled");
            $("#task_infom input").attr("disabled","false");
            // $("#task_infom input").focus();
     });
   
   $("#disPass").click(function(){
     if(confirm('您确认要进行该操作吗？')){ 
          $("#leftimg").css({"height":"1318"});
           window.location.href="swindex_sh.html";
　　　　}
   });
    $("#pass_GD").click(function(){
      $("#dvMsgBox").show();
      $("#ShowBolightBox").show();
   });
  $("#pass_SH").click(function(){
    $("#dvMsgBox").show();
    $("#ShowBolightBox").show();

  });
  $("#disPass_SH").click(function(){
    $("#dvMsgBox").hide();
    $("#ShowBolightBox").hide();
  });
   
$("#pass").click(function(){

                if(confirm('您确认要进行该操作吗？')){
　　　　// 如果确定，你这里的代码就开始执行。
        
          $("#leftimg").css({"height":"1318"});
          $(".sh_info").hide();
           $(".sh_info_suc").show();
            window.location.href="swindex_sh.html";
                // $('#b_table').hide(500);
          
          // if($('#b_table').css('display')=='block'){
          //   $("#leftimg").addClass("imgheight");

          //       $("#leftimg").removeClass("imgheightsh");
          //       $('#b_table').hide(500); 
          //   }

　　　　}
    });
        $('#bnt').bind('click',function(){

            if($('#b_table').css('display')=='none'){
                $("#leftimg").css({"height":"1953"});
                $('#b_table').show(500);
            }else{
                $("#leftimg").css({"height":"1318"});
                $('#b_table').hide(500);
            }
        });

    $('.yes').bind('click',function(){
        if($('.det').css('display')=='none'){
            $('.det').show(500);
            $('.yes').css({
                'color':'#333',
                'text-decoration':'none'
            })
        }else{
            $('.det').hide(500);
          $('.yes').css({
            'color':'#008cee',
            'text-decoration':'none'
          })
        }
    })

    $('.gy_mx').bind('click',function(){
        if($('.gymx').css('display')=='none'){
            $('.gymx').show(500);
        }else{
            $('.gymx').hide(500);
        }
    })

    $('.pz_mx').bind('click',function(){
        if($('.pzmx').css('display')=='none'){
            $('.pzmx').show(500);
        }else{
            $('.pzmx').hide(500);
        }
    })


    $('.olct_left').bind('click',function(){
         $('#zhe').show();
        $('.olct_footer').animate({right:0},500);
        $('.olct').animate({'right':0},500);
    })
    $('#a').click(function(){
        $('#page4').show();
        $('#form').hide();
        $('#zhe').hide();


    })

});
$(function(){
    $(".btn1").bind('click',function(){
        // var w= $('.olct').css("display");
        // if(w == "none"){
            $('#zhe').show();
             $('.olct').show();
      $('.olct_footer').animate({right:0},500);
      $('.olct').animate({'right':0},500);
        // }else{
        //     $('#zhe').hide()
        //      $('.olct').hide();
        //     $('.olct').animate({right:'-325'},500);
        // }
    });
     $(".btnpz").bind('click',function(){
           $("#pz").show();  
        if($("#jsjd").css("display") == "block"||$("#kpsk").css("display") == "block"){
            $("#jsjd").hide();
            $("#kpsk").hide();
        }
     });
     $(".btnjsjd").bind('click',function(){
           $("#jsjd").show();  
        if($("#pz").css("display") == "block"||$("#kpsk").css("display") == "block"){
            $("#pz").hide();
            $("#kpsk").hide();
        }
     });
     $(".btnkpsk").bind('click',function(){
           $("#kpsk").show();  
        if($("#jsjd").css("display") == "block"||$("#pz").css("display") == "block"){
            $("#pz").hide();
            $("#jsjd").hide();
        }
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
        $('.olct').animate({right:'-250'},500);
        $('.olct_footer').css({'right':-36});
    });
    $(".btngroup").delegate('button','click',function(){
        $(this).addClass("btnstyle").siblings().removeClass("btnstyle");
    })
     $(".xg_moneyRecor").click(function(){
        alert("归档成功");
    $(".moneyRecor").hide();
        $("#xgskjl").show();
    })
   $(".btn_ht_detail").click(function(){
    
     $("#fieldset").show();
   });
$("#operateMode_release").click(function(){
            $("#dvMsgBox").show();
           $("#ShowBolightBox").show();
           
   });
$("#operateMode_release1").click(function(){
            $("#dvMsgBox").show();
           $("#ShowBolightBox").show();
           
   });
$("#pass_hf").click(function(){
            $("#dvMsgBox").show();
           $("#ShowBolightBox").show();        
   });
  $("#pass_SH").click(function(){
    $("#dvMsgBox").show();
    $("#ShowBolightBox").show();
  });
  $("#disPass_SH").click(function(){
    $("#dvMsgBox").show();
    $("#ShowBolightBox").show();
  });
  $("#pass_hf").click(function(){
    $("#dvMsgBox").show();
    $("#ShowBolightBox").show();
  })
$("#operateMode_new2").click(function(){
            $("#dvMsgBox").show();
           $("#ShowBolightBox").show();        
   });
$("#new_htbd").click(function(){
$("#htbd_list").append(
  "<tr> <td><input type='text'  value=''></td><td><input type='text'  value=''></td><td><input type='text'  value=''></td><td><input type='text' value=''></td><td><input type='text'  value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><button type='button' class='btn  btn-danger btnpz btnstyle delete_htbd' style='float:right;color:#fff;background-color:#008cee;' id='delete_htbd'>删除</button></td></tr>"
                    );     
   });
    $("#htbd_list").delegate("tr button.delete_htbd","click",function(){
         $(this).parent().parent().remove();

    });


$("#new_htxm").click(function(){
$("#htxm_list").append(
  
                      "<tr><td><input type='text' value=''></td> <td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><button type='button' class='btn  btn-danger btnpz btnstyle delete_htxm' style='float:right;color:#fff;background-color:#008cee;' id='delete_htxm'>删除</button></td></tr>"
                    );     
   });
    $("#htxm_list").delegate("tr button.delete_htxm","click",function(){
         $(this).parent().parent().remove();

    });

    $("#new_htpz").click(function(){
$("#htpz_list").append(
  
                    "<tr><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><button type='button' class='btn btn-danger btnpz btnstyle delete_htpz' style='float:right;color:#fff;background-color:#008cee;' id='delete_htpz'>删除</button></td></td>"
                    );     
   });
    $("#htpz_list").delegate("tr button.delete_htpz","click",function(){
         $(this).parent().parent().remove();

    });
$("#btn_confirm").click(function(){
            $("#dvMsgBox").hide();
            $("#ShowBolightBox").hide();
            $(".noticeCon").show(200);
             $(".noticeCon").fadeOut(2000);
   });
$("#btn_confirm_cancel").click(function(){
            $("#dvMsgBox").hide();
           $("#ShowBolightBox").hide();
   });
$("#btn_confirm_hf").click(function(){
            $("#dvMsgBox").hide();
            $("#ShowBolightBox").hide();
            $(".noticeCon").show(200);
             $(".noticeCon").fadeOut(2000);
              $(".hf_info").hide();
           $(".hf_info_suc").show();
            window.location.href="swindex_hf.html";
   });
$("#btn_confirm_cancel_hf").click(function(){
            $("#dvMsgBox").hide();
           $("#ShowBolightBox").hide();
   });
  $("#btn_confirm_gd").click(function(){
    $("#dvMsgBox").hide();
    $("#ShowBolightBox").hide();
    $(".noticeCon").show(200);
    $(".noticeCon").fadeOut(2000);
    $(".hf_info").hide();
    $(".hf_info_suc").show();
    window.location.href="swindex_gd.html";
  });
  $("#btn_confirm_cancel_gd").click(function(){
    $("#dvMsgBox").hide();
    $("#ShowBolightBox").hide();
  });
  $("#btn_confirm_SH").click(function(){
    $("#dvMsgBox").hide();
    $("#ShowBolightBox").hide();
    $(".noticeCon").show(200);
    $(".noticeCon").fadeOut(2000);
    $(".hf_info").hide();
    $(".hf_info_suc").show();
    window.location.href="swindex_sh.html";
  });
  $("#btn_confirm_cancel_SH").click(function(){
    $("#dvMsgBox").hide();
    $("#ShowBolightBox").hide();
  });

   $(".btn_ht_detail2").click(function(){
    
     $(".fieldset_htinfomation").toggle();
   });
$(".img_smallimg").delegate("img","click",function(){
     $("#ShowBolightBox2").show();
     $(".img_bigimg").show();
   });

})





$(document).ready(function() {
  var total = $("#img_box img").length;

  $("#imglink1 img").css({
    "border-color": "#0099cc",
    "top": "-5px"
  });

  $(".thumblink").click(function() {
    var imgnumber = parseInt($(this).attr('id').replace("imglink", ""));
    var move = -($("#img"+imgnumber).width() * (imgnumber - 1));

    $("#img_box").animate({
      left: move
    }, 500);

    $("#imgthumb_box").find("img").removeAttr("style");
    $(this).find("img").css({
      "border-color": "#0099cc",
      "top": "-5px",
      "border-top-width": "-5px"
    });
    return false;
  });

  $("#navigate1 a").click(function() {
    var imgwidth = $("#img1").width();
    var box_left = $("#img_box").css("left");
    var el_id = $(this).attr("id");
    var move, imgnumber;

    if (box_left == 'auto') {
      box_left = 0;
    } else {
      box_left = parseInt(box_left.replace("px", ""));
    }

    // if prev
    if (el_id == 'linkprev') {
      if ((box_left - imgwidth) == -(imgwidth)) {
        move = -(imgwidth * (total - 1));
      } else {
        move = box_left + imgwidth;
      }

      imgnumber = -(box_left / imgwidth);
      if (imgnumber == 0) {
        imgnumber = total;
      }
    } else if (el_id == 'linknext') {
      // if in the last image, move to first
      if (-(box_left) == (imgwidth * (total - 1))) {
        move = 0;
      } else {
        move = box_left - imgwidth;
      }

      imgnumber = Math.abs((box_left / imgwidth)) + 2;
      if (imgnumber == (total + 1)) {
        imgnumber = 1;
      }
    } else if (el_id == 'linkfirst') {
      move = 0;
      imgnumber = 1;
    } else if (el_id == 'linklast') {
      move = -(imgwidth * (total - 1));
      imgnumber = total;
    }

    // styling selected image
    $("#imgthumb_box").find("img").removeAttr("style");
    $("#imglink"+imgnumber).find("img").css({
      "border-color": "#0099cc",
      "top": "-5px",
      "border-top-width": "-5px"
    });

    $("#navigate1 a").hide();
    $("#navigate1 span").show();

    $("#img_box").animate({
      left: move+'px'
    }, 400, function() {
      $("#navigate1 a").show();
      $("#navigate1 span").hide();
    });

    return false;
  });
});


    