<template>
  <div class="main-content">
    <div style="display: flex; align-items: flex-start; grid-gap: 10px">

      <div style="width: 150px" class="card">
        <div class="category-item" :class="{ 'category-item-active': item.name === current }"
             v-for="item in categoryList" :key="item.id" @click="selectCategory(item.name)">{{ item.name }}</div>
      </div>

      <div style="flex: 1">

        <blog-list :categoryName="current"/>
          <Footer />


      </div>

      <div style="width: 260px" >
        <div class="card" style="margin-bottom: 10px">
          <div style="font-size: 20px;font-weight: bold;margin-bottom: 10px">欢迎您！😊</div>
          <a href="/front/person"><div style="color: #666">写下博客记录美好的一天</div></a>
        </div>

        <div class="card">
          <div style="display: flex; align-items:center; padding-bottom: 10px;border-bottom: 1px solid #ddd">
            <div style="font-size: 20px; flex:1">文章榜单</div>
            <div style="font-size: 12px;color: #666;cursor: pointer;" @click="refreshTop"><i class="el-icon-refresh"></i> 换一换</div>
          </div>
          <div>
            <div v-for="item in showList" :key="item.id" style="margin: 15px 0" class="line1">
              <a :href="'/front/blogDetail?blogId=' + item.id" target="_blank">
    <span style="width: 18px; display: inline-block; text-align: right; margin-right: 10px">
      <span style="color: orangered" v-if="item.index === 1">{{ item.index }}</span>
      <span style="color: goldenrod" v-else-if="item.index === 2">{{ item.index }}</span>
      <span style="color: dodgerblue" v-else-if="item.index === 3">{{ item.index }}</span>
      <span style="color: #666" v-else>{{ item.index }}</span>
    </span>
                <span style="color: #666;">{{ item.title }}</span>
              </a>
            </div>
          </div>
        </div>

        <div style="line-height: 30px; color: #666;padding: 0 10px">
          <div>举报邮箱：hnsfdx@htu.ip</div>
          <div>电话：010-123456</div>
        </div>

      </div>

    </div>
  </div>
</template>

<script>

import Footer from "@/components/Footer";
import BlogList  from "@/components/BlogList";
export default {
  components: {
    BlogList,
    Footer
  },
  data() {
    return {
      current: '全部博客',  //当前选中的分类名称
      categoryList: [],

      topList: [],
      showList: [],
      lastIndex: 0
    }
  },
  mounted() {
    this.load()



    this.refreshTop()

  },
  // methods：本页面所有的点击事件或者其他函数定义区
  methods: {
    refreshTop(){
      this.$request.get('/blog/selectTop').then(res => {
        this.topList = res.data || []
        let i = 1
        this.topList.forEach(item => item.index = i++)
      //可以翻几页，可以查看几行，这里设置的是最多可以查看20行
        if(this.lastIndex === 20){
          this.lastIndex = 0
        }
        this.showList = this.topList.slice(this.lastIndex, this.lastIndex+5)
        this.lastIndex += 5
      })
    },
    selectCategory(categoryName) {
      this.current = categoryName

    },
    load() {
      // 请求分类的数据
      this.$request.get('/category/selectAll').then(res => {
        this.categoryList = res.data || []
        this.categoryList.unshift({ name: '全部博客' })
      })
    },

    handleCurrentChange(pageNum) {
      this.load(pageNum)
    },
  }
}
</script>

<style>
.category-item {
  text-align: center;
  padding: 10px 0;
  font-size: 16px;
  cursor: pointer;
}
.category-item-active {
  background-color: #1890ff;
  color: #fff;
  border-radius: 5px;
}

.blog-box {
  display: flex;
  grid-gap: 15px;
  padding: 10px 0;
  border-bottom: 1px solid #ddd;
}
.blog-box:first-child {
  padding-top: 0;
}

.blog-title{
  font-size: 16px;
  font-weight: bold;
  margin-bottom: 10px;
  cursor: pointer;
}
.blog-title:hover{
  color: #2a60c9;
}

</style>