package com.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Amence on 2017/1/16.
 */

@Controller
public class findCityByProvinceAction {

    @RequestMapping(value = "/findCityByProvinceRequest.do")
    @ResponseBody
    public List<String> findCityByProvinceRequest(HttpServletRequest request, HttpServletResponse response) {
        String provicne = request.getParameter("province");
        List<String> list = new ArrayList<String>();
        if ("湖北".equals(provicne)) {
            list.add("武汉");
            list.add("赤壁");
        } else if ("湖南".equals(provicne)) {
            list.add("郴州");
            list.add("张家界");
            list.add("浏阳");
        } else if ("广东".equals(provicne)) {
            list.add("阳江");
            list.add("佛山");
            list.add("湛江");
        }
        return list;
    }

    @RequestMapping(value = "/findAreaByCityRequest.do")
    @ResponseBody
    public List<String> findAreaByCityRequest(HttpServletRequest request, HttpServletResponse response) {
        String area = request.getParameter("city");
        System.out.println("区域" + area);
        List<String> list = new ArrayList<String>();
        if ("武汉".equals(area)) {
            list.add("AA");
            list.add("BB");
        } else if ("赤壁".equals(area)) {
            list.add("CC");
            list.add("DD");
        } else if ("郴州".equals(area)) {
            list.add("EE");
            list.add("FF");
        } else if ("张家界".equals(area)) {
            list.add("GG");
            list.add("HH");
        }
        System.out.println(list.toString());
        return list;
    }
}
