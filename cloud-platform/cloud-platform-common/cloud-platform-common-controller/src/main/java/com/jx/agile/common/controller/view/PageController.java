package com.jx.agile.common.controller.view;/**
 * @Auther: ly-jiangxh
 * @Date: 2021/03/26/11:32
 * @Description:
 */

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.alibaba.fastjson.JSONObject;
import com.jx.agile.core.common.BaseController;
import com.jx.agile.core.utils.ResultUtils;
import com.jx.agile.core.web.Result;

/**
 * 页面配置控制器
 * @author ly-jiangxh
 * @date 2021/03/26 11:32
 **/
@RequestMapping("/page")
@RestController
public class PageController extends BaseController {

    @GetMapping("/select.do")
    public Result test(){
        Result result = ResultUtils.success();
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("text","test");
        jsonObject.put("value",1);
        result.setData(jsonObject);
        return result;
    }
}
