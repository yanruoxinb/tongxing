//var SAPIServerURL = "http://180.168.218.122:8181";
//var SAPIServerURL = "http://182.254.133.132:8080";
//var SAPIServerURL = "http://erp.siweisoft.cn:8181";
var SAPIServerURL = "http://localhost:8080";
function callSapiServer(url, callBackFunc, type, data, async, beforeSend, complete) {
    $.ajax({
        url: SAPIServerURL + url,
        type: type,
        data: data,
        dataType: 'json',
        async: async ? async : false,
        success: function (data) {
            callBackFunc(data);
        },
        error: function(XMLHttpRequest, textStatus, errorThrown){
            alert("系统错误，请与管理员联系！");
        },
        beforeSend: beforeSend,
        complete: complete
    });
}

function paramSerialize(serializedParams) {
    var obj={};

    function evalThem (str) {
        var attributeName = str.split("=") [0];
        var attributeValue = str.split("=")[1];

        if(!attributeValue) {
            return ;
        }

        var array = attributeName.split(".");
        for (var i = 1; i < array.length; i++) {
            var tmpArray = [];
            tmpArray.push("obj");

            for (var j = 0; j < i; j++) {
                tmpArray.push(array[j]);
            };
            var evalString = tmpArray.join(".");

            if (!eval(evalString)) {
                eval(evalString + "={};");
            }
        };

        eval("obj."+ attributeName + "='" + attributeValue + "';");
    };

    var properties = serializedParams.split("&");
    for (var i = 0; i < properties.length; i++) {
        evalThem(properties[i]);
    };
    var str = decodeURIComponent(JSON.stringify(obj));
    return str;
}


//扩展date属性方法
Date.prototype.format = function (format) {
    // year
    if (/(y+)/.test(format)) {
        format = format.replace(RegExp.$1, this.getFullYear().toString().substr(4 - RegExp.$1.length));
    }

    // week
    if (/(www)/.test(format)) {
        format = format.replace(RegExp.$1, "星期" + "日一二三四五六".substr(this.getDay(), 1));
    }
    else if (/(ww)/.test(format)) {
        format = format.replace(RegExp.$1, "周" + "日一二三四五六".substr(this.getDay(), 1));
    }

    var o = {
        "M+": this.getMonth() + 1, //month
        "d+": this.getDate(), //day
        "h+": this.getHours(), //hour
        "m+": this.getMinutes(), //minute
        "s+": this.getSeconds(), //second
        "q+": Math.floor((this.getMonth() + 3) / 3), //quarter
        "S": this.getMilliseconds() //millisecond
    };
    for (var k in o) {
        if (new RegExp("(" + k + ")").test(format)) {
            format = format.replace(RegExp.$1, RegExp.$1.length == 1 ? o[k] : ("00" + o[k]).substr(("" + o[k]).length));
        }
    }
    return format;
};

/**
 * 局部页面跳转（默认异步）
 * @param url 页面路径url
 * @param target 被填充的dom元素节点
 * @param async
 * @param before 前置方法(页面未载入前操作)
 * @param after 后置方法 (页面载入后可附加操作)
 */
function getContent(url, target, async, before, after) {
    if (url != null && url != "") {
        $.ajax({
            type: "GET",
            url: url,
            dataType: "html",
            async: async == false ? false : true,
            success: function (data) {
                if(url.indexOf("form") == 0){
                    history.pushState(data,'',null);
                }
                $(target).html(data);
            }
        });
    }
}

// 添加局部页面（默认同步）
function addContent(url, part, async) {
    var content = "";
    if (url != null && url != "") {
        $.ajax({
            type: "GET",
            url: url,
            dataType: "html",
            async: async == true ? true : false,
            success: function (data) {
                if (part != null) content = $(data).filter('[data-name="' + part + '"]').html();
                else content = data;
            }
        });
    }
    return content;
}

//自动匹配form表单的对象，自动赋值
function jsonToForm(target, data, forceBlank,prefix) {
    //{id : value,key:value....}
    $(target).find("select").each(function () {
        var name = $(this).attr("name").replace(prefix,"");
        var v = data[name];
        if (v != undefined && (forceBlank || v != '')) {
            $(this).val(v);
        }
    });
    $(target).find("textarea").each(function () {
        var name = $(this).attr("name").replace(prefix,"");
        var v = data[name];
        if (v != undefined && (forceBlank || v != '')) $(this).val(v);
    });
    $(target).find("input").each(function () {
        var type = $(this).attr("type");
        switch (type) {
            case "radio":
                var name = $(this).attr("name").replace(prefix,"");
                var v = data[name];
                if (v != undefined && (forceBlank || v != '')) {
                    var radio = $(target).find("input[name='" + $(this).attr("name") + "'][value='" + v + "']");
                    $(radio).attr("checked", "checked");
                }
                break;
            default:
                var name = $(this).attr("name").replace(prefix,"");
                var v = data[name];
                if (v != undefined && (forceBlank || v != '')) $(this).val(v);
        }
    });

}

//自动封装form表单的所有input，select，textArea对象的value值，key为name，return json
function formToJson(target,prefix) {
    var dataMap = {};
    $(target).find("select").each(function () {
        var name = $(this).attr("name").replace(prefix,"");
        dataMap[name] = $(this).val();
    });
    $(target).find("textArea").each(function () {
        var name = $(this).attr("name").replace(prefix,"");
        dataMap[name] = $(this).val();
    });
    $(target).find("input").each(function () {
        var type = $(this).attr("type");
        switch (type) {
            case "radio":
                var val = $(target).find("input[name='" + $(this).attr("name") + "']:checked").val();
                if (val == 'on') val = $(target).find("input[name='" + $(this).attr("name") + "']:checked").attr('value');
                var name = $(this).attr("name").replace(prefix,$(this).attr("name"));
                dataMap[name] = $(this).val();
                break;
            default:
                var name = $(this).attr("name").replace(prefix,"");
                var v = $(this).val();
                if(v != null && v != "") {
                    dataMap[name] = $(this).val();
                }
        }
    });
    delete dataMap['undefined'];
    return dataMap;
}

//自动填充select
function jsonToSelect(url, target, json, valueName, textName, async,isMultiple) {
    callSapiServer(url, function (data) {
        if(data.code == 200) {
            var options = data.result;
            var html = "";
            if(!isMultiple) {
                html = "<option value='-1'>请选择</option>"
            }
            for (var i = 0; i < options.length; i++) {
                html += "<option value='" + options[i][valueName] + "'>" + options[i][textName] + "</option>";
            }
            $(target).html(html);
        }
    }, "GET", json, async == false ? false : true);
}



function jsonToSelects() {
    var json = {};
    var selects = "";
    $("select").each(function () {
        var text = $(this).attr("id");
        selects += text;
        selects += ",";
    });
    //orderType,carType,.....moneyType
    selects = selects.substring(0, selects.length - 1);
    $.ajax({
        url: ".......",
        type: "POST",
        data: {selects: selects},
        dataType: 'json',
        success: function (data) {
            //var dataDemo = [{
            //    name: "orderType",
            //    options: [{
            //        key: "a",
            //        value:"b"
            //    }],
            //}];
            for (var i = 0; i < data.length; i++) {
                var name = data[i].name;
                $("#" + name).html("<option value='-1'>请选择</option>");
                var options = data[i].options;
                for (var j = 0; j < options.length; j++) {
                    $("#" + name).append("<option value='" + options[j].key + "'>" + options[j].value + "</option>");
                }
            }
        }
    });
}

//int类型排序，必须调用此方法
function sortNumber(a, b) {
    return a - b
}

/**
 * <pre>
 * 《div id="table">《/div>
 * tab_jsonTable(&quot;body&quot;, [ [ 1, 2, 3, 4, 5, 6 ], [ 1, 2, 3, 4, 5, 6 ] ], [ id,
 *        name, name1, num1, num2, num3 ], function(td, row, column, content) {
 *			//td 当前这个table的td
 *			//row  数据的第n行
 *			//column  当前数据行的第 n 列
 *			//content 列内容
 *
 *		switch(column){
 *			case 0: return null;
 *			case 1: return content.toDate();
 *			case 2: return parseInt(content);
 *			default:
 *				return content;
 *		}
 * 	}, function(tb) {
 * 		tb.find(&quot;td&quot;).css(&quot;padding&quot;, &quot;5px&quot;);
 * 		tb.css(&quot;width&quot;, &quot;100%&quot;);
 * 	});
 * </pre>
 * @param target 填充 目标
 * @param data 数据 [ [ 1, 2, 3, 4, 5, 6 ], [ 1, 2, 3, 4, 5, 6 ] ]
 * @param head 表头 ["序号","标题1","标题2"...]
 * @param onCellCreate  过滤数据方法
 * @param onComplete  table处理方法
 */
function tab_jsonTable(target, data, head, onCellCreate, onComplete, isShowHead, caption) {
    var t = $("<table></table>");
    var thead = $("<thead></thead>").appendTo(t);
    var trh = $("<tr></tr>").appendTo(thead);
    var tb = $("<tbody></tbody>").appendTo(t);
    var trhh = $("<tr></tr>").appendTo(tb);

    trhh.css("display","none");

    if (caption) {
        t.append('<caption><label>' + caption + '</label></caption>');
    }

    if ((undefined == isShowHead ? true : isShowHead))
        if (head) {
            for (var i = 0; i < head.length; i++) {
                if (head[i] != null)
                    $("<th></th>").appendTo(trh).append(head[i]);
            }
        }

    if (!data || data.length == 0) {
        var td = $("<td></td>").appendTo($("<tr></tr>").appendTo(tb)).append(
            "暂无内容");
        if (head)
            td.attr("colspan", head.length);
    } else {
        for (var j = 0; j < data.length; j++) {
            var trc = $("<tr></tr>").appendTo(tb);
            for (var k = 0; k < head.length; k++) {
                var td = $("<td></td>").appendTo(trc);
                var hi = data[j];
                if (onCellCreate) {
                    var rs = onCellCreate(td, j, k, hi);
                    if (typeof (rs) == "undefined") {
                    } else if (null == rs) {
                        td.remove();
                        continue;
                    } else {
                        hi = rs;
                    }
                }
                td.append(hi);
            }
        }
    }
    if (target) $(target).html(t);

    if (onComplete) onComplete(t);

}

/**
 * <pre>
 * \<\div id=\"p1\"><\/div>
 * common_pagination($("#p1"),50,15,1,10,function(pageIndex,totalCount,count,ul){
 *		//返回值
 *		//pageIndex 当前页
 *		//totalCount 总条数
 *		//count 总页数
 *		//ul 分页的ul
 *		$.ajax(...,
 *			success:function(data){
 *				//填充table
 *			}
 *		)
 *	});
 * <pre>
 * @param container 将要填充的对象 div
 * @param totalCount 数据总条数
 * @param pageSize  每页显示条数
 * @param pageindex  当前页
 * @param setMax    分页显示最大长度
 * @param onCreateTable  自定义方法 会返回 pageIndex,totalCount,count,ul
 */
function common_pagination(container, totalCount, pageSize, pageindex, setMax, onCreateTable) {

    $(container).empty();//清空表单

    if (totalCount > 0) {
        var count = Math.floor((totalCount - 1) / pageSize + 1);

        if (!setMax)
            setMax = 10;

        var viewMax = setMax;

        var avg = Math.floor(setMax / 2);

        var ul = $("<ul></ul>").css({
            "float": "right",
            "height": "30px",
            "margin": "0",
            //"padding-right": "20px"
        });
        ul.attr("class","pagination");
        var li = $("<li></li>").css({
            "display":  "inline",
            "line-height": "30px"
        });
        var a = $("<a></a>").attr("href", "javaScript:void(0);");


        var pageClick = function (target, pageIndex) {

            target.click(function () {
                common_pagination(container, totalCount, pageSize, pageIndex, setMax, onCreateTable);
                if (onCreateTable) onCreateTable(pageIndex, totalCount, count, ul);
            });
            return target;
        };

        var skipToNumber = function (skipLink, valueTarget) {
            skipLink.click(function () {
                var number = $(valueTarget).val();
                if (typeof(number) == 'string') {
                    number = parseInt(number);
                }
                if (typeof(number) == 'number')
                    if (number <= count && number >= 1) {
                        common_pagination(container, totalCount, pageSize, number, setMax, onCreateTable);
                        if (onCreateTable) onCreateTable(number, totalCount, count, ul);
                    } else {
                        $(valueTarget).val("");
                    }
            });
            return skipLink;
        };

        var prevOrNext = function (target, isPrev) {
            target.click(function () {
                var tmpIndex = pageindex;

                if (isPrev)
                    tmpIndex--;
                else
                    tmpIndex++;
                if (tmpIndex < 1 || tmpIndex > count) {
                    return false;
                }

                common_pagination(container, totalCount, pageSize, tmpIndex, setMax, onCreateTable);
                if (onCreateTable) onCreateTable(tmpIndex, totalCount, count, ul);
                return false;
            });
            return target;
        };

        var pageStyle = function (href, pageIndex, isCurrentPage) {
            var aTmp = a.clone();
            var liTmp = li.clone();

            aTmp.append(pageIndex);
            if (href)
                aTmp.attr("href", href);

            if (isCurrentPage)
                liTmp.addClass("active");
            else
                pageClick(liTmp, pageIndex);

            liTmp.append($(aTmp)).appendTo($(ul));

        };

        pageClick(li.clone(), 1).append(a.clone().append("首页")).appendTo($(ul));
        prevOrNext(li.clone(), true).append(a.clone().append("上一页")).appendTo($(ul));


        if (count <= viewMax) {
            for (var i = 1; i <= count; i++) {
                pageStyle(null, i, (i == pageindex));
            }
        } else {

            if (pageindex <= setMax) {
                for (var i = 1; i <= (setMax + 1); i++) {
                    pageStyle(null, i, (i == pageindex));
                }
                li.clone().addClass("disabled").append(a.clone().append("..")).appendTo($(ul));
                pageClick(li.clone(), count).append(a.clone().append(count)).appendTo($(ul));
            } else {
                pageClick(li.clone(), 1).append(a.clone().append(1)).appendTo($(ul));
                li.clone().addClass("disabled").append(a.clone().append("..")).appendTo($(ul));
                if (pageindex >= count - 3) {

                    for (var i = count - 4; i <= count; i++) {
                        pageStyle(null, i, (i == pageindex));
                    }

                } else {

                    var prevNumber = pageindex - avg;
                    var nextNumber = pageindex + avg;

                    for (var i = prevNumber; (i < count) && (i <= nextNumber); i++) {
                        pageStyle(null, i, (i == pageindex));
                    }
                    li.clone().addClass("disabled").append(a.clone().append("..")).appendTo($(ul));
                    pageClick(li.clone(), count).append(a.clone().append(count)).appendTo($(ul));
                }
            }

        }

        prevOrNext(li.clone(), false).append(a.clone().append("下一页")).appendTo($(ul));
        pageClick(li.clone(), count).append(a.clone().append("末页")).appendTo($(ul));

        li.clone().append(a.clone().append("共" + count + "页," + totalCount + "条")).appendTo($(ul));



        var skipNumber = $("<input type='text'>").css({
            "width": "30px",
            "margin-right": "10px",
            "height": "30px",
            "float": "right"
        });
        var skipLink = a.clone().addClass("btn").css({"float": "right"}).append("跳转到");
        $(skipNumber).bind('keypress', function (event) {
            if (event.which == 13)
                $(skipLink).click();
        });

        $(container).append(skipToNumber(skipLink, skipNumber)).append(skipNumber);

        $(ul).appendTo($(container));
    }
}


function nullToString(text, format) {
    if (typeof (format) == 'undefined' || format == null) {
        format == "--";
    }
    if (typeof (text) == 'undefined' || text == null || text == "") {
        return format;
    } else {
        return text;
    }
}

function com_getQueryValueInURL(location, lowcaseName) {
    var query;
    if (location != null && typeof(location) == "object") {
        query = location.search;
    }
    else {
        var a = location.indexOf('?');
        if (a > 0) {
            query = location.substring(a);
        } else {
            query = "";
        }
    }

    var params = query.substring(1).split("&", 10);
    for (var i = params.length; --i >= 0;) {
        var ia = params[i].indexOf("=", 1);
        if (ia < 0) continue;
        if (params[i].substring(0, ia).toLocaleLowerCase() == lowcaseName) {
            return params[i].substring(ia + 1);
        }
    }
    return null;
}

String.prototype.endsWith = function (str) {
    return new RegExp(str + "$").test(this);
};

String.prototype.startWith = function (str) {
    if (str == null || str == "" || this.length == 0 || str.length > this.length)
        return false;
    if (this.substr(0, str.length) == str)
        return true;
    else
        return false;
    return true;
};

/***
 * 校验时间先后
 * @param beginObj
 * @param endObj
 */
function common_setStartAndEndEvent(beginIpt, endIpt, endDate, beginEndDate) {
    if (beginEndDate) {
        $(beginIpt).datepicker("setEndDate", beginEndDate);
    }
    $(beginIpt).change(function () {
        var beginDateValue = $(this).val();
        var endDateValue = $(endIpt).val();
        var sourceDate = $(this).data("source");
        if (!moment($(this).val()).isValid()) {
            alert("日期不合法!");
            if (sourceDate) {
                if (new Date(sourceDate).getTime() > new Date(endDateValue).getTime()) {
                    $(this).val("");
                } else {
                    $(this).val(sourceDate);
                }
            } else {
                $(this).val("");
            }
            return false;
        }

        if (beginDateValue && endDateValue) {
            var begin = new Date(beginDateValue);
            var end = new Date(endDateValue);

            if (begin.getTime() > end.getTime()) {
                alert($(this).siblings("label:first").text() + "不能晚于" + endIpt.siblings("label:first").text() + "!");
                if (sourceDate) {
                    if (new Date(sourceDate).getTime() > end.getTime()) {
                        $(this).val("");
                    } else {
                        $(this).val(sourceDate);
                    }
                } else {
                    $(this).val("");
                }
                return false;
            }
        }
        $(this).data("source", beginDateValue);


        $(endIpt).datepicker("setStartDate", $(this).val());
        if (endDate) {
            $(endIpt).datepicker("setEndDate", endDate);
        }
    });

    $(endIpt).change(function () {
        var endDateValue = $(this).val();
        var beginDateValue = $(beginIpt).val();
        var sourceDate = $(this).data("source");

        if (!moment($(this).val()).isValid()) {
            alert("日期不合法!");
            if (sourceDate) {
                if (new Date(sourceDate).getTime() < new Date(beginDateValue).getTime()) {
                    $(this).val("");
                } else {
                    $(this).val(sourceDate);
                }
            } else {
                $(this).val("");
            }
            return false;
        }

        if (beginDateValue && endDateValue) {
            var begin = new Date(beginDateValue);
            var end = new Date(endDateValue);

            if (end.getTime() < begin.getTime()) {
                alert($(this).siblings("label:first").text() + "不能早于" + $(beginIpt).siblings("label:first").text() + "!");
                if (sourceDate) {
                    if (new Date(sourceDate).getTime() < begin.getTime()) {
                        $(this).val("");
                    } else {
                        $(this).val(sourceDate);
                    }
                } else {
                    $(this).val("");
                }
                return false;
            }
        }

        $(this).data("source", endDateValue);

        $(beginIpt).datepicker("setEndDate", $(this).val());
    });

    if($(beginIpt).val()){
        $(beginIpt).change();
    }
}

//表单操作
function openForm(type,url,colspan,target,formTarget,showUrl){
    //新增or修改操作
    if (type == "add") {
        //获取目标tr，如果是新增，锁定第一行
        var tr = $(target).find("tbody").find("tr").first();
        //如果第一行的td只有一个，则认为已打开form所在tr
        if (tr.find("td").length != 1) {
            var formTr = $("<tr><td colspan='"+colspan+"'></td></tr>");
            getContent(url, $(formTr).find("td"), false);
            $(tr).before(formTr);
        } else {
            //删除表单tr
            $(tr).remove();
        }
    } else {
        var tr = $(target);
        //判断当前tr的下一个tr中的td是否只有一个，如果只有一个，则视为已打开编辑操作
        if (tr.next("tr").children("td").length != 1) {
            var formTr = $("<tr><td colspan='"+colspan+"'></td></tr>");
            getContent(url, $(formTr).find("td"), false);
            var id = $(tr).find("input[name='id']").val();
            $(formTr).find("input[name='id']").val(id);
            $(tr).after(formTr);
            //如果是修改，初始化form中input、select、textarea里面的值
            if(showUrl != null && showUrl != "") {
                callSapiServer(showUrl, function (data) {
                    if(data != null) {
                        jsonToForm(formTarget,data);
                    }
                }, "POST", {id: id},false);
            }
        } else {
            //删除表单tr
            $(tr).next("tr").remove();
        }
    }
}