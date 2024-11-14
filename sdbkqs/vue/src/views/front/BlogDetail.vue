<template>
    <div class="main-content">
      <div style="display: flex; grid-gap: 10px">

        <div style="flex: 1">
          <div class="card" style="padding: 30px">
            <div style="font-weight: bold;font-size: 24px;margin-bottom: 20px">{{ blog.title }}</div>
            <div style="color: #666;margin-bottom:  20px">
              <span style="margin-right: 20px"><i class="el-icon-user"></i>{{blog.userName}}</span>
              <span style="margin-right: 20px"><i class="el-icon-date"></i>{{blog.date}}</span>
              <span style="margin-right: 20px"><i class="el-icon-view"></i>{{blog.readCount}}</span>
              <span>
                <el-tag v-for="item in tagsArr" :key="item" type="primary" style="margin-right: 5px">{{item}}</el-tag>
              </span>
            </div>

            <div class="w-e-text">
              <div v-html="blog.content"></div>
            </div>
          </div>
        </div>
        <div style="width: 260px">
          <div class="card" style="margin-bottom: 10px">
            <div style="display: flex;align-items:center; grid-gap: 10px;margin-bottom: 10px">
              <img :src="blog.user?.avatar" alt="" style="width: 50px;height: 50px; border-radius: 50%">
              <div style="flex: 1">
                <div style="font-weight: bold;margin-bottom: 5px">{{ blog.user?.name }}</div>
                <div style="color: #666;font-size: 13px" class="line2">{{ blog.user?.info }}</div>
              </div>
            </div>

            <div style="display: flex">
              <div style="flex: 1;text-align: center">
                <div style="margin-bottom: 5px">文章</div>
                <div style="color: #888">10</div>
              </div>
              <div style="flex: 1;text-align: center">
                <div style="margin-bottom: 5px">点赞</div>
                <div style="color: #888">5</div>
              </div>
              <div style="flex: 1;text-align: center">
                <div style="margin-bottom: 5px">收藏</div>
                <div style="color: #888">7</div>
              </div>
            </div>
          </div>

          <div class="card">
            <div style="font-weight: bold; font-size: 20px;padding-bottom: 10px;border-bottom: 1px solid #ddd;margin-bottom: 10px">相关推荐</div>

            <div>
              <div style="margin-bottom: 15px" v-for="item in recommendList":key="item.id">
                <div style="margin-bottom: 5px">各类助学金，奖学金相关信息</div>
                <div style="color: #888">
                  <span>阅读</span> <span>15</span>
                  <span style="margin-left: 10px">点赞</span> <span>10</span>
                </div>
              </div>
            </div>
          </div>

        </div>
      </div>
    </div>
</template>

<script>
export default {
  name: "BlogDetail",
  data(){
    return{
      blogId: this.$route.query.blogId,
      blog:{},
      tagsArr:[],
      recommendList: [
        {title:'奖学金'}
      ]
    }
  },
  created() {
    this.load()
  },
  methods:{
    load(){
      this.$request.get('blog/selectById/'+this.blogId).then(res =>{
        this.blog=res.data || {}

        this.tagsArr = JSON.parse(this.blog.tags || '[]')
      })
    }
  }
}
</script>

<style>

p {
  line-height: 30px;
}
</style>