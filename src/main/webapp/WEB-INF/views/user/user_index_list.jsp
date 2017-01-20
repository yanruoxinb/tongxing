<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="row">
    <div class="col-lg-12 col-xs-12 col-md-12" style="padding:0px;">
        <div class="widget">
            <div class="widget-header bordered-bottom bordered-themesecondary">
                <i class="widget-icon fa fa-tags themesecondary"></i>
                <span class="widget-caption themesecondary">人员列表</span>

                <a href="dituall.html"><img src="./image/iconfont-ditu001.png" alt=""style="padding: 10px 10px;margin-right:30px;width:40px;height:40px;float:right;"></a>

            </div>
            <div class="widget-body configure">
                    <div id="userList" class="actionList">
                    <%--<table class="table table-bordered"><thead><tr><th>姓名</th><th>位置</th><th>状态</th></tr></thead><tbody><tr style="display: none;"></tr><tr><td style="text-align: center;">李威<input name="id" type="hidden" value="3"></td><td style="text-align: center;"><a href="javascript:void(0);">西京国际电气中心</a></td><td style="text-align: center;">休息中</td></tr></tbody></table>--%>
                </div>
                <div id="userPage"></div>
            </div>
        </div>
    </div>
</div>
<script>
    $(function() {
        callSapiServer("/user/selectAll",function(data){
            userList(data);
        },"GET");
    });

    function userList(data){
        //列名初始化
        var head = ["姓名","当前","状态"];
        tab_jsonTable($("#userList"), data, head,
                function (td, row, col, content) {
                    $(td).css("text-align", "center");//添加td的样式
                    //初始化每一行的数据
                    switch (col) {
                        case 0:
                            return nullToString(content.trueName) + "<input name='id' type='hidden' value='"+content.id+"'>";
                        case 1:
                            return "<a href='javascript:void(0);'>" + nullToString(content.address) + "</a>";
                        case 2:
                            var statusText = "";
                                if(content.status == null || content.status == "") {
                                    statusText = "--";
                                } else if(content.status == 0) {
                                    statusText = "工作中";
                                }  else if(content.status == 1) {
                                    statusText = "休息中";
                                } else {
                                    statusText = "异常";
                                }
                            return statusText;
                        default :
                            return null;
                    }
                }, function (table) {
                    //设置table的样式
                    $(table).addClass("table table-bordered");
                })
    }
</script>