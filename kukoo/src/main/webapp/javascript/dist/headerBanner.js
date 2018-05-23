(function(global) {

  $(document.body).append(
    '<script type="text/x-template" id="pg-head-banner-template">' +
    '<div class="page-title-cont page-title-large2-cont bg-gray" style="padding-top: 10px;">' +
    '  <div class="relative container align-left">' +
    '    <div class="row">' +
    '      <div class="col-md-8">' +
    '        <h1 class="page-title2">{{text}}</h1>' +
    '      </div>' +
    '      <div class="col-md-4">' +
    '        <div class="breadcrumbs2 font-poppins">' +
    '          <a class="a-inv" href="/kukoo/homePage/">KUKOO</a>' +
    '          <span class="slash-divider">/</span>' +
    '          <span class="bread-current">{{text}}</span>' +
    '        </div>' +
    '      </div>' +
    '    </div>' +
    '  </div>' +
    '</div>' +
    '</script>');

  Vue.component('pg-head-banner', {
    props: ['text'],
    template: '#pg-head-banner-template',
    data: function() {
      return {};
    },
    mounted: function() {},
    methods: {},
    watch: {}
  });

  new Vue({
    "el": '#ban1',
  });


})(window)
