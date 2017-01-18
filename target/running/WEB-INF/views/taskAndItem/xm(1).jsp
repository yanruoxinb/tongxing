<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>项目管理</title>
</head>
<body>
<!------------------------------项目管理---------------------------------->
<jsp:include page="../public/menulist.jsp"></jsp:include>
<jsp:include page="../public/lib.jsp"></jsp:include>

<div style="height:50px;width:350px;font-size:26px;font-family:'华文行楷','Arial','Microsoft YaHei','黑体','宋体','sans-serif';margin:0 auto; border:1px solid #008cee;background-color:#008cee;color:#fff;z-index:999;display:inline-block;line-height:50px;text-align:center;border-radius:20px;position:absolute;right: 42%;top: 480px;display:none;" class="noticeCon">
    操作成功
</div>


<div class="contaner"  id="page10"style="width:86%;float:right;padding:0 35px;border:1px solid #ddd">
     <a id="btn1" href="swindex.html"style="left: -30px;padding: 17px 10px;float: left;position: relative;" > 首页 / </a>
    <a class="btn1" href="javascript:void(0)"style="left: -30px;padding: 17px 5px;float: left;position: relative;" > 功能列表</a>
    <div class="section"  style="margin:15px 0;">
        <h3 class="baoxiao">项目管理</h3>
        <form style="border:1px solid #ddd;padding:10px 20px;border-radius:5px;text-align:left;    margin: 10px 10px 0 0;">
            <label>项目编号</label>&nbsp;&nbsp;
            <select name="set"  class="set">
                <option value="">------请选择------</option>
                <option value="1">888888</option>
                <option value="2">666666</option>
                <option value="3">999999</option>
            </select>&nbsp;&nbsp;

            <label>名称</label>&nbsp;&nbsp;
            <input type="text" placeholder="请输入项目名称或者客户名称" class="set" style="    width: 14%;" />&nbsp;&nbsp;

            <label>发布时间</label>&nbsp;&nbsp;
            <input type="date" placeholder="请选择申请时间" class="set" style="line-height: normal;"/>&nbsp;&nbsp;

            <label>质保期状态</label>&nbsp;&nbsp;
            <select name="set"  class="set">
                <option value="">------请选择------</option>
                <option value="1">已过期</option>
                <option value="2">未过期</option>
            </select>&nbsp;&nbsp;

            <label>项目状态</label>&nbsp;&nbsp;
            <select name="set"  class="set">
                <option value="">------请选择------</option>
                <option value="1">已完成</option>
                <option value="2">未完成</option>
            </select>&nbsp;&nbsp;

            <button type="button" class="btn" style="background-color: #008cee;    margin: 0 12px;color: #fff">搜索</button>
            <button type="reset" class="btn" style="background-color: #008cee;color: #fff">重置</button>
        </form>
        <div class="table-responsive" style="margin-top:15px;">
            <table class="table table-bordered"  style="margin: 0 -5px;">
                <thead>
                <tr>
                    <td>项目编号</td>
                    <td>项目名称</td>
                    <td>客户名称</td>
                    <td>项目代码</td>
                    <td>质保期状态</td>
                    <td>试运行日期</td>
                    <td>调试日期</td>
                    <td>验收日期</td>
                    <td>联系人</td>
                    <td>联系人电话</td>
                    <td>调试人员</td>
                    <td>项目状态</td>
                    <td>配置明细</td>
                     <td>工艺明细</td>
                    <td>操作</td>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>P20161111</td>
                    <td>大唐建设</td>
                    <td>陕西大唐</td>
                    <td>1</td>
                    <td>质保期内</td>
                    <td>1111</td>
                    <td>1111</td>
                    <td>1111</td>
                    <td>刘先生</td>
                    <td>1888888888</td>
                    <td>刘工</td>
                    <td>新项目</td>
                    <td style="color:blue;" class="pz_mx">明细</td>
                     <td style="color:blue;" class="gy_mx">明细</td>
                    <td>
                        <a href="xmxg.jsp"><span class="left xg"><button class="btn btn-info" style="color: #FFFFFF">修改</button></span></a>
                        <span  class="right xg"><button class="btn btn-danger" style="color: #ffffff" onclick="Showbo.Msg.confirm('您确认要进行删除操作吗？')"> 删除</button></span>
                    </td>
                </tr>
                <tr>
                    <td>P20161112</td>
                    <td>大清建设</td>
                    <td>大清朝</td>
                    <td>1</td>
                    <td>已过期</td>
                    <td>1111</td>
                    <td>1111</td>
                    <td>1111</td>
                    <td>刘先生</td>
                    <td>1888888888</td>
                    <td>王工</td>
                    <td>新项目</td>
                    <td style="color:blue;" class="pz_mx">明细</td>
                     <td style="color:blue;" class="gy_mx">明细</td>
                    <td>
                       <a href="xmxg.jsp"><span class="left xg"><button class="btn btn-info" style="color: #FFFFFF">修改</button></span></a>
                        <span  class="right xg"><button class="btn btn-danger" style="color: #ffffff" onclick="Showbo.Msg.confirm('您确认要进行删除操作吗？')"> 删除</button></span>
                    </td>
                </tr>
                <tr>
                    <td>P20161112</td>
                    <td>大清建设</td>
                    <td>大清朝</td>
                    <td>1</td>
                    <td>已过期</td>
                    <td>1111</td>
                    <td>1111</td>
                    <td>1111</td>
                    <td>刘先生</td>
                    <td>1888888888</td>
                    <td>王工</td>
                    <td>新项目</td>
                    <td style="color:blue;" class="pz_mx">明细</td>
                     <td style="color:blue;" class="gy_mx">明细</td>
                    <td>
                       <a href="xmxg.jsp"><span class="left xg"><button class="btn btn-info" style="color: #FFFFFF">修改</button></span></a>
                        <span  class="right xg"><button class="btn btn-danger" style="color: #ffffff" onclick="Showbo.Msg.confirm('您确认要进行删除操作吗？')"> 删除</button></span>
                    </td>
                </tr>
                <tr>
                    <td>P20161112</td>
                    <td>大清建设</td>
                    <td>大清朝</td>
                    <td>1</td>
                    <td>已过期</td>
                    <td>1111</td>
                    <td>1111</td>
                    <td>1111</td>
                    <td>刘先生</td>
                    <td>1888888888</td>
                    <td>王工</td>
                    <td>新项目</td>
                    <td style="color:blue;" class="pz_mx">明细</td>
                     <td style="color:blue;" class="gy_mx">明细</td>
                    <td>
                        <a href="xmxg.jsp"><span class="left xg"><button class="btn btn-info" style="color: #FFFFFF">修改</button></span></a>
                        <span  class="right xg"><button class="btn btn-danger" style="color: #ffffff" onclick="Showbo.Msg.confirm('您确认要进行删除操作吗？')"> 删除</button></span>
                    </td>
                </tr>
                 <tr>
                    <td>P20161111</td>
                    <td>大唐建设</td>
                    <td>陕西大唐</td>
                    <td>1</td>
                    <td>质保期内</td>
                    <td>1111</td>
                    <td>1111</td>
                    <td>1111</td>
                    <td>刘先生</td>
                    <td>1888888888</td>
                    <td>刘工</td>
                    <td>新项目</td>
                    <td style="color:blue;" class="pz_mx">明细</td>
                     <td style="color:blue;" class="gy_mx">明细</td>
                    <td>
                        <a href="xmxg.jsp"><span class="left xg"><button class="btn btn-info" style="color: #FFFFFF">修改</button></span></a>
                        <span  class="right xg"><button class="btn btn-danger" style="color: #ffffff" onclick="Showbo.Msg.confirm('您确认要进行删除操作吗？')"> 删除</button></span>
                    </td>
                </tr>
                <tr>
                    <td>P20161112</td>
                    <td>大清建设</td>
                    <td>大清朝</td>
                    <td>1</td>
                    <td>已过期</td>
                    <td>1111</td>
                    <td>1111</td>
                    <td>1111</td>
                    <td>刘先生</td>
                    <td>1888888888</td>
                    <td>王工</td>
                    <td>新项目</td>
                    <td style="color:blue;" class="pz_mx">明细</td>
                     <td style="color:blue;" class="gy_mx">明细</td>
                    <td>
                       <a href="xmxg.jsp"><span class="left xg"><button class="btn btn-info" style="color: #FFFFFF">修改</button></span></a>
                        <span  class="right xg"><button class="btn btn-danger" style="color: #ffffff" onclick="Showbo.Msg.confirm('您确认要进行删除操作吗？')"> 删除</button></span>
                    </td>
                </tr>
                <tr>
                    <td>P20161112</td>
                    <td>大清建设</td>
                    <td>大清朝</td>
                    <td>1</td>
                    <td>已过期</td>
                    <td>1111</td>
                    <td>1111</td>
                    <td>1111</td>
                    <td>刘先生</td>
                    <td>1888888888</td>
                    <td>王工</td>
                    <td>新项目</td>
                    <td style="color:blue;" class="pz_mx">明细</td>
                     <td style="color:blue;" class="gy_mx">明细</td>
                    <td>
                       <a href="xmxg.jsp"><span class="left xg"><button class="btn btn-info" style="color: #FFFFFF">修改</button></span></a>
                        <span  class="right xg"><button class="btn btn-danger" style="color: #ffffff" onclick="Showbo.Msg.confirm('您确认要进行删除操作吗？')"> 删除</button></span>
                    </td>
                </tr>
                <tr>
                    <td>P20161112</td>
                    <td>大清建设</td>
                    <td>大清朝</td>
                    <td>1</td>
                    <td>已过期</td>
                    <td>1111</td>
                    <td>1111</td>
                    <td>1111</td>
                    <td>刘先生</td>
                    <td>1888888888</td>
                    <td>王工</td>
                    <td>新项目</td>
                    <td style="color:blue;" class="pz_mx">明细</td>
                     <td style="color:blue;" class="gy_mx">明细</td>
                    <td>
                        <a href="xmxg.jsp"><span class="left xg"><button class="btn btn-info" style="color: #FFFFFF">修改</button></span></a>
                        <span  class="right xg"><button class="btn btn-danger" style="color: #ffffff" onclick="Showbo.Msg.confirm('您确认要进行删除操作吗？')"> 删除</button></span>
                    </td>
                </tr>
                <tr>
                    <td>P20161112</td>
                    <td>大清建设</td>
                    <td>大清朝</td>
                    <td>1</td>
                    <td>已过期</td>
                    <td>1111</td>
                    <td>1111</td>
                    <td>1111</td>
                    <td>刘先生</td>
                    <td>1888888888</td>
                    <td>王工</td>
                    <td>新项目</td>
                    <td style="color:blue;" class="pz_mx">明细</td>
                     <td style="color:blue;" class="gy_mx">明细</td>
                    <td>
                        <a href="xmxg.jsp"><span class="left xg"><button class="btn btn-info" style="color: #FFFFFF">修改</button></span></a>
                        <span  class="right xg"><button class="btn btn-danger" style="color: #ffffff" onclick="Showbo.Msg.confirm('您确认要进行删除操作吗？')"> 删除</button></span>
                    </td>
                </tr>                
                </tbody>
            </table>
        </div>
        <div class="table-responsive pzmx" style="margin:15px 0;display: none">
            <table class="table table-bordered">
                <thead>
                <tr>
                    <td>序号</td>
                    <td>名称</td>
                    <td>单位</td>
                    <td>单价(元)</td>
                    <td>数量</td>
                    <td>总价(元)</td>
                    <td>型号</td>
                    <td>品牌</td>
                    <td>备注</td>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td>商品砼自动化生产管理软件V6.0</td>
                    <td>套</td>
                    <td>24000</td>
                    <td>1</td>
                    <td>24000</td>
                    <td>标准版</td>
                    <td>思伟</td>
                    <td>备注</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>工业控制机</td>
                    <td>台</td>
                    <td>9000</td>
                    <td>1</td>
                    <td>9000</td>
                    <td>SW-848</td>
                    <td>思伟</td>
                    <td></td>
                </tr>
                <tr>
                   <td>3</td>
                    <td>工业控制输入板</td>
                    <td>块</td>
                    <td>2880</td>
                    <td>1</td>
                    <td>2880</td>
                    <td>IPC-3200A</td>
                    <td>思伟</td>
                    <td></td>
                </tr>
                <tr>
                   <td>4</td>
                    <td>工业控制输出板</td>
                    <td>块</td>
                    <td>3160</td>
                    <td>2</td>
                    <td>6320</td>
                    <td>IPC-0032B</td>
                    <td>思伟</td>
                    <td></td>
                </tr>
                <tr>
                   <td>5</td>
                    <td>工业控制输出板</td>
                    <td>块</td>
                    <td>3160</td>
                    <td>2</td>
                    <td>6320</td>
                    <td>IPC-0032B</td>
                    <td>思伟</td>
                    <td></td>
                </tr>
                 <tr>
                   <td>6</td>
                    <td>工业控制输出板</td>
                    <td>块</td>
                    <td>3160</td>
                    <td>2</td>
                    <td>6320</td>
                    <td>IPC-0032B</td>
                    <td>思伟</td>
                    <td></td>
                </tr> 
                <tr>
                   <td>7</td>
                    <td>工业控制输出板</td>
                    <td>块</td>
                    <td>3160</td>
                    <td>2</td>
                    <td>6320</td>
                    <td>IPC-0032B</td>
                    <td>思伟</td>
                    <td></td>
                </tr>  
                <tr>
                   <td>8</td>
                    <td>工业控制输出板</td>
                    <td>块</td>
                    <td>3160</td>
                    <td>2</td>
                    <td>6320</td>
                    <td>IPC-0032B</td>
                    <td>思伟</td>
                    <td></td>
                </tr>  
                <tr>
                   <td>9</td>
                    <td>工业控制输出板</td>
                    <td>块</td>
                    <td>3160</td>
                    <td>2</td>
                    <td>6320</td>
                    <td>IPC-0032B</td>
                    <td>思伟</td>
                    <td></td>
                </tr> 
                <tr>
                   <td>10</td>
                    <td>工业控制输出板</td>
                    <td>块</td>
                    <td>3160</td>
                    <td>2</td>
                    <td>6320</td>
                    <td>IPC-0032B</td>
                    <td>思伟</td>
                    <td></td>
                </tr> 
                <tr>
                   <td>11</td>
                    <td>工业控制输出板</td>
                    <td>块</td>
                    <td>3160</td>
                    <td>2</td>
                    <td>6320</td>
                    <td>IPC-0032B</td>
                    <td>思伟</td>
                    <td></td>
                </tr> 
                <tr>
                   <td>12</td>
                    <td>工业控制输出板</td>
                    <td>块</td>
                    <td>3160</td>
                    <td>2</td>
                    <td>6320</td>
                    <td>IPC-0032B</td>
                    <td>思伟</td>
                    <td></td>
                </tr>  
                <tr>
                   <td>13</td>
                    <td>工业控制输出板</td>
                    <td>块</td>
                    <td>3160</td>
                    <td>2</td>
                    <td>6320</td>
                    <td>IPC-0032B</td>
                    <td>思伟</td>
                    <td></td>
                </tr> 
                <tr>
                   <td>14</td>
                    <td>工业控制输出板</td>
                    <td>块</td>
                    <td>3160</td>
                    <td>2</td>
                    <td>6320</td>
                    <td>IPC-0032B</td>
                    <td>思伟</td>
                    <td></td>
                </tr> 
                <tr>
                   <td>15</td>
                    <td>工业控制输出板</td>
                    <td>块</td>
                    <td>3160</td>
                    <td>2</td>
                    <td>6320</td>
                    <td>IPC-0032B</td>
                    <td>思伟</td>
                    <td></td>
                </tr> 
                <tr>
                   <td>16</td>
                    <td>工业控制输出板</td>
                    <td>块</td>
                    <td>3160</td>
                    <td>2</td>
                    <td>6320</td>
                    <td>IPC-0032B</td>
                    <td>思伟</td>
                    <td></td>
                </tr> 
                <tr>
                   <td>17</td>
                    <td>工业控制输出板</td>
                    <td>块</td>
                    <td>3160</td>
                    <td>2</td>
                    <td>6320</td>
                    <td>IPC-0032B</td>
                    <td>思伟</td>
                    <td></td>
                </tr> 
                <tr>
                   <td>18</td>
                    <td>工业控制输出板</td>
                    <td>块</td>
                    <td>3160</td>
                    <td>2</td>
                    <td>6320</td>
                    <td>IPC-0032B</td>
                    <td>思伟</td>
                    <td></td>
                </tr>  
                <tr>
                   <td>19</td>
                    <td>工业控制输出板</td>
                    <td>块</td>
                    <td>3160</td>
                    <td>2</td>
                    <td>6320</td>
                    <td>IPC-0032B</td>
                    <td>思伟</td>
                    <td></td>
                </tr> 
                <tr>
                   <td>20</td>
                    <td colspan="4">税金(元)</td>
                    <td>70280</td>
                    <td colspan="2"></td>
                    
                    <td>￥48,000.00</td>
                </tr> 
                <tr>
                   <td>21</td>
                    <td colspan="4">优惠价(元)</td>
                    <td>48000</td>
                    <td colspan="2"></td>
                    
                    <td>￥70,280.00</td>
                </tr>  
                </tbody>
            </table>
        </div>
         <div class="table-responsive gymx" style="margin:15px 0;display: none">
            <table class="table table-bordered">
                <thead>
                <tr>
                    <td>生产线</td>
                    <td>水泥仓</td>
                    <td>容量</td>
                    <td>水泥料</td>
                    <td>程序代码</td>
                    <td>粉料仓</td>
                    <td>配套厂家</td>
                    <td>粉料称</td>
                    <td>控制系统</td>
                    <td>水仓</td>
                    <td>水称</td>
                    <td>拌站形式</td>
                    <td>骨料仓</td>
                    <td>骨料称</td>
                    <td>外加剂仓</td>
                    <td>外加剂称</td>
                    <td>机器</td>
                    <td>版本</td>
                    <td>配置</td>
                    <td>聚合存储测量</td>
                    <td>特殊工艺说明</td>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                </tr>

                </tbody>
            </table>
        </div>
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
</body>
</html>