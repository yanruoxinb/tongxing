
//      var position = {startx:3,starty:0}  表格打印的初始位置
//      var dataList = {"Description":ausData.Description,"Amount":ausData.Amount} 需要打印的数据列表
function loadCommonList(spreadNS,sheet,dataSet,position){

     var source = new spreadNS.CellBindingSource(dataSet);
     var keyList=[]; var valueList = [];var keyNum = 0;
     for(var k in dataSet) {
                //遍历对象，k即为key，obj[k]为当前k对应的值
                keyList[keyNum] = k;
                valueList[keyNum++]=dataSet[k];
      }
    // common range 
    var   yield = {startx:position.startx,starty:position.starty,keys:keyList,valus:valueList} 
    //设置表格内容
    for (var j = 0; j < yield.keys.length; j++) {
            sheet.setValue(yield.startx, j+yield.starty, yield.keys[j]);
    };

    for (var i = 1; i <yield.valus[1].length; i++) {
      //
       for (var j = 0; j < yield.keys.length; j++) {
           sheet.setBindingPath(i+yield.startx, j+yield.starty, yield.keys[j]+"."+i.toString());
       };
       //这是特殊行，数据在原始数据中
       //sheet.setBindingPath(i+yield.startx, yield.starty, "AusDataSet."+i.toString()+".arriveTime");

    };
          //设置列宽
      sheet.setColumnWidth(0, 80);
      sheet.setColumnWidth(1, 160);
      sheet.setColumnWidth(2, 180);
      sheet.setColumnWidth(3, 100);
      sheet.setColumnWidth(4, 80);
      sheet.setDataSource(source);
      var path = sheet.getBindingPath(0, 0);
   }

// var   title = {value:"statement" ,font: "lighter 28pt Calibri",range:{startx:0,starty:0,endx:3,endy:4}}
function commonList(spread,ausData,title) {

    
    var position = {startx:title.range.endx,starty:title.range.starty}

    var spreadNS = GcSpread.Sheets; 
    var sheet = spread.sheets[0];
    sheet.isPaintSuspended(true);

    //设置标题
    sheet.addSpan(title.range.startx, title.range.starty, title.range.endx, title.range.endy);
    sheet.setValue(title.range.startx, title.range.starty, title.value);
    sheet.getCells(title.range.startx, title.range.starty,title.range.endx+200, title.range.endy+5).hAlign(1).vAlign(1);
    sheet.getCells(title.range.startx, title.range.starty, title.range.endx-1, title.range.endy-1).font(title.font);


    loadCommonList(spreadNS,sheet,ausData,position);

   
    sheet.isPaintSuspended(false);


};

