(function(global) {

  $(document.body).append(
    '<script type="text/x-template" id="pg-head-banner-template">' +
    '<div class="page-title-cont page-title-large2-cont bg-gray" style="padding-top: 10px;">' +
    '  <div class="relative container align-left">' +
    '    <div class="row">' +
    '      <div class="col-md-8">' +
    '        <h1 class="page-title2">{{text}}</h1>' +
    '        <a v-if="isdetail" :href="url" target="_blank" class="detail-a"><i class="fa fa-link"></i> 查看该项目移民局官网</a>' +
    '      </div>' +
    '      <div class="col-md-4">' +
    '        <div class="breadcrumbs2 font-poppins">' +
    '          <a class="a-inv" href="'+BASEPATH+'homePage/">KUKOO</a>' +
    '          <span class="slash-divider">/</span>' +
    '          <a v-if="purl" class="a-inv" :href="purl">{{pname}}</a>' +
    '          <span v-if="purl" class="slash-divider">/</span>' +
    '          <span class="bread-current">{{text}}</span>' +
    '        </div>' +
    '      </div>' +
    '    </div>' +
    '  </div>' +
    '</div>' +
    '</script>');

  Vue.component('pg-head-banner', {
    props: ['text', 'isdetail', 'url', 'purl', "pname"],
    template: '#pg-head-banner-template',
    data: function() {
      //this.purl = BASEPATH + this.purl;
      return {
        "text": this.text,
        "isdetail": this.isdetail,
        "url": this.url,
        "pname": this.pname,
        "purl": this.purl
      };
    },
    mounted: function() {},
    methods: {},
    watch: {}
  });

  new Vue({
    "el": '#ban1',
  });


})(window)
