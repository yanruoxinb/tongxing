package com.siweisoft.controller.base;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.siweisoft.base.PageInfo;
import com.siweisoft.base.StateCode;
import com.siweisoft.constant.ConstantParams;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by lance on 2017-01-18.
 */

public abstract class BaseController<T> {
    private static final String ADD_PAGE = "";

    protected abstract String getPrefix();
    protected  final String ADD=getPrefix()+"details";
    protected  final String EDIT=getPrefix()+"details";
    protected  final String VIEW=getPrefix()+"details";
    protected  final String LIST=getPrefix()+"list";


    /**
     * 跳转到添加页面
     * @return 页面路径
     */
    @RequestMapping(value="toInsert",method= RequestMethod.GET)
    protected String toInsert() {
        return ADD;
    }

    /**
     * 跳转到编辑页面
     * @param id 待编辑对象Id
     * @param request
     * @param response
     * @return 编辑页面路径
     */
    @RequestMapping(value="toEdit",method= RequestMethod.GET)
    public String toEdit(int id, HttpServletRequest request, HttpServletResponse response){
        T obj = findById(id);
        request.setAttribute("item", obj);
        return EDIT;
    }

    /**
     * 跳转到list页面
     * @param request
     * @param response
     * @return list页面路径
     */
    @RequestMapping(value="toList",method= RequestMethod.GET)
    public String toEdit( HttpServletRequest request, HttpServletResponse response){
        return LIST;
    }

    /**
     * 删除一条数据
     * @param id 待删除数据的编号
     * @param request
     * @param response
     * @return 删除状态
     */
    @RequestMapping(value="delete",method = RequestMethod.POST)
    @ResponseBody
    public String delete(int id,HttpServletRequest request, HttpServletResponse response) {
        String json = "";
        StateCode sc = null;
        try {
            Integer count = deleteById(id);
            if (count > 0) {
                sc = new StateCode("200", "删除数据成功");
            } else {
                sc = new StateCode("-200", "删除数据失败");
            }
            ObjectMapper mapper = new ObjectMapper();
            json = mapper.writeValueAsString(sc);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return json;
    }

    /**
     * 添加一条数据
     * @param obj 待添加对象
     * @return 添加后状态
     */
    @RequestMapping(value = "insert",method = RequestMethod.POST)
    @ResponseBody
    public String add(T obj) {
        String json = "";
        StateCode sc = null;
        try {
            int count = insert(obj);
            if (count > 0) {
                sc = new StateCode("200", "添加数据成功");
            } else {
                sc = new StateCode("-200", "删除数据失败");
            }
            ObjectMapper mapper = new ObjectMapper();
            json = mapper.writeValueAsString(sc);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return json;
    }

    /**
     * 修改一条数据
     * @param obj 待修改对象
     * @return 修改后状态
     */
    @RequestMapping(value = "update",method = RequestMethod.POST)
    @ResponseBody
    public String update(T obj) {
        String json = "";
        StateCode sc = null;
        try {
            int count = updateById(obj);
            if (count > 0) {
                sc = new StateCode("200", "修改数据成功");
            } else {
                sc = new StateCode("-200", "修改数据失败");
            }
            ObjectMapper mapper = new ObjectMapper();
            json = mapper.writeValueAsString(sc);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return json;
    }

    /**
     * 分页查询列表
     * @param params 查询条件对象
     * @param request
     * @param response
     * @return 分页查询。结果集封装成PageSize对象
     */
    @RequestMapping(value = "list",method = RequestMethod.GET)
    @ResponseBody
    public String list(T params,HttpServletRequest request,HttpServletResponse response) {
        String json="";
        String temp1 = request.getParameter("pageIndex");
        String temp2 = request.getParameter("pageSize");
        try {
            int pageIndex = temp1 == null ? ConstantParams.PAGE_INDEX : Integer.parseInt(temp1);
            int pageSize = temp2 == null ? ConstantParams.PAGE_SIZE : Integer.parseInt(temp2);
            PageInfo<T> page = findPage(params,pageSize,pageIndex);
            ObjectMapper mapper = new ObjectMapper();
            json = mapper.writeValueAsString(page);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return json;
    }

    /**
     * 查询所有数据
     * @param params 查询参数
     * @return 符合条件的所有结果（不分页）
     */
    @RequestMapping(value = "all",method = RequestMethod.GET)
    @ResponseBody
    public String all(T params) {
        String json="";
        try {
            List<Object> list  = findAll(params);
            ObjectMapper mapper = new ObjectMapper();
            json = mapper.writeValueAsString(list);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return json;
    }

    /**
     * 根据Id查询对象，业务由子类自己实现
     * @param id 待查询对象ID
     * @return 查询后对象
     */
    protected abstract T findById(int id);

    /**
     * 根据Id删除对象，业务由子类自己实现
     * @param id 待删除对象ID
     * @return 删除行数
     */
    protected abstract int deleteById(int id);

    /**
     * 修改对象，业务由子类自己实现
     * @param obj 待修改对象
     * @return 修改行数
     */
    protected abstract int updateById(T obj);

    /**
     * 添加对象，业务由子类自己实现
     * @param obj 待添加列表
     * @return 添加行数
     */
    protected abstract int insert(T obj);

    /**
     * 分页查询数据，业务由子类自己实现
     * @param params 参数列表
     * @param pageSize 一页总条数
     * @param pageIndex 当前第几页
     * @return 当前页的数据
     */
    protected abstract PageInfo<T> findPage(T params,int pageSize,int pageIndex);

    /**
     * 查询所有符合条件的数据业务方法，业务由子类自己实现
     * @param params 查询条件
     * @return 符合条件的所有对象
     */
    protected abstract List<Object> findAll(T params);

}
