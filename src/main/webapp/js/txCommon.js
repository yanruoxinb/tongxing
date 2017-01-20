/**
 * Created by lance on 2017-01-18.
 */
function initSelects(data) {
    if(data != null && data.length > 0) {
        for(var i = 0; i < data.length; i++) {
            jsonToSelect("/metadata/listByParentId",data[i].target,{parentId: data[i].parentId,refresh : true},"id","metaName");
        }
    }
}

