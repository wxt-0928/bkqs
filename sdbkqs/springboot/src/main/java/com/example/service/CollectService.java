package com.example.service;

import com.example.entity.Account;
import com.example.entity.Collect;
import com.example.mapper.CollectMapper;
import com.example.utils.TokenUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class CollectService {

    @Resource
    CollectMapper CollectMapper;

    public void set(Collect collect) {
        Account currentUser = TokenUtils.getCurrentUser();
        collect.setUserId(currentUser.getId());
        Collect dblCollect = CollectMapper.selectUserCollect(collect);
        if (dblCollect == null) {
            CollectMapper.insert(collect);
        } else {
            CollectMapper.deleteById(dblCollect.getId());
        }
    }




    public int selectByFidAndModule(Integer fid,String module){
        return CollectMapper.selectByFidAndModule(fid,module);
    }

}

