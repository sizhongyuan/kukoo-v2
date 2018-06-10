(function(global) {

  // 首页 header header-1 header-black affix

  $(document.body).append(
    '<script type="text/x-template" id="pg-header-template">' +
    '<header id="nav" class="header header-1 bg-gray">' +
    '  <div class="header-wrapper">' +
    '    <div class="container-m-30 clearfix">' +
    '      <div class="logo-row">' +
    '        <div class="logo-container-2">' +
    '          <div class="logo-2">' +
    '            <a href="' + BASEPATH + "homePage" + '" class="clearfix">' +
    '              <img :src="logoPath" class="logo-img" alt="Logo"></a>' +
    '            </div>' +
    '          </div>' +
    '          <div class="menu-btn-respons-container">' +
    '            <button id="menu-btn" type="button" class="navbar-toggle btn-navbar collapsed" data-toggle="collapse" data-target="#main-menu .navbar-collapse">' +
    '              <span aria-hidden="true" class="icon_menu hamb-mob-icon" style="font-family:ElegantIcons !important"></span>' +
    '            </button>' +
    '          </div>' +
    '        </div>' +
    '      </div>' +
    '      <div class="main-menu-container">' +
    '        <div class="container-m-30 clearfix">' +
    '          <div id="main-menu">' +
    '            <div class="navbar navbar-default" role="navigation">' +
    '              <nav class="collapse collapsing navbar-collapse right-1024">' +
    '                <ul class="nav navbar-nav">' +
    '                  <li class="parent megamenu">' +
    '                    <a href="'+BASEPATH+'homePage" class="">' +
    '                      <div class="main-menu-title">首页</div>' +
    '                    </a>' +
    '                  </li>' +
    '                  <li class="parent megamenu">' +
    '                    <a href="'+BASEPATH+'list/lists" class="">' +
    '                      <div class="main-menu-title">移民项目</div>' +
    '                    </a>' +
    '                  </li>' +
    '                  <li class="parent megamenu">' +
    '                    <a href="'+BASEPATH+'list/cases" class="">' +
    '                      <div class="main-menu-title">移友足迹</div>' +
    '                    </a>' +
    '                  </li>' +
    '                  <li class="parent megamenu">' +
    '                    <a href="'+BASEPATH+'markingOLController/showMarkingOL" class="">' +
    '                      <div class="main-menu-title">在线评估</div>' +
    '                    </a>' +
    '                  </li>' +
    '                </ul>' +
    '              </nav>' +
    '            </div>' +
    '          </div>' +
    '        </div>' +
    '      </div>' +
    '      <ul class="cd-header-buttons" style="z-index: 999;">' +
    '        <li>' +
    '          <a class="cd-search-trigger" href="#cd-search">' +
    '            <span></span>' +
    '          </a>' +
    '        </li>' +
    '      </ul>' +
    '      <div id="cd-search" class="cd-search" style="background-color: #FFF;z-index: 99;">' +
    '        <form class="form-search" id="searchForm" action="'+BASEPATH+'list/lists" method="post">' +
    '          <input type="text" value="" name="search" id="search" placeholder="国家名/项目名...">' +
    '        </form>' +
    '      </div>' +
    '    </div>' +
    '  </header>' +
    '</script>');

  Vue.component('pg-header', {
    props: ["homepage"],
    template: '#pg-header-template',
    data: function() {
      return {
        "logoPath": this.homepage ? BASEPATH + "elementy/png/logo-white.png" : BASEPATH + "elementy/png/logo-black.png"
      };
    },
    mounted: function() {
      //$(".hamb-mob-icon").css("font-family", "ElegantIcons !important");
    },
    methods: {},
    watch: {}
  });

  new Vue({
    "el": '.pg-header',
  });




})(window)
