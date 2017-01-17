<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>权限管理</title>

</head>
<body>
<!------------------------------权限管理---------------------------------->
<jsp:include page="../public/menulist.jsp"></jsp:include>
<jsp:include page="../public/lib.jsp"></jsp:include>
<div style="height:50px;width:350px;font-size:26px;font-family:'华文行楷','Arial','Microsoft YaHei','黑体','宋体','sans-serif';margin:0 auto; border:1px solid #008cee;background-color:#008cee;color:#fff;z-index:999;display:inline-block;line-height:50px;text-align:center;border-radius:20px;position:absolute;right: 42%;top: 480px;display:none;" class="noticeCon">
    操作成功
</div>

<div class="contaner"  id="page10"style="width:86%;float:right;padding:0 35px;border:1px solid #ddd">
   <a id="btn1" href="swindex.html"style="left: -30px;padding: 17px 10px;float: left;position: relative;" > 首页 / </a>
    <a class="btn1" href="javascript:void(0)"style="left: -30px;padding: 17px 5px;float: left;position: relative;" > 功能列表</a>
    <div class="section" style="margin:15px 0;">

        <h3 class="baoxiao">权限管理</h3>
         <form style="padding:10px 0;text-align:left;">
            <button type="button" class="btn creatNewRole" style="margin-left:10px;background-color: #008cee;color: #fff">创建新角色</button>
        </form>
        <div class="table-responsive" style="margin-top:15px;">
            <table class="table table-bordered" id="deleteLimitTable">
                <thead>
                <tr>
                    <td>角色名</td>
                    <td>操作</td>
                </tr>
                </thead>
                <tbody id="limitBody">
                <tr>
                    <td>管理员</td>
                    <td>
                         <span class="left xg xg1"><button class="btn btn-info" style="color: #ffffff" id="xg">修改</button></span>
                              
                        <span  class="right xg" style="width:33%!important;"><button class="btn btn-danger deleLimit" style="color: #FFFFFF;"> 删除</button></span>
                    </td>
                </tr>
                <tr>
                    <td>实施人员</td>
                    <td>
                        <span class="left xg xg1"><button class="btn btn-info" style="color: #ffffff" id="xg">修改</button></span>
                         <span  class="right xg" style="width:33%!important;"><button class="btn btn-danger deleLimit" style="color: #FFFFFF;"> 删除</button></span>
                    </td>
                </tr>
                <tr>
                    <td>部门主管</td>
                    <td>
                       <span class="left xg xg1"><button class="btn btn-info" style="color: #ffffff" id="xg">修改</button></span>
                        <span  class="right xg" style="width:33%!important;" ><button class="btn btn-danger deleLimit"  style="color: #FFFFFF;"> 删除</button></span>
                    </td>
                </tr>
                <tr>
                    <td>客服人员</td>
                    <td>
                         <span class="left xg xg1"><button class="btn btn-info" style="color: #ffffff" id="xg">修改</button></span>
                       <span  class="right xg" style="width:33%!important;"><button class="btn btn-danger deleLimit"  style="color: #FFFFFF;"> 删除</button></span>
                    </td>
                </tr>
                <tr>
                    <td>超级管理员</td>
                    <td>
                        <span class="left xg xg1"><button class="btn btn-info" style="color: #ffffff" id="xg">修改</button></span>
                         <span  class="right xg" style="width:33%!important;"><button class="btn btn-danger deleLimit" style="color: #FFFFFF;"> 删除</button></span>
                    </td>
                </tr>
                <!-- <tr>
                    <td colspan="2">
                        <button type="button" class="btn btn-info">创建新角色</button>
                    </td>
                </tr> -->
                </tbody>
            </table>
        </div>
    </div>

<!--       <a id="btn1" href="javascript:void(0)"style="left: -30px;padding: 17px 0px;float: left;position: relative;" >功能列表</a> -->
</div>
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="height:700px;width:600px;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"style="padding:5px 5px;margin-top: -16px;width:25px;height:25px;">&times;</button>
                
            </div>
            <!-- <h4 class="modal-title" style="margin-left:15px;">设置<span style="color:#f00;">xxx</span>的角色</h4> -->
            <div class="modal-body">
<!-- <h4 class="modal-title" id="myModalLabel">修改角色</h4> -->
                <label>角色名：</label>&nbsp;&nbsp;
                <input type="text" placeholder="" class="set" id="pic" value="管理员" />&nbsp;&nbsp;
                <div style="border:1px solid #eee;    padding: 10px 10px;margin:5px 5px;">
                                      <label class="modal-title" style="display:block;margin:5px 5px 5px 0;">设置权限</label>
                    <table class="table table-bordered"style="text-align:center;">
                        <tr>
                            <td>后台管理</td>
                            <td><input type="checkbox"/>添加</td>
                            <td><input type="checkbox"/>查看</td>
                            <td><input type="checkbox"/>删除</td>
                            <td><input type="checkbox"/>修改</td>
                                            
                        </tr>
                        <tr>
                            <td>联系人管理</td>
                            <td><input type="checkbox"/>添加</td>
                            <td><input type="checkbox"/>查看</td>
                            <td><input type="checkbox"/>删除</td>
                            <td><input type="checkbox"/>修改</td>                            
                        </tr>
                        <tr>
                             <td>合同管理</td>                       
                           <td><input type="checkbox"/>添加</td>
                            <td><input type="checkbox"/>查看</td>
                            <td><input type="checkbox"/>删除</td>
                            <td><input type="checkbox"/>修改</td>
                        </tr>
                        <tr>
                            <td>任务管理</td>                        
                           <td><input type="checkbox"/>添加</td>
                            <td><input type="checkbox"/>查看</td>
                            <td><input type="checkbox"/>删除</td>
                            <td><input type="checkbox"/>修改</td>
                        </tr>
                        <tr>
                            <td>用户管理</td>                        
                           <td><input type="checkbox"/>添加</td>
                            <td><input type="checkbox"/>查看</td>
                            <td><input type="checkbox"/>删除</td>
                            <td><input type="checkbox"/>修改</td>
                        </tr>
                        <tr>
                            <td>客户管理</td>                        
                          <td><input type="checkbox"/>添加</td>
                            <td><input type="checkbox"/>查看</td>
                            <td><input type="checkbox"/>删除</td>
                            <td><input type="checkbox"/>修改</td>
                        </tr>
                        <tr>
                            <td>收款管理</td>                        
                            <td><input type="checkbox"/>添加</td>
                            <td><input type="checkbox"/>查看</td>
                            <td><input type="checkbox"/>删除</td>
                            <td><input type="checkbox"/>修改</td>
                        </tr>
                         <tr>
                            <td>报销管理</td>
                            <td><input type="checkbox"/>添加</td>
                            <td><input type="checkbox"/>查看</td>
                            <td><input type="checkbox"/>删除</td>
                            <td><input type="checkbox"/>修改</td>                         
                        </tr>
                        <tr>
                             <td>项目管理</td>                       
                           <td><input type="checkbox"/>添加</td>
                            <td><input type="checkbox"/>查看</td>
                            <td><input type="checkbox"/>删除</td>
                            <td><input type="checkbox"/>修改</td>
                        </tr>
                        <tr>
                            <td>权限管理</td>                        
                           <td><input type="checkbox"/>添加</td>
                            <td><input type="checkbox"/>查看</td>
                            <td><input type="checkbox"/>删除</td>
                            <td><input type="checkbox"/>修改</td>
                        </tr>
                        <tr>
                            <td>菜单管理</td>                        
                            <td><input type="checkbox"/>添加</td>
                            <td><input type="checkbox"/>查看</td>
                            <td><input type="checkbox"/>删除</td>
                            <td><input type="checkbox"/>修改</td>
                        </tr>
                    </table>
                </div>
                </div>
                <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" onclick="tan()">保存</button>
                <button type="button" class="btn btn-primary"onclick="cancel()">取消</button>
            </div>
            </div>
          
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
    <div></div>
</div>

<!-- 主容器 -->
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">添加根节点</h4>
            </div>
       
                       <div class="modal-body">
<!-- <h4 class="modal-title" id="myModalLabel">修改角色</h4> -->
                <label>角色名：</label>&nbsp;&nbsp;
                <input type="text" placeholder="请输入角色名称" class="set" class="pic" value="" style="border:1px solid  #f00!important;" />&nbsp;&nbsp;

                 <i class="items pull-left">*</i>

                <div style="border:1px solid #eee;    padding: 10px 10px;margin:5px 5px;">
                                      <label class="modal-title" style="display:block;margin:5px 5px 5px 0;">设置权限</label>
                    <table class="table table-bordered"style="text-align:center;">
                        <tr>
                            <td>后台管理</td>
                            <td><input type="checkbox"/>添加</td>
                            <td><input type="checkbox"/>查看</td>
                            <td><input type="checkbox"/>删除</td>
                            <td><input type="checkbox"/>修改</td>
                                            
                        </tr>
                        <tr>
                            <td>联系人管理</td>
                            <td><input type="checkbox"/>添加</td>
                            <td><input type="checkbox"/>查看</td>
                            <td><input type="checkbox"/>删除</td>
                            <td><input type="checkbox"/>修改</td>                            
                        </tr>
                        <tr>
                             <td>合同管理</td>                       
                           <td><input type="checkbox"/>添加</td>
                            <td><input type="checkbox"/>查看</td>
                            <td><input type="checkbox"/>删除</td>
                            <td><input type="checkbox"/>修改</td>
                        </tr>
                        <tr>
                            <td>任务管理</td>                        
                           <td><input type="checkbox"/>添加</td>
                            <td><input type="checkbox"/>查看</td>
                            <td><input type="checkbox"/>删除</td>
                            <td><input type="checkbox"/>修改</td>
                        </tr>
                        <tr>
                            <td>用户管理</td>                        
                           <td><input type="checkbox"/>添加</td>
                            <td><input type="checkbox"/>查看</td>
                            <td><input type="checkbox"/>删除</td>
                            <td><input type="checkbox"/>修改</td>
                        </tr>
                        <tr>
                            <td>客户管理</td>                        
                          <td><input type="checkbox"/>添加</td>
                            <td><input type="checkbox"/>查看</td>
                            <td><input type="checkbox"/>删除</td>
                            <td><input type="checkbox"/>修改</td>
                        </tr>
                        <tr>
                            <td>收款管理</td>                        
                            <td><input type="checkbox"/>添加</td>
                            <td><input type="checkbox"/>查看</td>
                            <td><input type="checkbox"/>删除</td>
                            <td><input type="checkbox"/>修改</td>
                        </tr>
                         <tr>
                            <td>报销管理</td>
                            <td><input type="checkbox"/>添加</td>
                            <td><input type="checkbox"/>查看</td>
                            <td><input type="checkbox"/>删除</td>
                            <td><input type="checkbox"/>修改</td>                         
                        </tr>
                        <tr>
                             <td>项目管理</td>                       
                           <td><input type="checkbox"/>添加</td>
                            <td><input type="checkbox"/>查看</td>
                            <td><input type="checkbox"/>删除</td>
                            <td><input type="checkbox"/>修改</td>
                        </tr>
                        <tr>
                            <td>权限管理</td>                        
                           <td><input type="checkbox"/>添加</td>
                            <td><input type="checkbox"/>查看</td>
                            <td><input type="checkbox"/>删除</td>
                            <td><input type="checkbox"/>修改</td>
                        </tr>
                        <tr>
                            <td>菜单管理</td>                        
                            <td><input type="checkbox"/>添加</td>
                            <td><input type="checkbox"/>查看</td>
                            <td><input type="checkbox"/>删除</td>
                            <td><input type="checkbox"/>修改</td>
                        </tr>
                    </table>
                </div>
                </div>
            <div class="modal-footer">
                <button type="button" class="btn" data-dismiss="modal" onclick="cancel1()" style="background-color: #008CEE;color: #ffffff;">保存</button>
                <button type="button" class="btn" onclick="cancel1()" style="background-color: #008CEE;color: #ffffff;">取消</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
    <div></div>
</div>
<div id="dvMsgBox" style="width: 400px;top: 440px; left: 751px;display:none;">
    <div class="top">
        <div class="right">
            <div class="title" id="dvMsgTitle">提示</div>
        </div>
    </div>
    <div class="body">
        <div class="right">
            <div class="ct" id="dvMsgCT">
                <img src="../../image/notice.png" alt="" style="width:30px;height:30px;margin-right:10px;">
                您确认要进行保存操作吗？
                <div class="clear">
                    <img src="../../image/bottom_smile.png" alt="">
                </div>
            </div>
        </div>
    </div>
    <div class="bottom" id="dvMsgBottom" style="height: 45px;">
        <div class="right">
            <div class="" id="dvMsgBtns">
                <div class="height"></div>
                <input type="button" class="btn2 btn_confirm_cancel" value="确认" id="btn_confirm_deleteLimit">　
                <input type="button" class="btn2 btn_confirm_cancel" value="取消" id="btn_confirm_cancel">
            </div>
        </div>
    </div>
</div>
<div id="ShowBolightBox" style="width: 1932px; height: 100%;display:none;"></div>
<script src="js/app.js"></script>
<script>
        $(".xg1").click(function(){
                $('#myModal2').modal("show");
               $("#myModal2").modal({
                keyboard:true ,
                });
         });
        function cancel(){
            $('#myModal2').modal("hide");
        }
        function cancel1(){
            $('#myModal4').modal("hide");
        }
    $(".creatNewRole").click(function(){
        $('#myModal4').modal('show')
    });


</script>
</body>
</html>