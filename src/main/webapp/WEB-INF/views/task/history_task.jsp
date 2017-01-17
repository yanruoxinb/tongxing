<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="task-row row">
    <div class="widget" style="margin-top: -30px!important;">
        <div class="widget-header bordered-bottom bordered-themeprimary cor" style="height:53px;padding:10px;">
            <i class="widget-icon fa fa-tasks themeprimary"></i>
            <span class="widget-caption themeprimary">任务列表</span>
            <!-- <span style="color: #2dc3e8 ;line-height:20px;font-size:13px;">工程师</span> -->
            <input type="text" placeholder="请输入工程师姓名" class="set inp_soso_gcs"/>
            <button type="button" class="btn" style="background-color: #008cee;color: #fff;border-radius:15px;line-height:14px;font-size:12px;margin-right:10px;">搜索</button>

            <div style="width:69px;height:34px;" class="pull-right">
                <div class="btn-group pull-right">
                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" style="background-color: #008cee;color: #fff">
                        状态 <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu" style="text-align:center;">
                        <li id="menu1"><a href="#">待发布</a></li>
                        <li id="menu2"><a href="#">已发布</a></li>
                        <li id="menu3"><a href="#">执行中</a></li>
                        <li id="menu4"><a href="#">已完成</a></li>
                        <li id="menu5"><a href="#">已审核</a></li>
                        <li id="menu6"><a href="#">已归档</a></li>
                    </ul>
                </div>
            </div>
        </div>



        <!--Widget Header-->
        <div class="widget-body cor" style="position:relative;">
            <div class="widget-main no-padding">
                <div class="task-container">
                    <ul class="tasks-list" id="task_list">
                       <li id="41026" class="task-item">
                            <div class="task-check change_p col-md-3">G201641026</div>

                            <div class="task-state col-md-3" style="left: 3%;top: 22px"><span class="label label-orange">已发布</span></div>
                            <div class="task-state change_p1 col-md-3"><span class="label label-blue">牛军安</span></div>
                            <div class="task-time col-md-3">2016-11-08</div>
                            <div class="task-body col-md-6">现场服务</div>
                            <div class="task-creator col-md-6">上海智仪<a href=""> </a></div>
                            <div class="task-assignedto"></div>
                        </li>
                         <li id="41008" class="task-item">
                            <div class="task-check change_p col-md-3 ">G201641008</div>
                            <div class="task-state col-md-3" style="left: 3%;top: 22px"><span
                                    class="label label-yellow">已完成</span></div>
                            <div class="task-state change_p1 col-md-3"><span class="label label-blue">尚庄庄</span></div>
                            <div class="task-time col-md-3">2016-11-03</div>
                            <div class="task-body col-md-6">走访客户</div>
                            <div class="task-creator col-md-6">陕西润邦<a href=""> </a></div>
                            <div class="task-assignedto"></div>
                        </li>
                        <li id="41007" class="task-item">
                            <div class="task-check change_p col-md-3 ">G201641007</div>
                            <div class="task-state col-md-3" style="left: 3%;top: 22px"><span
                                    class="label label-yellow">已完成</span></div>
                            <div class="task-state change_p1 col-md-3"><span class="label label-blue">尚庄庄</span></div>
                            <div class="task-time col-md-3">2016-11-03</div>
                            <div class="task-body col-md-6">走访客户</div>
                            <div class="task-creator col-md-6">陕西天皓萬业<a href=""> </a></div>
                            <div class="task-assignedto"></div>
                        </li>
                        <li id="41023" class="task-item aaaaa">
                            <div class="task-check change_p col-md-3">G201641023</div>
                            <div class="task-state col-md-3" style="left: 3%;top: 22px"><span
                                    class="label label-blue">执行中</span></div>
                            <div class="task-state change_p1 col-md-3"><span class="label label-blue">尚庄庄</span></div>
                            <div class="task-time col-md-3">2016-11-07</div>
                            <div class="task-body col-md-6">走访客户</div>
                            <div class="task-creator col-md-6">西安曲江鸿远<a href=""> </a></div>
                            <div class="task-assignedto"></div>
                        </li>
                        <li id="41025" class="task-item">
                            <div class="task-check change_p col-md-3">G201641025</div>
                            <div class="task-state col-md-3" style="left: 3%;top: 22px"><span
                                    class="label label-orange">已发布</span></div>
                            <div class="task-state change_p1 col-md-3"><span class="label label-blue">李向前</span></div>
                            <div class="task-time col-md-3">2016-11-07</div>
                            <div class="task-body col-md-6">调试安装</div>
                            <div class="task-creator col-md-6">武汉混凝土<a href=""> </a></div>
                            <div class="task-assignedto"></div>
                        </li>
                        <li id="41024" class="task-item">
                            <div class="task-check change_p col-md-3">G201641024</div>
                            <div class="task-state col-md-3" style="left: 3%;top: 22px"><span
                                    class="label label-orange">已发布</span></div>
                            <div class="task-state change_p1 col-md-3"><span class="label label-blue">眭晟源</span></div>
                            <div class="task-time col-md-3">2016-11-07</div>
                            <div class="task-body col-md-6">定期服务</div>
                            <div class="task-creator col-md-6">上海建工真如<a href=""> </a></div>
                            <div class="task-assignedto"></div>
                        </li>
                        <li id="41026" class="task-item">
                            <div class="task-check change_p col-md-3">G201641026</div>
                            <div class="task-state col-md-3" style="left: 3%;top: 22px"><span
                                    class="label label-orange">已发布</span></div>
                            <div class="task-state change_p1 col-md-3"><span class="label label-blue">牛军安</span></div>
                            <div class="task-time col-md-3">2016-11-08</div>
                            <div class="task-body col-md-6">现场服务</div>
                            <div class="task-creator col-md-6">上海智仪<a href=""> </a></div>
                            <div class="task-assignedto"></div>
                        </li>
                        <li id="41008" class="task-item">
                            <div class="task-check change_p col-md-3 ">G201641008</div>
                            <div class="task-state col-md-3" style="left: 3%;top: 22px"><span
                                    class="label label-yellow">已完成</span></div>
                            <div class="task-state change_p1 col-md-3"><span class="label label-blue">尚庄庄</span></div>
                            <div class="task-time col-md-3">2016-11-03</div>
                            <div class="task-body col-md-6">走访客户</div>
                            <div class="task-creator col-md-6">陕西润邦<a href=""> </a></div>
                            <div class="task-assignedto"></div>
                        </li>
                        <li id="41007" class="task-item">
                            <div class="task-check change_p col-md-3 ">G201641007</div>
                            <div class="task-state col-md-3" style="left: 3%;top: 22px"><span
                                    class="label label-yellow">已完成</span></div>
                            <div class="task-state change_p1 col-md-3"><span class="label label-blue">尚庄庄</span></div>
                            <div class="task-time col-md-3">2016-11-03</div>
                            <div class="task-body col-md-6">走访客户</div>
                            <div class="task-creator col-md-6">陕西天皓萬业<a href=""> </a></div>
                            <div class="task-assignedto"></div>
                        </li>
                        <li id="41023" class="task-item aaaaa">
                            <div class="task-check change_p col-md-3">G201641023</div>
                            <div class="task-state col-md-3" style="left: 3%;top: 22px"><span
                                    class="label label-blue">执行中</span></div>
                            <div class="task-state change_p1 col-md-3"><span class="label label-blue">尚庄庄</span></div>
                            <div class="task-time col-md-3">2016-11-07</div>
                            <div class="task-body col-md-6">走访客户</div>
                            <div class="task-creator col-md-6">西安曲江鸿远<a href=""> </a></div>
                            <div class="task-assignedto"></div>
                        </li>

                    </ul>



                    <div id="task"></div>
                    <div style="position:relative;top:350px;">
                        <ul class="pagination" id="pagination1" style="    padding-left: 17px; text-align: center;">
                            <li class="first disabled" jp-role="first" jp-data="1"><a href="javascript:;">&lt;&lt;</a></li>
                            <li class="prev disabled" jp-role="prev" jp-data="0"><a href="javascript:;">&lt;</a></li>
                            <li class="page active" jp-role="page" jp-data="1"><a href="javascript:;">1</a></li>
                            <li class="page" jp-role="page" jp-data="2"><a href="javascript:;">2</a></li>
                            <li class="page" jp-role="page" jp-data="3"><a href="javascript:;">3</a></li>
                            <li class="page" jp-role="page" jp-data="4"><a href="javascript:;">4</a></li>
                            <li class="page" jp-role="page" jp-data="5"><a href="javascript:;">5</a></li>
                            <li class="page" jp-role="page" jp-data="6"><a href="javascript:;">6</a></li>
                            <li class="next" jp-role="next" jp-data="2"><a href="javascript:;">&gt;</a></li>
                            <li class="last" jp-role="last" jp-data="6635"><a href="javascript:;">&gt;&gt;</a></li>
                        </ul>
                    </div>
                </div>
            </div><!--控件容器-->
        </div><!--控件内容-->
    </div>
</div>