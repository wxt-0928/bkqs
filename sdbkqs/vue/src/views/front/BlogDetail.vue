<template>
    <div class="main-content">
      <div style="display: flex">

        <div style="flex: 1">
          <div class="card" style="padding: 30px">
            <div style="font-weight: bold;font-size: 24px">{{ blog.title }}</div>
          </div>
        </div>
        <div style="width: 260px">

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
      blog:{}
    }
  },
  created() {
    this.load()
  },
  methods:{
    load(){
      this.$request.get('blog/selectById/'+this.blogId).then(res =>{
        this.blog=res.data || {}
      })
    }
  }
}
</script>

<style scoped>

</style>