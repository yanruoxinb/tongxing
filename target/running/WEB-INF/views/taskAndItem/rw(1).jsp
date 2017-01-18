<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>任务管理</title>
    <style>
        .mc input::-webkit-input-placeholder { /* WebKit browsers */
            font-size: 12px;
        }

        .mc input:-moz-placeholder { /* Mozilla Firefox 4 to 18 */
            font-size: 12px;
        }

        .mc input::-moz-placeholder { /* Mozilla Firefox 19+ */
            font-size: 12px;
        }

        .mc input:-ms-input-placeholder { /* Internet Explorer 10+ */
            font-size: 12px;
        }
    </style>
</head>
<body>
<jsp:include page="../public/menulist.jsp"></jsp:include>
<jsp:include page="../public/lib.jsp"></jsp:include>
<!------------------------------任务管理---------------------------------->
<div style="height:50px;width:350px;font-size:26px;font-family:'华文行楷','Arial','Microsoft YaHei','黑体','宋体','sans-serif';margin:0 auto; border:1px solid #008cee;background-color:#008cee;color:#fff;z-index:999;display:inline-block;line-height:50px;text-align:center;border-radius:20px;position:absolute;right: 42%;top: 480px;display:none;"
     class="noticeCon">
    操作成功
</div>

<div class="contaner" id="page5" style="width:86%;float:right;padding:0 20px;border:1px solid #ddd">
    <a id="btn1" href="swindex.html" style="left: -30px;padding: 17px 0 0 20px;float: left;position: relative;"> 首页
        / </a>
    <a class="btn1" href="javascript:void(0)" style="left: -30px;padding: 17px 5px;float: left;position: relative;">
        功能列表</a>
    <div class="section">
        <h3 class="baoxiao" style="margin:10px 0;">任务管理</h3>
        <form style="border:1px solid #ddd;padding:10px 0;border-radius:5px;text-align:left;    margin: 20px 25px 0 6px;">
            <div style="text-align:center;display:block">
                <label>任务编号</label>&nbsp;&nbsp;
                <select name="set" class="set" style="margin-right:0;">
                    <option value="">--请选择--</option>
                    <option value="1">888888</option>
                    <option value="2">666666</option>
                    <option value="3">333333</option>
                </select>
                <div class="mc" style="display:inline;">
                    <label>名称</label>&nbsp;&nbsp;
                    <input type="text" placeholder="请输入项目名称或者客户名称" class="set" style="line-height: normal;width:11%"/>
                </div>


                <label>任务状态</label>&nbsp;&nbsp;
                <select name="set" class="set" style="width:7%;">
                    <option value="">--请选择--</option>
                    <option value="1">已完成</option>
                    <option value="2">未完成</option>
                    <option value="2">执行中</option>
                </select>&nbsp;&nbsp;

                <label>任务类型</label>&nbsp;&nbsp;
                <select name="set" class="set">
                    <option value="">--请选择--</option>
                    <option value="1">走访客户</option>
                    <option value="2">/</option>
                    <option value="3">/</option>
                </select>&nbsp;&nbsp;

                <label>执行人</label>&nbsp;&nbsp;
                <select name="set" class="set">
                    <option value="">--请选择--</option>
                    <option value="1">王工</option>
                    <option value="2">李工</option>
                    <option value="3">段工</option>
                </select>&nbsp;&nbsp;

                <label>添加人</label>&nbsp;&nbsp;
                <select name="set" class="set">
                    <option value="">--请选择--</option>
                    <option value="1">客服001</option>
                    <option value="2">客服002</option>
                    <option value="3">客服003</option>
                </select>&nbsp;&nbsp;

                <label>任务时间</label>&nbsp;&nbsp;
                <input type="date" placeholder="请选择添加时间" class="set" style="line-height: normal;width:9%;"/>

                <button type="button" class="btn" style="margin-left:0px;background-color: #008cee;color: #fff;">搜索
                </button>
                <button type="reset" class="btn" style="margin-left:10px;background-color: #008cee;color: #fff">重置
                </button>

            </div>
        </form>
        <div style="float:left;    padding: 15px 0 10px 0;">
            <a href="swindex.html">
                <button type="button" class="btn" style="background-color: #008cee;color: #fff;margin-left:10px;">新增
                </button>
            </a>

            <button type="button" class="btn" style="background-color: #008cee;color: #fff;margin-left:10px;"
                    onclick="method5('tableExcel')">导出
            </button>
        </div>
        <div class="table-responsive" style="margin-top:15px;">
            <table class="table table-bordered" id="deleteTaskTable">
                <thead>
                <tr>
                    <td>任务编号</td>
                    <td>客户名称</td>
                    <td>任务状态</td>
                    <td>执行人</td>
                    <td>添加人</td>
                    <td>添加时间</td>
                    <td>任务类型</td>
                    <td>故障类型</td>
                    <td>收费标准</td>
                    <td>项目名称</td>
                    <td>项目编号</td>
                    <td>合同编号</td>
                    <td>操作</td>
                    <td>查看更多</td>
                </tr>
                </thead>
                <tbody id="taskBody">
                <tr>
                    <td>G201640975</td>
                    <td>武汉混凝土</td>
                    <td>已发布</td>
                    <td>王工</td>
                    <td>客服一号</td>
                    <td>2016.11.11 11:11</td>
                    <td>走访客户</td>
                    <td>系统故障</td>
                    <td>80元/h</td>
                    <td>大唐建设</td>
                    <td>Item201611</td>
                    <td>C201611</td>
                    <td>
                        <a href="swindex.html"> <span class="left xg"><button class="btn btn-info"
                                                                              style="color: #FFFFFF"
                                                                              ;>修改</button></span></a>
                        <span class="right xg"><button
                                class="btn btn-danger deleTask" style="color: #FFFFFF;"> 删除</button></span>
                    </td>
                    <td>
                        <a href="../manage/infoMore.jsp"> <span class="xg"><button class="btn btn-primary"
                                                                                   style="color: #FFFFFF;"> 更多</button></span></a>
                    </td>
                </tr>
                <tr>
                    <td>G201640975</td>
                    <td>武汉混凝土</td>
                    <td>已发布</td>
                    <td>王工</td>
                    <td>客服一号</td>
                    <td>2016.11.11 11:11</td>
                    <td>走访客户</td>
                    <td>系统故障</td>
                    <td>80元/h</td>
                    <td>大唐建设</td>
                    <td>Item201611</td>
                    <td>C201611</td>
                    <td>
                        <a href="swindex.html"> <span class="left xg"><button class="btn btn-info"
                                                                              style="color: #FFFFFF"
                                                                              ;>修改</button></span></a>
                        <span class="right xg"><button
                                class="btn btn-danger deleTask" style="color: #FFFFFF;"> 删除</button></span>
                    </td>
                    <td>
                        <a href="../manage/infoMore.jsp"> <span class="xg"><button class="btn btn-primary"
                                                                                   style="color: #FFFFFF;"> 更多</button></span></a>
                    </td>
                </tr>
                <tr>
                    <td>G201640975</td>
                    <td>武汉混凝土</td>
                    <td>已发布</td>
                    <td>王工</td>
                    <td>客服一号</td>
                    <td>2016.11.11 11:11</td>
                    <td>走访客户</td>
                    <td>系统故障</td>
                    <td>80元/h</td>
                    <td>大唐建设</td>
                    <td>Item201611</td>
                    <td>C201611</td>
                    <td>
                        <a href="swindex.html"> <span class="left xg"><button class="btn btn-info"
                                                                              style="color: #FFFFFF"
                                                                              ;>修改</button></span></a>
                        <span class="right xg"><button
                                class="btn btn-danger deleTask" style="color: #FFFFFF;"> 删除</button></span>
                    </td>
                    <td>
                        <a href="../manage/infoMore.jsp"> <span class="xg"><button class="btn btn-primary"
                                                                                   style="color: #FFFFFF;"> 更多</button></span></a>
                    </td>
                </tr>
                <tr>
                    <td>G201640975</td>
                    <td>武汉混凝土</td>
                    <td>已发布</td>
                    <td>王工</td>
                    <td>客服一号</td>
                    <td>2016.11.11 11:11</td>
                    <td>走访客户</td>
                    <td>系统故障</td>
                    <td>80元/h</td>
                    <td>大唐建设</td>
                    <td>Item201611</td>
                    <td>C201611</td>
                    <td>
                        <a href="swindex.html"> <span class="left xg"><button class="btn btn-info"
                                                                              style="color: #FFFFFF"
                                                                              ;>修改</button></span></a>
                        <span class="right xg"><button
                                class="btn btn-danger deleTask" style="color: #FFFFFF;"> 删除</button></span>
                    </td>
                    <td>
                        <a href="../manage/infoMore.jsp"> <span class="xg"><button class="btn btn-primary"
                                                                                   style="color: #FFFFFF;"> 更多</button></span></a>
                    </td>
                </tr>
                <tr>
                    <td>G201640975</td>
                    <td>武汉混凝土</td>
                    <td>已发布</td>
                    <td>王工</td>
                    <td>客服一号</td>
                    <td>2016.11.11 11:11娗
                    <td>走访客户</td>
                    <td>系统故障</td>
                    <td>80元/h</td>
                    <td>大唐建设</td>
                    <td>Item201611</td>
                    <td>C201611</td>
                    <td>
                        <a href="swindex.html"> <span class="left xg"><button class="btn btn-info"
                                                                              style="color: #FFFFFF"
                                                                              ;>修改</button></span></a>
                        <span class="right xg"><button
                                class="btn btn-danger deleTask" style="color: #FFFFFF;"> 删除</button></span>
                    </td>
                    <td>
                        <a href="../manage/infoMore.jsp"> <span class="xg"><button class="btn btn-primary"
                                                                                   style="color: #FFFFFF;"> 更多</button></span></a>
                    </td>
                </tr>
                <tr>
                    <td>G201640975</td>
                    <td>武汉混凝土</td>
                    <td>已发布</td>
                    <td>王工</td>
                    <td>客服一号</td>
                    <td>2016.11.11 11:11</td>
                    <td>走访客户</td>
                    <td>系统故障</td>
                    <td>80元/h</td>
                    <td>大唐建设</td>
                    <td>Item201611</td>
                    <td>C201611</td>
                    <td>
                        <a href="swindex.html"> <span class="left xg"><button class="btn btn-info"
                                                                              style="color: #FFFFFF"
                                                                              ;>修改</button></span></a>
                        <span class="right xg"><button
                                class="btn btn-danger deleTask" style="color: #FFFFFF;"> 删除</button></span>
                    </td>
                    <td>
                        <a href="../manage/infoMore.jsp"> <span class="xg"><button class="btn btn-primary"
                                                                                   style="color: #FFFFFF;"> 更多</button></span></a>
                    </td>
                </tr>
                <tr>
                    <td>G201640975</td>
                    <td>武汉混凝土</td>
                    <td>已发布</td>
                    <td>王工</td>
                    <td>客服一号</td>
                    <td>2016.11.11 11:11</td>
                    <td>走访客户</td>
                    <td>系统故障</td>
                    <td>80元/h</td>
                    <td>大唐建设</td>
                    <td>Item201611</td>
                    <td>C201611</td>

                    <td>
                        <a href="swindex.html"> <span class="left xg"><button class="btn btn-info"
                                                                              style="color: #FFFFFF"
                                                                              ;>修改</button></span></a>
                        <span class="right xg"><button
                                class="btn btn-danger deleTask" style="color: #FFFFFF;"> 删除</button></span>
                    </td>
                    <td>
                        <a href="../manage/infoMore.jsp"> <span class="xg"><button class="btn btn-primary"
                                                                                   style="color: #FFFFFF;"> 更多</button></span></a>
                    </td>
                </tr>
                <tr>
                    <td>G201640975</td>
                    <td>武汉混凝土</td>
                    <td>已发布</td>
                    <td>王工</td>
                    <td>客服一号</td>
                    <td>2016.11.11 11:11</td>
                    <td>走访客户</td>
                    <td>系统故障</td>
                    <td>80元/h</td>
                    <td>大唐建设</td>
                    <td>Item201611</td>
                    <td>C201611</td>
                    <td>
                        <a href="swindex.html"> <span class="left xg"><button class="btn btn-info"
                                                                              style="color: #FFFFFF"
                                                                              ;>修改</button></span></a>
                        <span class="right xg"><button
                                class="btn btn-danger deleTask" style="color: #FFFFFF;"> 删除</button></span>
                    </td>
                    <td>
                        <a href="../manage/infoMore.jsp"> <span class="xg"><button class="btn btn-primary"
                                                                                   style="color: #FFFFFF;"> 更多</button></span></a>
                    </td>
                </tr>
                </tbody>
            </table>
            <!-- 导出列表 -->
            <table class="table table-bordered" id="tableExcel" style="display:none;">
                <thead>
                <tr>
                    <td>任务编号</td>
                    <td>项目名称</td>
                    <td>客户名称</td>
                    <td>任务状态</td>
                    <td>执行人</td>
                    <td>添加人</td>
                    <td>添加时间</td>
                    <td>任务类型</td>
                    <td>故障类型</td>
                    <td>收费标准</td>

                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>G201640975</td>
                    <td>武汉混凝土</td>
                    <td>武汉</td>
                    <td>已发布</td>
                    <td>王工</td>
                    <td>客服一号</td>
                    <td>2016.11.11 11:11</td>
                    <td>走访客户</td>
                    <td>走访</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td>G201640975</td>
                    <td>武汉混凝土</td>
                    <td>武汉</td>
                    <td>已发布</td>
                    <td>王工</td>
                    <td>客服一号</td>
                    <td>2016.11.11 11:11</td>
                    <td>走访客户</td>
                    <td>走访</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td>G201640975</td>
                    <td>武汉混凝土</td>
                    <td>武汉</td>
                    <td>已发布</td>
                    <td>王工</td>
                    <td>客服一号</td>
                    <td>2016.11.11 11:11</td>
                    <td>走访客户</td>
                    <td>走访</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td>G201640975</td>
                    <td>武汉混凝土</td>
                    <td>武汉</td>
                    <td>已发布</td>
                    <td>王工</td>
                    <td>客服一号</td>
                    <td>2016.11.11 11:11</td>
                    <td>走访客户</td>
                    <td>走访</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td>G201640975</td>
                    <td>武汉混凝土</td>
                    <td>武汉</td>
                    <td>已发布</td>
                    <td>王工</td>
                    <td>客服一号</td>
                    <td>2016.11.11 11:11</td>
                    <td>走访客户</td>
                    <td>走访</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td>G201640975</td>
                    <td>武汉混凝土</td>
                    <td>武汉</td>
                    <td>已发布</td>
                    <td>王工</td>
                    <td>客服一号</td>
                    <td>2016.11.11 11:11</td>
                    <td>走访客户</td>
                    <td>走访</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td>G201640975</td>
                    <td>武汉混凝土</td>
                    <td>武汉</td>
                    <td>已发布</td>
                    <td>王工</td>
                    <td>客服一号</td>
                    <td>2016.11.11 11:11</td>
                    <td>走访客户</td>
                    <td>走访</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td>G201640975</td>
                    <td>武汉混凝土</td>
                    <td>武汉</td>
                    <td>已发布</td>
                    <td>王工</td>
                    <td>客服一号</td>
                    <td>2016.11.11 11:11</td>
                    <td>走访客户</td>
                    <td>走访</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td>G201640975</td>
                    <td>武汉混凝土</td>
                    <td>武汉</td>
                    <td>已发布</td>
                    <td>王工</td>
                    <td>客服一号</td>
                    <td>2016.11.11 11:11</td>
                    <td>走访客户</td>
                    <td>走访</td>
                    <td>0</td>
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
</div>
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
                <input type="button" class="btn2 btn_confirm_cancel" value="确认" id="btn_confirm_deleteTask">　
                <input type="button" class="btn2 btn_confirm_cancel" value="取消" id="btn_confirm_cancel">
            </div>
        </div>
    </div>
</div>
<div id="ShowBolightBox" style=" width: 1932px; height: 100%;display:none;"></div>
<div id="zhe" style="display:none;"></div>
<script>
  var idTmr;
  function getExplorer() {
    var explorer = window.navigator.userAgent;
    //ie
    if (explorer.indexOf("MSIE") >= 0) {
      return 'ie';
    }
    //firefox
    else if (explorer.indexOf("Firefox") >= 0) {
      return 'Firefox';
    }
    //Chrome
    else if (explorer.indexOf("Chrome") >= 0) {
      return 'Chrome';
    }
    //Opera
    else if (explorer.indexOf("Opera") >= 0) {
      return 'Opera';
    }
    //Safari
    else if (explorer.indexOf("Safari") >= 0) {
      return 'Safari';
    }
  }
  function method5(tableid) {
    if (getExplorer() == 'ie') {
      var curTbl = document.getElementById(tableid);
      var oXL = new ActiveXObject("Excel.Application");
      var oWB = oXL.Workbooks.Add();
      var xlsheet = oWB.Worksheets(1);
      var sel = document.body.createTextRange();
      sel.moveToElementText(curTbl);
      sel.select();
      sel.execCommand("Copy");
      xlsheet.Paste();
      oXL.Visible = true;

      try {
        var fname = oXL.Application.GetSaveAsFilename("Excel.xls", "Excel Spreadsheets (*.xls), *.xls");
      } catch (e) {
        print("Nested catch caught " + e);
      } finally {
        oWB.SaveAs(fname);
        oWB.Close(savechanges = false);
        oXL.Quit();
        oXL = null;
        idTmr = window.setInterval("Cleanup();", 1);
      }

    }
    else {
      tableToExcel(tableid)
    }
  }
  function Cleanup() {
    window.clearInterval(idTmr);
    CollectGarbage();
  }
  var tableToExcel = (function () {
    var uri = 'data:application/vnd.ms-excel;base64,',
        template = '<html><head><meta charset="UTF-8"></head><body><table>{table}</table></body></html>',
        base64 = function (s) {
          return window.btoa(unescape(encodeURIComponent(s)))
        },
        format = function (s, c) {
          return s.replace(/{(\w+)}/g,
              function (m, p) {
                return c[p];
              })
        }
    return function (table, name) {
      if (!table.nodeType) table = document.getElementById(table)
      var ctx = {worksheet: name || 'Worksheet', table: table.innerHTML}
      window.location.href = uri + base64(format(template, ctx))
    }
  })()
</script>
</body>
</html>