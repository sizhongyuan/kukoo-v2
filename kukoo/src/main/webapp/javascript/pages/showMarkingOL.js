var list = [{
  title: "1",
  question: "情感状况",
  details: [{
    subtitle: "",
    oneline: true,
    default0: "请选择",
    default1: "请选择",
    default2: "请选择",
    value: [
      ["-1", "-1"]
    ],
    q: ["您是否拥有希望共同移民的配偶或未婚伴侣？（以下简称伴侣）"],
    a: [
      ["有", "无"]
    ]
  }]
}, {
  title: "2",
  question: "年龄",
  details: [{
    subtitle: "",
    oneline: true,
    default0: "请选择",
    default1: "您",
    default2: "您的伴侣",
    value: [
      ["-1", "-1"]
    ],
    q: ["请选择您及您伴侣（如有）的年龄 ？"],
    a: [
      ["18-", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28",
        "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40",
        "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "50+"
      ] //默认为30岁或者改为输入
    ]
  }]
}, {
  title: "3",
  question: "子女情况",
  details: [{
    subtitle: "",
    oneline: true,
    default0: "请选择",
    default1: "您",
    default2: "您的伴侣",

    value: [
      ["-1", "-1"]
    ],
    q: ["12岁以下子女数量"],
    a: [
      ["0", "1", "2", "2+", ]
    ]
  }, {
    subtitle: "",
    oneline: true,
    default0: "请选择",
    default1: "您",
    default2: "您的伴侣",

    value: [
      ["-1", "-1"]
    ],
    q: ["13到21岁子女数量"],
    a: [
      ["0", "1", "2", "3", "3+", ]
    ]
  }]
}, {
  title: "4",
  question: "学历状况",
  details: [{
    subtitle: "",
    oneline: true,
    default0: "请选择",
    default1: "您",
    default2: "您的伴侣",
    value: [
      ["-1", "-1"]
    ],
    q: ["请选择您及您伴侣（如有）的最高学历"],
    a: [
      [
        "博士",
        "硕士",
        "双学历",
        "本科（4年制）",
        "本科（3年制）",
        "本科（2年制）",
        "本科（1年制）",
        "专科（文科）",
        "专科（理科）",
        "普通高中",
        "职业高中",
        "初中及以下"
      ]
    ]
  }]
}, {
  title: "5",
  question: "外语水平",
  details: [{
    subtitle: "5.1 请预估您及您伴侣(如有)的英语雅思水平",
    oneline: true,
    default0: "请选择",
    default1: "您",
    default2: "您的伴侣",
    value: [
      ["-1", "-1"],
      ["-1", "-1"],
      ["-1", "-1"],
      ["-1", "-1"]
    ],
    q: [
      "● 听", "● 说", "● 读", "● 写"
    ],
    a: [
      [
        0,
        0.5,
        1,
        1.5,
        2,
        2.5,
        3,
        3.5,
        4,
        4.5,
        5,
        5.5,
        6,
        6.5,
        7,
        7.5,
        8,
        8.5,
        9
      ],
      [
        0,
        0.5,
        1,
        1.5,
        2,
        2.5,
        3,
        3.5,
        4,
        4.5,
        5,
        5.5,
        6,
        6.5,
        7,
        7.5,
        8,
        8.5,
        9
      ],
      [
        0,
        0.5,
        1,
        1.5,
        2,
        2.5,
        3,
        3.5,
        4,
        4.5,
        5,
        5.5,
        6,
        6.5,
        7,
        7.5,
        8,
        8.5,
        9
      ],
      [
        0,
        0.5,
        1,
        1.5,
        2,
        2.5,
        3,
        3.5,
        4,
        4.5,
        5,
        5.5,
        6,
        6.5,
        7,
        7.5,
        8,
        8.5,
        9
      ]
    ]
  }, {
    subtitle: "5.2 请预估您及您伴侣(如有)的法语水平",
    oneline: true,
    default0: "请选择",
    default1: "您",
    default2: "您的伴侣",
    value: [
      ["-1", "-1"],
      ["-1", "-1"],
      ["-1", "-1"],
      ["-1", "-1"]
    ],
    q: [
      "● 听", "● 说", "● 读", "● 写"
    ],
    a: [
      [
        "高", "中", "低", "入门", "不会"
      ],
      [
        "高", "中", "低", "入门", "不会"
      ],
      [
        "高", "中", "低", "入门", "不会"
      ],
      [
        "高", "中", "低", "入门", "不会"
      ]
    ]
  }]
}];

var __list = localStorage.getItem("__list");
list = __list ? JSON.parse(__list) : list;

var __answer = localStorage.getItem("__answer");
__answer = __answer ? JSON.parse(__answer) : {};


var _verify = null;
_app = new Vue({
  "el": '.list-c',
  "data": {
    "list": list,
    "change1": false
  },
  mounted: function() {
    var _this = this;
    $(".btns span").on("click", function() {
      $.ajax({
        url: "/kukoo/markingOLController/addMarkingOL",
        type: "POST",
        data: {
          marking: _this.val()
        },
        dataType: "json",
        success: function(result) {
          if (true) {
            window.location.href = "/kukoo/markingOLController/resultOL";
          }
        }
      });
    });
    this.handelVerify();
  },
  updated: function() {
    if (this.change1) {
      this.handelVerify();
      this.change1 = false;
    }
  },
  methods: {
    handelVerify: function() {
      _verify = new Verify(".btns span", ".list-c", {
        "tips_type": "dialog",
        err_cb: function(tbx) {
          var msg = tbx.parents(".item1").find(".pen").text();
          $(".dialog-msg").text(msg);
          $("#dialog_btn").trigger("click");
        }
      });
    },
    change: function(e) {
      if ($(e.target).attr("q") == "情感状况") {
        if ($(e.target).val() == "有") {
          _app2.$data.myWife.display = "show";
          this.setOnelie(false);
        } else {
          _app2.$data.myWife.display = "hide";
          this.setOnelie(true);
        }
        this.change1 = true;
      }
    },
    setOnelie: function(flag) {
      this.list[1].details[0].oneline = flag;
      this.list[3].details[0].oneline = flag;
      this.list[4].details[0].oneline = flag;
      this.list[4].details[1].oneline = flag;
    },
    val: function() {
      var rv = [];
      rv.push(_val(0));
      if (rv[0].question1 == "有") rv.push(_val(1));
      return rv;
    }
  }
});

function _val(i) {
  var list = _app.$data.list;
  var works = i == 0 ? _app2.$data.mine.works : _app2.$data.myWife.works;
  //var w = [];
  for (var j = 0; j < works.length; j++) {
    works[j]["profession"] = works[j].name;
    works[j]["time"] = works[j].start + "至" + works[j].end;
  }
  return {
    "question1": this.list[0].details[0].value[0][i],
    "question2": this.list[1].details[0].value[0][i],
    "question3": this.list[2].details[0].value[0][0] + "," + this.list[2].details[1].value[0][0],
    "question4": this.list[3].details[0].value[0][i], //学历
    "question6": {
      "listening": this.list[4].details[0].value[0][i],
      "speaking": this.list[4].details[0].value[1][i],
      "reading": this.list[4].details[0].value[2][i],
      "writing": this.list[4].details[0].value[3][i],
    },
    "question7": {
      "listening": this.list[4].details[1].value[0][i],
      "speaking": this.list[4].details[1].value[1][i],
      "reading": this.list[4].details[1].value[2][i],
      "writing": this.list[4].details[1].value[3][i],
    },
    "question5": works,
    "specialty": [],
    "learn": ""
  }
}

var YEARS = [];
var YMS = [];

function yms(sy, sm) {
  for (var i = 0; i < 121; i++, sm++) {
    if (sm > 12) {
      sy++;
      sm = 1;
    }
    YMS.push(sy + "-" + sm);
  }
}

function spot() {
  var date = new Date;
  var year = date.getFullYear();
  var month = date.getMonth()
  var rv = [];
  for (var i = 10; i >= 0; i--) {
    var l = i == 0 ? 99.9 : ((10 - i) * 10);
    rv.push({
      text: (year - i) + "年" + (month + 1) + "月",
      left: "left: " + l + "%"
    });
    YEARS.push(year - i);
  }
  yms(year - 10, month + 1);
  return rv;
}

_app2 = new Vue({
  "el": '.timeline',
  "data": {
    "mine": {
      "display": "show",
      "count": 2,
      "works": []
    },
    "myWife": {
      "display": "none",
      "count": 0,
      "works": []
    },
    "occup": [
      "制造业工程师经理类",
      "维修/操作技师、技工类",
      "农业、园艺类",
      "企业咨询类",
      "土地测量类",
      "医疗、生物类",
      "幼教类",
      "地质矿产类",
      "计算机类",
      "社会及社区工作",
      "土木、建筑类",
      "大专及职业院校教师",
      "法律相关",
      "广告市场",
      "行政助理",
      "护士",
      "金融财会类",
      "其他"
    ],
    spot: spot(),
    moving: false,
    isMine: true,
    offset_x: 0,
    index: 0,
    isAddArea: false,
    addI: 0
  },
  mounted: function() {
    if (__answer[0] && __answer[0].question5) {
      this.mine.works = __answer[0].question5 || [];
    }
    if (__answer[1] && __answer[1].question5) {
      this.myWife.works = __answer[1].question5 || [];
      if (this.myWife.works.length > 0) this.myWife.display = "show";
    }

    var _this = this;
    $(".btns span").on("click", function() {
      // $.ajax({
      //   url: "/kukoo/markingOLController/addMarkingOL",
      //   type: "POST",
      //   data: {
      //     marking: _this.val()
      //   },
      //   dataType: "json",
      //   success: function(result) {
      //     if (true) {
      //       window.location.href = "/kukoo/markingOLController/resultOL";
      //     }
      //   }
      // });

      localStorage.setItem("__list", JSON.stringify(list));
      localStorage.setItem("__answer", JSON.stringify(_app.val()));
      setTimeout(function() {
        window.location.href = "/kukoo/markingOLController/resultOL";
      }, 500)
    });
  },
  updated: function() {
    $('[data-toggle="tooltip"]').tooltip();
    if (this.isAddArea) {
      var area_str = this.isMine ? ".mine .area:eq(" + this.index + ")" : ".myWife .area:eq(" + this.index + ")";
      var cw = $(".mine .c").width();
      $(area_str).css("width", cw / 10);
      $(area_str).css("left", this.addI * (cw / 120));
      this.isAddArea = false;
    }
  },
  methods: {
    work: function(index) {
      return this.works()[index];
    },
    works: function() {
      return this.isMine ? this.mine.works : this.myWife.works;
    },
    maxEi: function() {
      var works = this.works();
      var rv = 0;
      for (var i = 0; i < works.length; i++) {
        if (works[i].ei > rv) {
          rv = works[i].ei;
        }
      }
      return rv;
    },
    delete1: function(e) {
      var index = parseInt($(e.target).attr("tabindex"));
      this.works().splice(index, 1);
    },
    select_area: function(e) {
      var $e = $(e.target);
      if (!$e.hasClass(".area")) {
        $e = $e.parents(".area");
      }
      $(".timeline .area").removeClass("on");
      $e.addClass("on");
    },
    sel_occup: function(e) {
      var name = $(e.target).text();
      var works = this.works();
      var maxei = this.maxEi();
      this.addI = maxei == 0 ? 0 : maxei + 1;
      works.push({
        "start": YMS[this.addI],
        "end": YMS[this.addI + 12],
        "name": name,
        "span": 12,
        "unit": "月",
        "ei": this.addI + 12,
        "si": this.addI
      });
      this.index = works.length - 1;
      $(".modal-header .close").click();
      this.isAddArea = true;
    },
    computeAreaStartAndEnd: function($area) {
      var cw = $(".mine .c").width();
      var cl = $(".mine .c").offset().left;
      var cr = cl + cw;
      var dis10 = cw / 10;
      var start = $area.offset().left;
      var end = start + $area.width();

      // var si = parseInt((start - cl) / dis10); //区块左边点落在第几个年下标
      // var ei = parseInt((end - cl) / dis10); //区块右边点落在第几个年下标
      // var sm = Math.round(((start - cl) % dis10) / (dis10 / 12)) //区块左边点取余算出月份
      // var em = Math.round(((end - cl) % dis10) / (dis10 / 12)) //区块右边点取余算出月份
      // sm = sm == 0 ? 12 : sm;
      // em = em == 0 ? 12 : em;

      var si = Math.round((start - cl) / (cw / 120));
      var ei = Math.round((end - cl) / (cw / 120)) + 1;

      var work = this.work(this.index);

      work.si = si;
      work.ei = ei;
      work.start = YMS[si]
      work.end = YMS[ei];
      work.span = ei - si + 1;
    },
    move_bar_down: function(e) {
      var $area = $(e.target).parent();
      this.moving = true;
      this.index = parseInt($area.attr("tabindex"));
      var cw = $(e.target).parents(".c").width(); //容器宽度
      var x0 = e.clientX; //点击时clientX
      var aw = $area.width(); //区块宽度
      var al = parseInt($area.css("left").split("px")[0]); //区块left值
      var minW = cw / 20; //最小宽度
      var _this = this;
      $(".main").on("mousemove", function(e1) {
        if (_this.moving) {
          var disX = e1.clientX - x0;
          if ($(e.target).hasClass("lbar")) {
            var iL = al + disX;
            var iW = aw - disX;
            $area.css("left", iL < 0 ? 0 : iL);
            if (iL >= 0) {
              var iw2 = iL + iW > cw ? (cw - iL) : iW;
              $area.css("width", iw2 < minW ? minW : iw2);
            }
          } else {
            var tmp = aw + disX;
            var iW = al + tmp > cw ? (cw - al) : tmp;
            $area.css("width", iW < minW ? minW : iW);
          }
          _this.computeAreaStartAndEnd($area);
          $(".tooltip").hide();
        }
      });
      $(document).on("mouseup", function() {
        _this.moving = false;
        $(".main").off("mousemove");
      });
    }
  }
});
