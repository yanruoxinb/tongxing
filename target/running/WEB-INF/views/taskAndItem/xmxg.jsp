<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>项目详情</title>
    <style>
        .padright {
            padding-right: 47px;
        }

        .padding {
            margin: 0 30px;
        }

        .peizhidetail input {
            width: 70%;
        }

        .peizhidetail thead tr td {
            padding: 8px 0;
        }
        input[type="text"]{
            width:80%;
        }
    </style>
</head>
<body>
<!------------------------------客户详情---------------------------------->
<jsp:include page="../public/menulist.jsp"></jsp:include>
<jsp:include page="../public/lib.jsp"></jsp:include>
<div style="height:50px;width:350px;font-size:26px;font-family:'华文行楷','Arial','Microsoft YaHei','黑体','宋体','sans-serif';margin:0 auto; border:1px solid #008cee;background-color:#008cee;color:#fff;z-index:999;display:inline-block;line-height:50px;text-align:center;border-radius:20px;position:absolute;right: 42%;top: 480px;display:none;"
     class="noticeCon">
    操作成功
</div>


<div class="contaner" id="page7"
     style="width:86%;float:right;padding:0 35px;border:1px solid #ddd;margin:10px  10px 0 0;">
    <a id="btn1" href="swindex.html" style="left: -30px;padding: 17px 10px;float: left;position: relative;"> 首页 / </a>
    <a class="btn1" href="javascript:void(0)" style="left: -30px;padding: 17px 5px;float: left;position: relative;">
        功能列表</a>
    <div class="section">
        <h2 class="baoxiao">项目详情</h2>

        <form class="form-horizontal" role="form">

            <div style="float:left;    padding: 15px 0 10px 0;">
                <button type="button" class="btn" id="addTask"
                        style="background-color: #008cee;color: #fff;margin-left:10px;">新增
                </button>
                <button type="button" class="btn btn-danger" id="deleteTask" style="margin-left:10px;" onclick="">删除
                </button>
            </div>
            <div>
                <h3 style="text-align: center; padding: 20px 0 10px 0;" >配置明细</h3>
            </div>
            <div class="table-responsive" style="margin:15px 10px  0  0 ;">

                <table class="table table-bordered peizhidetail">
                    <thead>
                    <tr>
                        <td style="padding: 0px 0px;">序号</td>
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
                        <td><input type="text" value="商品砼自动化生产管理软件V6.0" style="width: 100%;"></td>
                        <td><input type="text" value="套"></td>
                        <td><input type="text" value="24000"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="24000"></td>
                        <td><input type="text" value="标准版"></td>
                        <td><input type="text" value="思伟"></td>
                        <td><input type="text" value=""></td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td><input type="text" value="工业控制机" style="width: 100%;"></td>
                        <td><input type="text" value="台"></td>
                        <td><input type="text" value="9000"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="9000"></td>
                        <td><input type="text" value="SW-848"></td>
                        <td><input type="text" value="思伟"></td>
                        <td><input type="text" value=""></td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td><input type="text" value="工业控制输入板" style="width: 100%;"></td>
                        <td><input type="text" value="块"></td>
                        <td><input type="text" value="2880"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="2880"></td>
                        <td><input type="text" value="IPC-3200A"></td>
                        <td><input type="text" value="思伟"></td>
                        <td><input type="text" value=""></td>

                    </tr>
                    <tr>
                        <td>4</td>
                        <td><input type="text" value="工业控制输出板" style="width: 100%;"></td>
                        <td><input type="text" value="块"></td>
                        <td><input type="text" value="3160"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="3160"></td>
                        <td><input type="text" value="IIPC-0032B"></td>
                        <td><input type="text" value="思伟"></td>
                        <td><input type="text" value=""></td>

                    </tr>

                    <tr>
                        <td>5</td>
                        <td><input type="text" value="商品砼自动化生产管理软件V6.0" style="width: 100%;"></td>
                        <td><input type="text" value="套"></td>
                        <td><input type="text" value="24000"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="24000"></td>
                        <td><input type="text" value="标准版"></td>
                        <td><input type="text" value="思伟"></td>
                        <td><input type="text" value=""></td>
                    </tr>
                    <tr>
                        <td>6</td>
                        <td><input type="text" value="工业控制机" style="width: 100%;"></td>
                        <td><input type="text" value="台"></td>
                        <td><input type="text" value="9000"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="9000"></td>
                        <td><input type="text" value="SW-848"></td>
                        <td><input type="text" value="思伟"></td>
                        <td><input type="text" value=""></td>
                    </tr>
                    <tr>
                        <td>7</td>
                        <td><input type="text" value="工业控制输入板" style="width: 100%;"></td>
                        <td><input type="text" value="块"></td>
                        <td><input type="text" value="2880"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="2880"></td>
                        <td><input type="text" value="IPC-3200A"></td>
                        <td><input type="text" value="思伟"></td>
                        <td><input type="text" value=""></td>

                    </tr>
                    <tr>
                        <td>8</td>
                        <td><input type="text" value="工业控制输出板" style="width: 100%;"></td>
                        <td><input type="text" value="块"></td>
                        <td><input type="text" value="3160"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="3160"></td>
                        <td><input type="text" value="IIPC-0032B"></td>
                        <td><input type="text" value="思伟"></td>
                        <td><input type="text" value=""></td>

                    </tr>
                    <tr>
                        <td>9</td>
                        <td><input type="text" value="商品砼自动化生产管理软件V6.0" style="width: 100%;"></td>
                        <td><input type="text" value="套"></td>
                        <td><input type="text" value="24000"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="24000"></td>
                        <td><input type="text" value="标准版"></td>
                        <td><input type="text" value="思伟"></td>
                        <td><input type="text" value=""></td>
                    </tr>
                    <tr>
                        <td>10</td>
                        <td><input type="text" value="工业控制机" style="width: 100%;"></td>
                        <td><input type="text" value="台"></td>
                        <td><input type="text" value="9000"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="9000"></td>
                        <td><input type="text" value="SW-848"></td>
                        <td><input type="text" value="思伟"></td>
                        <td><input type="text" value=""></td>
                    </tr>
                    <tr>
                        <td>11</td>
                        <td><input type="text" value="工业控制输入板" style="width: 100%;"></td>
                        <td><input type="text" value="块"></td>
                        <td><input type="text" value="2880"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="2880"></td>
                        <td><input type="text" value="IPC-3200A"></td>
                        <td><input type="text" value="思伟"></td>
                        <td><input type="text" value=""></td>

                    </tr>
                    <tr>
                        <td>12</td>
                        <td><input type="text" value="工业控制输出板" style="width: 100%;"></td>
                        <td><input type="text" value="块"></td>
                        <td><input type="text" value="3160"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="3160"></td>
                        <td><input type="text" value="IIPC-0032B"></td>
                        <td><input type="text" value="思伟"></td>
                        <td><input type="text" value=""></td>

                    </tr>

                    <tr>
                        <td>13</td>
                        <td><input type="text" value="商品砼自动化生产管理软件V6.0" style="width: 100%;"></td>
                        <td><input type="text" value="套"></td>
                        <td><input type="text" value="24000"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="24000"></td>
                        <td><input type="text" value="标准版"></td>
                        <td><input type="text" value="思伟"></td>
                        <td><input type="text" value=""></td>
                    </tr>
                    <tr>
                        <td>14</td>
                        <td><input type="text" value="工业控制机" style="width: 100%;"></td>
                        <td><input type="text" value="台"></td>
                        <td><input type="text" value="9000"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="9000"></td>
                        <td><input type="text" value="SW-848"></td>
                        <td><input type="text" value="思伟"></td>
                        <td><input type="text" value=""></td>
                    </tr>
                    <tr>
                        <td>15</td>
                        <td><input type="text" value="工业控制输入板" style="width: 100%;"></td>
                        <td><input type="text" value="块"></td>
                        <td><input type="text" value="2880"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="2880"></td>
                        <td><input type="text" value="IPC-3200A"></td>
                        <td><input type="text" value="思伟"></td>
                        <td><input type="text" value=""></td>

                    </tr>
                    <tr>
                        <td>16</td>
                        <td><input type="text" value="工业控制输出板" style="width: 100%;"></td>
                        <td><input type="text" value="块"></td>
                        <td><input type="text" value="3160"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="3160"></td>
                        <td><input type="text" value="IIPC-0032B"></td>
                        <td><input type="text" value="思伟"></td>
                        <td><input type="text" value=""></td>

                    </tr>
                    <tr>
                        <td>17</td>
                        <td><input type="text" value="工业控制输入板" style="width: 100%;"></td>
                        <td><input type="text" value="块"></td>
                        <td><input type="text" value="2880"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="2880"></td>
                        <td><input type="text" value="IPC-3200A"></td>
                        <td><input type="text" value="思伟"></td>
                        <td><input type="text" value=""></td>

                    </tr>
                    <tr>
                        <td>18</td>
                        <td><input type="text" value="工业控制输出板" style="width: 100%;"></td>
                        <td><input type="text" value="块"></td>
                        <td><input type="text" value="3160"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="3160"></td>
                        <td><input type="text" value="IIPC-0032B"></td>
                        <td><input type="text" value="思伟"></td>
                        <td><input type="text" value=""></td>

                    </tr>
                    <tr>
                        <td>19</td>
                        <td><input type="text" value="商品砼自动化生产管理软件V6.0" style="width: 100%;"></td>
                        <td><input type="text" value="套"></td>
                        <td><input type="text" value="24000"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="24000"></td>
                        <td><input type="text" value="标准版"></td>
                        <td><input type="text" value="思伟"></td>
                        <td><input type="text" value=""></td>
                    </tr>
                    <tr>
                        <td>20</td>
                        <td colspan="4">税金(元)</td>
                        <td><input type="text" value="70280"></td>
                        <td colspan="2"></td>

                        <td><input type="text" value="￥48,000.00"></td>
                    </tr>
                    <tr>
                        <td>21</td>
                        <td colspan="4">优惠价(元)</td>
                        <td><input type="text" value="48000"></td>
                        <td colspan="2"></td>

                        <td><input type="text" value="￥70,280.00"></td>
                    </tr>
                    </tbody>
                </table>
            </div>

            <div class="table-responsive" style="margin:15px 0;">
                <caption style="text-align: left;font-weight:700!important;">工艺明细</caption>
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <td></td>
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
                        <td><input type="checkbox" name="pzmxEdit"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>

                    </tr>
                    <tr>
                        td><input type="checkbox" name="pzmxEdit"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>

                    </tr>
                    <tr>
                        td><input type="checkbox" name="pzmxEdit"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>
                        <td><input type="text" value="1"></td>

                    </tr>

                    </tbody>
                </table>

            </div>
            <div style="    margin: 15px 0 0 0;">
                 <textarea style="width:80%;margin-right:44px;" class="form-control right" name="sendDemand" rows="6"
                           id="sendDemand" placeholder="  请输入特殊工艺说明" value="" disabled="disabled">
                 搅拌站工艺：
                        > 4个骨料仓对应4个骨料秤通过皮带上料（中途仓有秤）
                        > 1个掺和剂对应1个秤通过斜皮带上料 
                        > 1个水对应1个秤
                        > 2个外加剂对应1个 秤
                    </textarea>
                <p style="margin-right: 8px;float:right;color:#000;">特殊工艺说明：</p>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group">
                        <!--  <div style="text-align:center;display:inline-block;width:50%;float:left;"> -->
                        <a href="xm.jsp">
                            <button type="button" class="btn padding" style="background-color: #008cee;color: #fff">确定
                            </button>
                        </a>
                        <!--  </div> -->
                        <!--  <div style="text-align:center;display:inline-block;width:50%;float:right;"> -->
                        <button type="reset" class="btn" style="background-color: #008cee;color: #fff">重置</button>
                        <!--  </div> -->
                    </div>
                </div>
            </div>
        </form>
    </div>
    <div class="submit">
        <button class="btn">提交</button>
    </div>

</div>
</body>
</html>