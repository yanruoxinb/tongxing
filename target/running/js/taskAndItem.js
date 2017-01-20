/**
 * Created by sw004 on 2017-1-18.
 */

$(document).ready(function () {
    //设置任务栏选项切换卡
    $(".item").hide();
    $(".taskList").delegate('li', 'click', function () {
        $(this).addClass("taskAnditemfocus").siblings().removeClass("taskAnditemfocus");
        if ($(this).hasClass('taskShow')) {
            $(".task").show();
            $(".item").hide();
        }
        else if ($(this).hasClass('itemShow')) {
            $(".item").show();
            $(".task").hide();
        }
    });
    //任务新增
    $("#addTask").bind('click', function () {
        $("#taskTable").append(
            "<tr><td><input type='checkbox' name='task'></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><a href='swindex.html'><button class='btn btn-info' style='color: #FFFFFF'>修改</button></a></td>" +
            "<td><a href='taskMoreInfo.jsp'><span class='xg'><button class='btn btn-primary'>更多</button></span></a> </td></tr>"
        );
    });
    //任务删除
    $('#deleteTask').on('click', function () {
        $("input[name='task']:checked").each(function () { // 遍历选中的checkbox
            n = $(this).parents("tr").index() + 1;  // 获取checkbox所在行的顺序
            console.log(n);
            $("#taskTable").find("tr:eq(" + n + ")").remove();
        });
    });

    //项目新增
    $("#addItem").bind('click', function () {
        $("#itemTable").append(
            "<tr><td><input type='checkbox' name='item'></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td colspan='2'><a href=' taskAndItem/addItemSettingDetailCraftDetail'>添加明细</a></button></td><td><a href='swindex.html'><button class='btn btn-info' style='color: #FFFFFF'>修改</button></a></td>" +
            "</tr>"
        );
    });
    //项目删除
    $('#deleteItem').on('click', function () {
        $("input[name='item']:checked").each(function () { // 遍历选中的checkbox
            n = $(this).parents("tr").index() + 1;  // 获取checkbox所在行的顺序
            console.log(n);
            $("#itemTable").find("tr:eq(" + n + ")").remove();
        });
    });
    //工艺配置显示与隐藏
    $(".gymx").hide();
    $(".pzmx").hide();
    $('.pz_mx').on('click', function () {
        $(".pzmx").toggle();
        $(".gymx").hide();
    });
    $('.gy_mx').on('click', function () {
        $(".pzmx").hide();
        $(".gymx").toggle();
    });

    $(".btn_ht_detailinfomation").click(function () {
        $("#fieldset_htinfomation1").toggle();
    });

    //项目配置新增
    $("#addSetting").bind('click', function () {
        $("#pzmxTable").append(
            "<tr> <td><input type='checkbox' name='pzmx'></td><td><input type='text'></td> <td><input type='text'></td> <td><input type='text'></td> <td><input type='text'></td> <td><input type='text'></td> <td><input type='text'></td> <td><input type='text'></td> <td><input type='text'></td> <td><input type='text'></td> </tr>"
        );
    });
    //项目配置删除
    $('#deleteSetting').on('click', function () {
        $("input[name='pzmx']:checked").each(function () { // 遍历选中的checkbox
            n = $(this).parents("tr").index()+1;  // 获取checkbox所在行的顺序
            $("#pzmxTable").find("tr:eq(" + n + ")").remove();
        });
    });
    //工艺详情新增
    $("#addCraft").bind('click', function () {
        $("#gymxTable").append(
            "<tr><td><input type='checkbox' name='gymxDetail'></td><td><input type='text'></td> <td><input type='text'></td> <td><input type='text'></td> <td><input type='text'></td> <td><input type='text'></td> <td><input type='text'></td> <td><input type='text'></td> <td><input type='text'></td> <td><input type='text'></td> <td><input type='text'></td> <td><input type='text'></td> <td><input type='text'></td> <td><input type='text'></td> <td><input type='text'></td> <td><input type='text'></td> <td><input type='text'></td> <td><input type='text'></td> <td><input type='text'></td> <td><input type='text'></td> <td><input type='text'></td> <td><input type='text'></td> </tr>"
        );
    });
    //工艺详情删除
    $('#deleteCraft').on('click', function () {
        $("input[name='gymxDetail']:checked").each(function () { // 遍历选中的checkbox
            n = $(this).parents("tr").index()+1;  // 获取checkbox所在行的顺序
            $("#gymxTable").find("tr:eq(" + n + ")").remove();
        });
    });
    //修改工艺详情页面配置新增
    $("#editSettingDetail").bind('click', function () {
        $("#settingNoEdit").before(
            "<tr> <td><input type='checkbox' name='editSetting'></td><td><input type='text'></td> <td><input type='text'></td> <td><input type='text'></td> <td><input type='text'></td> <td><input type='text'></td> <td><input type='text'></td> <td><input type='text'></td> <td><input type='text'></td> <td><input type='text'></td> </tr>"
        );
    });
    //修改工艺详情页面配置删除
    $('#deleteSettingDetail').on('click', function () {
        $("input[name='editSetting']:checked").each(function () { // 遍历选中的checkbox
            n = $(this).parents("tr").index()+1;  // 获取checkbox所在行的顺序
            $("#editPeiZhiDetailTable").find("tr:eq(" + n + ")").remove();
        });
    });
    //修改工艺详情页面工艺新增
    $("#editCraftDetail").bind('click', function () {
        $("#editGymxTable").append(
            "<tr> <td><input type='checkbox' name='gymxEdit'></td><td><input type='text'></td> <td><input type='text'></td> <td><input type='text'></td> <td><input type='text'></td> <td><input type='text'></td> <td><input type='text'></td> <td><input type='text'></td> <td><input type='text'></td> <td><input type='text'></td><td><input type='text'></td> <td><input type='text'></td><td><input type='text'></td> <td><input type='text'></td><td><input type='text'></td> <td><input type='text'></td><td><input type='text'></td> <td><input type='text'></td><td><input type='text'></td> <td><input type='text'></td><td><input type='text'></td> <td><input type='text'></td> </tr>"
        );
    });
    //修改工艺详情页面工艺删除
    $('#deleteCraftDetail').on('click', function () {
        $("input[name='gymxEdit']:checked").each(function () { // 遍历选中的checkbox
            n = $(this).parents("tr").index()+1;  // 获取checkbox所在行的顺序
            $("#editGymxTable").find("tr:eq(" + n + ")").remove();
        });
    });
});