/**
 * Created by sw004 on 2017-1-18.
 */

$(document).ready(function () {
    //设置任务栏选项切换卡
    $(".task").hide();
    $(".taskList").delegate('li', 'click', function () {
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
            "<tr><td><input type='checkbox' name='task'></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td></tr>"
        );
    });
    //任务删除
    $('#deleteTask').on('click', function () {
        $("input[name='task']:checked").each(function () { // 遍历选中的checkbox
            n = $(this).parents("tr").index();  // 获取checkbox所在行的顺序
            console.log(n);
            $("#taskTable").find("tr:eq(" + n + ")").remove();
        });
    });

    //项目新增
    $("#addItem").bind('click', function () {
        $("#itemTable").append(
            "<tr><td><input type='checkbox' name='item'></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><input type='text' value=''></td><td><a href='swindex.html'><button class='btn btn-info' style='color: #FFFFFF'>修改</button></a></td>" +
            "<td><a href='../manage/infoMore.jsp'><span class='xg'><button class='btn btn-primary'>更多</button></span></a> </td></tr>"
        );
    });
    //项目删除
    $('#deleteItem').on('click', function () {
        $("input[name='item']:checked").each(function () { // 遍历选中的checkbox
            n = $(this).parents("tr").index();  // 获取checkbox所在行的顺序
            console.log(n);
            $("#itemTable").find("tr:eq(" + n + ")").remove();
        });
    });





});