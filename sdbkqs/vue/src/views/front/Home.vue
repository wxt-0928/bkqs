<template>
  <div class="main-content">
    <div style="display:flex;grid-gap:10px">

        <div style="width:150px" class="card">
            <div class="category-item" :class="{'category-item-active':item.name === current }"
            v-for="item in categoryList" :key="item.id" @click="selectCategory(item.name)">{{item.name}}</div>
        </div>

        <div style="flex:1" class="card">

        <div style="display: flex; padding: 15px 0; border-bottom: 1px solid #ddd;margin-bottom: 10px">
            <div style="flex: 1;width: 0">
                <div style="font-size:16px;font-weight:bold;margin-bottom: 10px">什么是国家奖学金？</div>
                <div class="line1" style="color: #666;margin-bottom: 10px;font-size: 13px">国家助学金由中央与地方政府共同出资设立，
                用于资助高校家庭经济困难的本科生在校的生活费用开支。</div>
                <div style="display: flex;padding: 15px 0; border-bottom: 1px solid #ddd">
                    <div style="flex:1;font-size: 13px">
                        <span style="color: #666;margin-right: 20px"><i class="el-icon-user"></i> 润玉</span>
                        <span style="color: #666;margin-right: 20px"><i class="el-icon-view"></i> 100</span>
                        <span style="color: #666"><i class="el-icon-like"></i> 69</span>
                    </div>
                    <div style="width: fit-content">
                        <el-tag type="primary" style="margin-right:10px">后端</el-tag>
                        <el-tag type="primary">面试</el-tag>
                    </div>
                </div>
            </div>
            <div style="width: 100px">
                <img style="width: 100%;border-radius:5px" src="" alt="">
            </div>
        </div>

        <div>
                <el-pagination
                    background
                    @current-change="handleCurrentChange"
                    :current-page="pageNum"
                    :page-sizes="[5, 10, 20]"
                    :page-size="pageSize"
                    layout="total, prev, pager, next"
                    :total="total">
                </el-pagination>
              </div>

        </div>

        <div style="width:260px" class="card"></div>

    </div>
  </div>
</template>

<script>

export default {

  data() {
    return {
        current:'全部博客', //当前选中的分类名称
        categoryList: [],
        tableData: [],  // 所有的数据
        pageNum: 1,   // 当前的页码
        pageSize: 10,  // 每页显示的个数
        total: 0,
    }
  },
  mounted() {
    this.load()

    this.loadBlogs(1)

  },
  // methods：本页面所有的点击事件或者其他函数定义区
  methods: {
    selectCategory(categoryName){
        this.current=categoryName

        this.loadBlogs(1)
    },
    load() {
        //请求分类的数据
        this.$request.get('/category/selectAll').then(res => {
            this.categoryList=res.data || []
            this.categoryList.unshift({name:'全部博客'})
        }) //没有逗号
    },
        loadBlogs(pageNum){
            if (pageNum) this.pageNum = pageNum
                  this.$request.get('/blog/selectPage', {
                    params: {
                      pageNum: this.pageNum,
                      pageSize: this.pageSize,
                      categoryName: this.current === '全部博客' ? null : this.current,
                    }
                  }).then(res => {
                    this.tableData = res.data?.list
                    this.total = res.data?.total
                  })
    },
    handleCurrentChange(pageNum) {
          this.load(pageNum)
        },
  }
}
</script>

<style>
.category-item{
    text-align: center;
    padding:10px 0;
    font-size:16px;
    cursor: pointer;
}
.category-item-active{
    background-color: #1890ff;
    color: #fff;
    border-radius: 5px;
}

.line1{
    white-space: nowrap;
    overflow: hidden;
    text-overflow:ellipsis;
}
</style>