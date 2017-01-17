<%--
  Created by IntelliJ IDEA.
  User: lance
  Date: 2017-01-14
  Time: 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>元数据列表</title>
    <jsp:include page="../public/lib.jsp"></jsp:include>
</head>
<body>
    <div>元数据列表</div>
    ${key}
    <div id="list"></div>
</body>
</html>
<script>
    //初始化方法
    $(function(){
        callSapiServer("/metadata/list",function(data){
            list(data);
        },"GET");
    });

    function list(data){
        //列名初始化
        var head = ["编号","父编号","名称","描述", "创建人","编辑人","创建时间",'修改时间',"状态信息","操作"];
        tab_jsonTable($("#list"), data, head,
                function (td, row, col, content) {
                    $(td).css("text-align", "center");//添加td的样式
                    //初始化每一行的数据
                    switch (col) {
                        case 0:
                            return nullToString(content.id) + "<input name='id' type='hidden' value='"+content.id+"'>";
                        case 1:
                            return nullToString(content.parentId);
                        case 2:
                            return nullToString(content.metaName);
                        case 3:
                            return nullToString(content.description);
                        case 4:
                            return nullToString(content.creater);
                        case 5:
                            return nullToString(content.edited);
                        case 6:
                            return nullToString(content.createdTime);
                        case 7:
                            return nullToString(content.editedTime);
                        case 8:
                            if(content.status == null || content.status == "" || content.status == 0) {
                                return "异常";
                            }
                            return "正常"
                        case 9:
                            var html = '<button name="update">修改</button>&nbsp;<button name="delete">删除</button>';
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
                            callSapiServer("/metadata/delete",function(data){
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
                        var flag = confirm("您确定修改该元数据吗？一旦修改，将无法恢复！");
                    });
                })
    }
</script>
