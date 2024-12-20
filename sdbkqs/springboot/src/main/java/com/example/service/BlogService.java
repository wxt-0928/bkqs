package com.example.service;

import cn.hutool.core.date.DateUtil;
import cn.hutool.core.util.ObjectUtil;
import cn.hutool.json.JSONArray;
import cn.hutool.json.JSONUtil;
import com.example.common.enums.LikesModuleEnum;
import com.example.common.enums.RoleEnum;
import com.example.entity.*;
import com.example.mapper.BlogMapper;
import com.example.utils.TokenUtils;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.stream.Collector;
import java.util.stream.Collectors;

/**
 * 博客信息业务处理
 **/
@Service
public class BlogService {

    @Resource
    private BlogMapper blogMapper;

    @Resource
    UserService userService;

    @Resource
    LikesService likesService;

    @Resource
    CollectService collectService;

    /**
     * 新增
     */
    public void add(Blog blog) {
        blog.setDate(DateUtil.today());
        Account currentUser = TokenUtils.getCurrentUser();
        if(RoleEnum.USER.name().equals(currentUser.getRole())){
            blog.setUserId(currentUser.getId());
        }
        blogMapper.insert(blog);
    }

    /**
     * 删除
     */
    public void deleteById(Integer id) {
        blogMapper.deleteById(id);
    }

    /**
     * 批量删除
     */
    public void deleteBatch(List<Integer> ids) {
        for (Integer id : ids) {
            blogMapper.deleteById(id);
        }
    }

    /**
     * 修改
     */
    public void updateById(Blog blog) {
        blogMapper.updateById(blog);
    }

    /**
     * 根据ID查询
     */
    public Blog selectById(Integer id) {
        Blog blog = blogMapper.selectById(id);
        User user = userService.selectById(blog.getUserId());
        List<Blog> userBlogList=blogMapper.selectUserBlog(user.getId());
        user.setBlogCount(userBlogList.size());
        int userlikesCount=0;
        int userCollectCount=0;
        for (Blog b:userBlogList){
            Integer fid=b.getId();
            int likesCount=likesService.selectByFidAndModule(fid,LikesModuleEnum.BLOG.getValue());
            userlikesCount += likesCount;
            int collectCount=collectService.selectByFidAndModule(fid,LikesModuleEnum.BLOG.getValue());
            userCollectCount += collectCount;
        }
       user.setLikesCount(userlikesCount);
        user.setCollectCount(userCollectCount);
        blog.setUser(user);
        //查询当前博客的点赞数据
        int likesCount = likesService.selectByFidAndModule(id, LikesModuleEnum.BLOG.getValue());
        blog.setLikesCount(likesCount);
        Likes userLikes = likesService.selectUserLikes(id, LikesModuleEnum.BLOG.getValue());
        blog.setUserLike(userLikes != null);

        //查询当前博客的收藏数据
        int collectCount = collectService.selectByFidAndModule(id, LikesModuleEnum.BLOG.getValue());
        blog.setCollectCount(collectCount);
        Collect userCollect = collectService.selectUserCollect(id, LikesModuleEnum.BLOG.getValue());
        blog.setUserCollect(userCollect != null);
        //更新博客浏览数据
        blog.setReadCount(blog.getReadCount()+1);
        this.updateById(blog);
        return blog;
    }

    /**
     * 查询所有
     */
    public List<Blog> selectAll(Blog blog) {
        return blogMapper.selectAll(blog);
    }

    /**
     * 分页查询
     */
    public PageInfo<Blog> selectPage(Blog blog, Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<Blog> list = blogMapper.selectAll(blog);
        for(Blog b : list){
            int likesCount = likesService.selectByFidAndModule(b.getId() , LikesModuleEnum.BLOG.getValue());
            b.setLikesCount(likesCount);
        }
        return PageInfo.of(list);
    }

    public List<Blog> selectTop(){
        List<Blog>blogList = this.selectAll(null);
        blogList=blogList.stream().sorted((b1,b2) -> b2.getReadCount().compareTo(b1.getReadCount()))
                .limit(20)
                .collect(Collectors.toList());
        return blogList;
    }


    public Set<Blog> selectRecommend(Integer blogId){
        Blog blog = this.selectById(blogId);
        String tags = blog.getTags();
        Set<Blog> blogSet = new HashSet<>();
        if(ObjectUtil.isNotEmpty(tags)){
            List<Blog> blogList = this.selectAll(null);
            JSONArray tagsArr = JSONUtil.parseArray(tags);
            for (Object tag : tagsArr) {
                //筛选出其他含相同标签的博客
                Set<Blog> collect = blogList.stream().filter(b -> b.getTags().contains(tag.toString()) && !blogId.equals(b.getId()))
                        .collect(Collectors.toSet());
                blogSet.addAll(collect);
            }
        }
        blogSet = blogSet.stream().limit(5).collect(Collectors.toSet());
        blogSet.forEach(b -> {
            int likesCount = likesService.selectByFidAndModule(b.getId(),LikesModuleEnum.BLOG.getValue());
            b.setLikesCount(likesCount);
        });
        return blogSet;
    }

    public PageInfo<Blog> selectUser(Blog blog, Integer pageNum, Integer pageSize) {
    Account currentUser=TokenUtils.getCurrentUser();
    if (RoleEnum.USER.name().equals(currentUser.getRole())){
        blog.setUserId(currentUser.getId());
    }
    return this.selectPage(blog,pageNum,pageSize);
    }
}
