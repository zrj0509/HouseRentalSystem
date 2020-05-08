package com.house.controller;

import com.house.dao.LiuyanMapper;
import com.house.entity.Liuyan;
import com.house.entity.LiuyanData;
import com.house.entity.UserData;
import com.house.entity.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class LiuyanController {

    @Autowired
    LiuyanMapper liuyanMapper;


    @RequestMapping("/toAllLiuyanPage")
    public String toAllUserPage() {
        return "allliuyan.jsp";
    }

    /**
     * 查询所有用户
     *
     * @return
     */
    @RequestMapping("/AllLiuyans")
    @ResponseBody
    public LiuyanData AllLiuyans() {
        List<Liuyan> liuyanList = liuyanMapper.findAll(null);
        LiuyanData u = new LiuyanData();
        u.setCode(0);
        u.setCount(liuyanList.size());
        u.setData(liuyanList);
        u.setMsg("OK");
        return u;
    }

    @RequestMapping("/AddLiuyan")
    public String AddLiuyan(Liuyan liuyan) {
        Date d = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        liuyan.setCreatetime(sdf.format(d));
        int row = liuyanMapper.save(liuyan);
        return "redirect:toDetailsPage?id=" + liuyan.getHid();
    }


    @RequestMapping("/deleteLiuyan")
    @ResponseBody
    public String deleteLiuyan(int id) {
        int deleteHouse = liuyanMapper.delete(id);
        if (deleteHouse > 0) {
            return "OK";
        }
        return "FAIL";
    }

}
