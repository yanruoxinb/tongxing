<%--
  Created by IntelliJ IDEA.
  User: sw004
  Date: 2017-1-18
  Time: 16:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Title</title>
    <style>
        input[type="text"]{
            width: 80%;
        }
        input[type=checkbox]{
            opacity: 1!important;
            left:50px;
            z-index: 12;
            width: 18px;
            height: 18px;
            cursor: pointer;
        }
    </style>
</head>
<body>
<jsp:include page="../public/menulist.jsp"></jsp:include>
<jsp:include page="../public/lib.jsp"></jsp:include>
<div class="addItemSettingDetailAndCraft">
    <div class="table-responsive" style="margin:15px 0;">
        <div style="float:left;    padding: 15px 0 10px 0;">
            <button type="button" class="btn" id="addSetting" style="background-color: #008cee;color: #fff;margin-left:10px;">新增</button>
            <button type="button" class="btn btn-danger" id="deleteSetting" style="margin-left:10px;" >删除</button>
        </div>
        <div>
            <h3 style="text-align: center; padding: 20px 0 10px 0;" >配置明细</h3>
        </div>
        <table class="table table-bordered" id="pzmxTable">
            <thead>
            <tr>
                <td></td>
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
                <td><input type="checkbox" name="pzmx"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
            </tr>
            </tbody>

        </table>
    </div>
    <div class="table-responsive" style="margin:15px 0;">
        <div style="float:left;    padding: 15px 0 10px 0;">
            <button type="button" class="btn" id="addCraft"
                    style="background-color: #008cee;color: #fff;margin-left:10px;">
                新增
            </button>
            <button type="button" class="btn btn-danger" id="deleteCraft" style="margin-left:10px;" onclick="">删除</button>
        </div>
        <div>
            <h3 style="text-align: center; padding: 20px 0 10px 0;" >工艺明细</h3>
        </div>
        <table class="table table-bordered" id="gymxTable">
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
                <td><input type="checkbox" name="gymxdetail"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
            </tr>
            </tbody>
        </table>
    </div>

</div>
<div class="submit">
    <button class="btn">提交</button>
</div>
</body>
</html>
