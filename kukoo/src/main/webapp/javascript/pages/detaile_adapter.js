var RECORD = window.RECORD;
var SCORE = window.SCORE;
var LACK_PROFESSION = window.LACK_PROFESSION;
var TRAINING = window.TRAINING;

var top1 = $(".tabs-4-c").offset().top;

function pageInitStyle() {
  $('.tabs-4-c').css("padding-left", ($(window).width() - $('.container').width()) / 2);
  $(".tabs-4-1").css("width", $('.container .col-sm-8').width());
  $(".tabs-4-2").css("width", $(window).width() - $('.tabs-4-1').offset().left - $('.tabs-4-1').width() - 80);

  $(window).resize(function() {
    $('.tabs-4-c').css("padding-left", ($(window).width() - $('.container').width()) / 2);
    $(".tabs-4-2").css("width", $(window).width() - $('.tabs-4-1').offset().left - $('.tabs-4-1').width() - 80);
  });
}


$(window).scroll(function() {
  var win_top = $(this).scrollTop();
  var top = $(".tabs-4-c").offset().top;
  if (win_top >= (top - 60)) {
    $(".tabs-4-c").addClass("sfixed");
  } //如果此处用else判断来remove sfixed这个类的话是不行的，因为当加上这个类的时候，".scroll"这个元素fixed的top值是0，获取到的offset.top就相当于是当前滚动条的滚动的距离，win_top与top值就一直相等了，这样会导致抖动；只有与以前的距离做比较才能实现滑上去的时候能回到原来的位置。
  if (win_top < (top1 - 60)) {
    $(".tabs-4-c").removeClass("sfixed");
  }
});

function myfilter(arr, index, v) {
  return arr.filter(function(cv) {
    var rv = cv[index] == v;
    if (v === true) {
      rv = !!cv[index];
    }
    return rv;
  });
}

function mychildren(arr, index, v) {
  return arr.filter(function(cv) {
    return (cv[index] || "").toString().substring(0, 1) == v;
  });
}

function muytree(l1, list, opt) {

  var tree = [];
  for (var i = 0; i < l1.length; i++) {
    var _has2 = mychildren(list, opt.i2, l1[i][opt.l1_id]) || [];
    var obj = {
      "id": l1[i][opt.l1_id],
      "title": l1[i][opt.l1_title],
      "title_en": l1[i][opt.l1_title_en],
      "k1": l1[i][opt.l1_k1],
      "k2": l1[i][opt.l1_k2],
      "k3": l1[i][opt.l1_k3],
      "has2": _has2.length > 0,
      "children": []
    };
    if (_has2.length > 0) {
      _has2.forEach(function(cv) {
        var _list3 = myfilter(list, opt.i3, cv[opt.i2]);
        var _newlist3 = [];
        _list3.forEach(function(cv1) {
          _newlist3.push({
            "v1": cv1[opt.l3_v1],
            "v2": cv1[opt.l3_v2],
            "v3": cv1[opt.l3_v3]
          });
        });
        obj.children.push({
          "k1": cv[opt.l2_k1],
          "k2": cv[opt.l2_k2],
          "k3": cv[opt.l2_k3],
          "list": _newlist3
        });
      });
    } else {
      var _list3 = myfilter(list, opt.i3, obj.id);
      var _newlist3 = [];
      _list3.forEach(function(cv1) {
        _newlist3.push({
          "v1": cv1[opt.l3_v1],
          "v2": cv1[opt.l3_v2],
          "v3": cv1[opt.l3_v3]
        });
      });
      obj.children = _newlist3;
    }
    tree.push(obj);
  }
  return tree;
}

function for3(ds) {
  for (var name in ds) {
    switch (name) {
      case "fsw":
        var list = ds.fsw;
        var l1 = myfilter(list, 5, true);
        var opt = {
          "i2": 6, //二级菜单值所在下标
          "l1_id": 5,
          "l1_title": 0,
          "l1_title_en": 2,
          "l1_k1": 4,
          "l1_k2": 4,
          "i3": 7, //二级内容值所在下标
          "l2_k1": 0,
          "l2_k2": 4,
          "l2_k3": 0,
          "l3_v1": 0,
          "l3_v2": 4,
          "l3_v3": 0
        };
        ds.fsw = muytree(l1, list, opt);
        break;
      case "an":
        var list = ds.an;
        var l1 = myfilter(list, 4, true);
        var opt = {
          "i2": 5, //二级菜单值所在下标
          "l1_id": 4,
          "l1_title": 0,
          "l1_title_en": 1,
          "l1_k1": 2,
          "l1_k2": 3,
          "i3": 6, //二级内容值所在下标
          "l2_k1": 0,
          "l2_k2": 2,
          "l2_k3": 3,
          "l3_v1": 0,
          "l3_v2": 2,
          "l3_v3": 3
        };
        ds.an = muytree(l1, list, opt);
        break;
      case "kui":
        var list = ds.kui;
        var l1 = myfilter(list, 3, true);
        var opt = {
          "i2": 4, //二级菜单值所在下标
          "l1_id": 3,
          "l1_title": 0,
          "l1_title_en": 1,
          "l1_k1": 1,
          "l1_k2": 2,
          "i3": 5, //二级内容值所在下标
          "l2_k1": 0,
          "l2_k2": 1,
          "l2_k3": 2,
          "l3_v1": 0,
          "l3_v2": 1,
          "l3_v3": 2
        };
        ds.kui = muytree(l1, list, opt);
        break;
      case "ns":
        var list = ds.ns;
        var l1 = myfilter(list, 5, true);
        var opt = {
          "i2": 6, //二级菜单值所在下标
          "l1_id": 5,
          "l1_title": 0,
          "l1_title_en": 2,
          "l1_k1": 2,
          "l1_k2": 4,
          "i3": 7, //三级内容值所在下标
          "l2_k1": 0,
          "l2_k2": 4,
          "l2_k3": 0,
          "l3_v1": 0,
          "l3_v2": 4,
          "l3_v3": 0
        };
        ds.ns = muytree(l1, list, opt);
        break;
      case "sa":
        var list = ds.sa;
        var l1 = myfilter(list, 3, true);
        var opt = {
          "i2": 4, //二级菜单值所在下标
          "l1_id": 3,
          "l1_title": 0,
          "l1_title_en": 1,
          "l1_k1": 1,
          "l1_k2": 2,
          "i3": 5, //三级内容值所在下标
          "l2_k1": 0,
          "l2_k2": 2,
          "l2_k3": 0,
          "l3_v1": 0,
          "l3_v2": 2,
          "l3_v3": 0
        };
        ds.sa = muytree(l1, list, opt);
        break;
      case "nb":
        var list = ds.nb;
        var l1 = myfilter(list, 5, true);
        var opt = {
          "i2": 6, //二级菜单值所在下标
          "l1_id": 5,
          "l1_title": 0,
          "l1_title_en": 2,
          "l1_k1": 4,
          "l1_k2": 4,
          "i3": 7, //三级内容值所在下标
          "l2_k1": 0,
          "l2_k2": 4,
          "l2_k3": 0,
          "l3_v1": 0,
          "l3_v2": 4,
          "l3_v3": 0
        };
        ds.nb = muytree(l1, list, opt);
        break;
      case "au":
        var list = ds.au;
        var l1 = myfilter(list, 3, true);
        var opt = {
          "i2": 4, //二级菜单值所在下标
          "l1_id": 3,
          "l1_title": 0,
          "l1_title_en": 1,
          "l1_k1": 2,
          "l1_k2": 2,
          "i3": 5, //三级内容值所在下标
          "l2_k1": 0,
          "l2_k2": 2,
          "l2_k3": 0,
          "l3_v1": 0,
          "l3_v2": 2,
          "l3_v3": 0
        };
        ds.au = muytree(l1, list, opt);
        break;
    }
  }
}

for3(SCORE);

_app = new Vue({
  "el": '#wrap',
  "data": {
    "pay": PAYDIC,
    "doc": DOCLIST,
    "dura": DURATION,
    "record": RECORD,
    "score": SCORE,
    "profession": LACK_PROFESSION,
    "training": TRAINING
  },
  mounted: function() {
    $(".bootstrap-tabs").on("click", function() {
      $(window).scrollTop(0);
    });
    pageInitStyle();
    setTimeout(function() {
      DICTIONART.init();
    }, 1000);
  },
  methods: {},
  watch: {},
  filters: {}
});
