// $(".col-md-11 div").on("click", function(e) {
//   var siblings = $(e.target).siblings();
//   siblings.removeClass("on");
//   $(e.target).addClass("on");
// })
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
    q: ["您是否拥有共同移民的配偶或未婚伴侣？（以下简称伴侣）"],
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
    subtitle: "5.2 请预估您及您伴侣(如有)的法语水平 (选填)",
    oneline: true,
    default0: "请选择 (选填)",
    default1: "您 (选填)",
    default2: "您的伴侣 (选填)",
    dtype: "no",
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

Array.prototype.insert = function(index, item) {
  this.splice(index, 0, item);
};
Array.prototype.ymIndex = function(str) {
  var rv = -1;
  this.forEach(function(c, index) {
    if (c.str == str)
      rv = index;
  });
  return rv;
};
Array.prototype.state2 = function(start, end, v) {
  var s = this.ymIndex(start);
  var e = this.ymIndex(end);
  if (v) {
    this.forEach(function(c, index) {
      if (index >= s && index <= e) {
        c.state = v;
      }
    });
  } else {
    var rv = [];
    this.forEach(function(c, index) {
      if (index > s && index < e) {
        rv.push(c.state);
      }
    });
    return rv;
  }
};


var __list = localStorage.getItem("__list");
list = __list ? JSON.parse(__list) : list;

var __answer = localStorage.getItem("__answer");
__answer = __answer ? JSON.parse(__answer) : {};


var YMS = [];
var YMS2 = [];
var YEAR = [];
var MS = [];
var YS = [];

var occup = [
  "制造业工程师、经理类",
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
];

function gcurr() {
  return {
    "start": {
      "str": "",
      "sy": 0,
      "sm": 0,
    },
    "end": {
      "str": "",
      "sy": 0,
      "sm": 0,
    }
  };
}

function ysms() {
  for (var i = 0; i < 12; i++) {
    MS.push({
      "sm": i + 1,
      "state": 2
    });
  }
  for (var i = 0; i < 11; i++) {
    YS.push({
      "sy": YEAR[i],
      "state": 0
    });
  }
}

function yms(sy, sm) {
  for (var i = 0; i < 120; i++, sm++) {
    if (sm > 12) {
      sy++;
      sm = 1;
    }
    YMS.push({
      "str": sy + "-" + sm,
      "sy": sy,
      "sm": sm,
      "state": 0
    });
    YMS2.push({
      "str": sy + "-" + sm,
      "sy": sy,
      "sm": sm,
      "state": 0
    });
    if (YEAR.indexOf(sy) == -1) {
      YEAR.push(sy);
    }
  }
}

function spot() {
  var date = new Date;
  var year = date.getFullYear();
  var month = date.getMonth();
  yms(year - 10, month + 1);
  ysms();
}

var _TYPE = 0;

var tsp_col = Vue.component('ts-per', {
  template: '#timespanpicker-template',
  props: ["myname", "works", "yms", "profession", "_type"],
  data: function() {
    return {
      "works": this.works,
      "styleObject": {},
      "show": false,
      "s": 1,
      "year": YEAR,
      "current": gcurr(),
      "tmp": {},
      "index": 0,
      "selected": [],
      "ms": MS,
      "ys": YS
    }; //很重要，需要返回一个对象，父子组件读取使用
  },
  mounted: function() {
    var _this = this;
    this.works.forEach(function(c, index) {
      var date = c.time.split("至");
      c.start = date[0];
      c.end = date[1];
      _this.selected.push(c);
    });
    //初始化所有节点状态
    this.init(this.works);
    this.works = this.selected;
    this._w();
    //
    $(".mask").css("height", $(document).height());
  },
  methods: {
    init: function(p_works) {
      for (var i = 0; i < p_works.length; i++) {
        this.yms.state2(p_works[i].start, p_works[i].end, 9);
      }
      this.gy(2);
      if (this.selected.length == 0) {
        this.add(-1);
      }
    },
    gy: function(v) {
      var _this = this;
      YEAR.forEach(function(c, i) {
        var _year = _this.yms.filter(function(c1) {
          return c1.sy == c;
        });
        var has1 = _year.some(function(c2) {
          return c2.state == 0;
        });
        Vue.set(_this.ys[i], "state", has1 ? 0 : v);
      });
    },
    gm: function(year) {
      var index = 0;
      var ms = this.yms.filter(function(c, i) {
        var rv = c.sy == year;
        if (rv) index = i;
        return rv;
      });
      var i = index > 60 ? (11 - ms.length) : 1;
      var len = ms.length;
      while (ms.length < 12) {
        if (index > 60) {
          ms.push({
            "sm": i,
            "state": 2
          });
        } else {
          ms.insert(0, {
            "sm": len - i - 1,
            "state": 2
          });
        }
        i++;
      };
      this.ms = ms;
    },
    curr: function(key, v) {
      var c = this.current[this.s == 1 ? "start" : "end"];
      if (key) {
        c[key] = v;
        if (c.sy && c.sm) {
          c.str = c.sy + "-" + c.sm;
          //setTimeout(this.changeS, 500);
        }
      }
      return c;
    },
    ym_reset: function(key) {
      this[key == "year" ? "ys" : "ms"].forEach(function(c) {
        if (c.state == 1) {
          c.state = 0;
        }
      });
    },
    sel_year: function(e) {
      var $e = $(e.target);
      var text = $e.text();
      var i = parseInt($e.attr("i"));
      if (this.ys[i].state == 0) {
        this.ym_reset("year");
        Vue.set(this.ys[i], "state", 1);
        this.curr("sy", text);
        //
        this.gm(text);
      };
    },
    _w: function() {
      this.$parent.$data["works" + (this._type + 1)] = this.works;
    },
    sync: function(ed, v) {
      if (ed) {
        if (ed.time == "") return;
      }
      var s = 0;
      this.yms.forEach(function(c) {
        if (ed) {
          if (c.str == ed.start) {
            s = 1;
          }
          if (c.str == ed.end) {
            s = 2;
            c.state = v;
          }
          if (s == 1) {
            c.state = v;
          }
        }
        if (c.state == 2 || c.state == 1) {
          c.state = 0;
        }
      });
      this.gy(2);
      this.ms = MS;
      this.works = this.selected;
      this._w();
    },
    sel_month: function(e) {
      var $e = $(e.target);
      var text = $e.text();
      var i = parseInt($e.attr("i"));
      if (this.ms[i].state == 0 && this.curr().sy != 0) {
        this.ym_reset("month");
        Vue.set(this.ms[i], "state", 1);
        this.curr("sm", text);
      }
      if (this.s == 2) {
        var ed = this.selected[this.index];
        ed.start = this.current.start.sy + "-" + this.current.start.sm;
        ed.end = this.current.end.sy + "-" + this.current.end.sm;
        ed.time = ed.start + "至" + ed.end;
        this.sync(ed, 9);
        this.current = gcurr();
        this.s = 1;
        this.tmp = {};
        this.show = !this.show;
      }
    },
    start_state: function(v) {
      var _this = this;
      var index = -1;
      this.yms.forEach(function(c, i) {
        if (c.str == _this.current.start.str) {
          index = i;
          if (c.state != 9) c.state = v;
        }
        if (index == -1) {
          if (c.state != 9) c.state = v;
        }
      });
      this.gy(2);
    },
    mask_click: function() {
      this.show = !this.show;
      this.sync(this.tmp, 9);
      this.sync();
    },
    changeS: function(e) {
      var _this = this;
      if (_this.current.start.str) {
        this.s = this.s == 1 ? 2 : 1;
        if (this.s == 1) {
          //当前为设置开始时间
          this.start_state(0);
        } else {
          //当前为设置结束时间
          this.start_state(2);
        }
        this.ms = MS;
      }
    },
    set_timeSpan: function(e) {
      this.index = parseInt($(e.target).attr("index"));
      //
      this.tmp = this.selected[this.index];
      this.sync(this.tmp, 0);
      //
      this.styleObject = {
        "left": $(e.target).offset().left + "px",
        "top": $(e.target).offset().top - 170 + "px"
      }
      this.show = !this.show;
    },
    set_profession: function(index) {
      this.index = parseInt(index);
      _TYPE = this._type;
    },
    set_profession_val: function(e) {
      var name = $(e.target).text();
      this.selected[this.index].profession = name;
      $(".modal-header .close").click();
    },
    add: function(index) {
      this.selected.insert(index + 1, {
        'profession': '点击添加',
        'time': '',
        "start": '点击添加',
        "end": '点击添加'
      });
    },
    remove: function(index) {
      if (this.selected.length == 1) return;
      var ed = this.selected[index];
      this.sync(ed, 0);
      this.selected.splice(index, 1);
    }
  },
  watch: {
    profession: function(n, o) {
      this.selected[this.index].profession = n;
      this.works = this.selected;
      this._w();
    }
  }
});

//state: 0-可选，1-当前选中，2-不可选，9已经选好的

var _app_tsp = new Vue({
  "el": '.timeline',
  "data": {
    "hasWife": false,
    "yms1": YMS,
    "yms2": YMS2,
    'works1': [],
    'works2': [],
    "profession1": "",
    "profession2": ""
  },
  created: function() {
    //生成每个月份的节点
    spot();

    if (__answer[0] && __answer[0].question5) {
      this.works1 = __answer[0].question5 || [];
    }
    if (__answer[1] && __answer[1].question5) {
      this.works2 = __answer[1].question5 || [];
      //if (this.works2.length > 0) this.hasWife = true;
      this.hasWife = true;
    }
  },
  mounted: function() {
    // var _this = this;
    // $(".btns span").on("click", function() {
    //   localStorage.setItem("__list", JSON.stringify(list));
    //   localStorage.setItem("__answer", JSON.stringify(_app.val()));
    //   setTimeout(function() {
    //     window.location.href = BASEPATH + "markingOLController/resultOL";
    //   }, 500)
    // });
  },
  methods: {
    set_profession_val: function(e) {
      var name = $(e.target).text();
      if (_TYPE == 0) {
        this.profession1 = name;
      } else {
        this.profession2 = name;
      }
      $(".modal-header .close").click();
    }
  }
});
