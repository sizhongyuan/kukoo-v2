var rv1 = {
  "input": "",
  "recommend": [{
    "projectName": "EE",
    "country": "加拿大",
    "projectType": "技术移民",
    "major": "您",
    "language": "英语",
    "visaType": "PR",
    "capital": "5万",
    "period": "3年",
    "intro": "EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介",
    "score": 369,
    "pass": 420
  }, {
    "projectName": "EE",
    "country": "加拿大",
    "projectType": "技术移民",
    "major": "您",
    "language": "英语",
    "visaType": "PR",
    "capital": "5万",
    "period": "3年",
    "intro": "EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介",
    "score": 369,
    "pass": 420
  }],
  "promote": [{
    "projectName": "EE",
    "country": "加拿大",
    "major": "您",
    "language": "英语",
    "a": "存中文专业名称数组",
    "b": "项目得分",
    "c": "通过分数",
    "visaType": "PR",
    "capital": "5万",
    "period": "3年",
    "intro": "EE项目简介",
    "score": 369,
    "pass": 420
  }, {
    "projectName": "EE",
    "country": "加拿大",
    "major": "您",
    "language": "英语",
    "visaType": "PR",
    "capital": "5万",
    "period": "3年",
    "intro": "EE项目简介",
    "score": 369,
    "pass": 420
  }],
  "Quebec": [{
    "projectName": "魁省",
    "country": "加拿大",
    "major": "您",
    "visaType": "PR",
    "capital": "5万",
    "period": "3年",
    "intro": "EE项目简介",
    "specialty": [
      ["专业1", "专业2", "专业3"],
      ["专业1", "专业2", "专业3"]
    ],
    "learn": "不是",
    "score": 369,
    "pass": 420,
    "index": 0 //我还是伴侣下标
  }]
}

var pId = {
  "加拿大联邦技术移民": "CA001",
  "魁北克省技术移民": "CA002",
  "新斯科舍省技术移民": "CA003",
  "萨省技术移民": "CA004",
  "安大略省技术移民": "CA005",
  "新不伦瑞克省技术移民": "CA006",
  "澳大利亚189独立技术移民": "AU001",
  "澳大利亚190州担保技术移民": "AU002"
}

var __list = localStorage.getItem("__list");
var list = __list ? JSON.parse(__list) : [];
var answer = JSON.parse(localStorage.getItem("__answer"));

function _g67(i, details) {

  return {
    "question6": {
      "listening": details[0].value[0][i],
      "speaking": details[0].value[1][i],
      "reading": details[0].value[2][i],
      "writing": details[0].value[3][i],
    },
    "question7": {
      "listening": details[1].value[0][i],
      "speaking": details[1].value[1][i],
      "reading": details[1].value[2][i],
      "writing": details[1].value[3][i],
    }
  }
}

function m_capital(arr) {
  if (arr == undefined || (arr || []).length == 0) return;
  arr.forEach(function(c) {
    c.capital_n = parseInt(c.capital.split('万')[0]);
  });
}


function m_url(arr) {
  if (arr == undefined || (arr || []).length == 0) return;
  arr.forEach(function(c) {
    c.url = BASEPATH + "detail/detail_" + pId[c.projectName];
  });
}

var _app, _app2;

function start(rv) {
  Vue.component('project-score', {
    template: '#project-template',
    props: ["msg", "type"],
    data: function() {
      //m_capital(this.msg);
      m_url(this.msg);
      return {
        "type": this.type,
        "msg": this.msg
      }
    },
    methods: {
      goQuebec5: function(index) {
        this.msg[index].learn = this.msg[index].learn == '是' ? '不是' : '是';
        _app.$data.answer[0].learn = this.msg[index].learn;
        doAjax(JSON.stringify(_app.$data.answer), _app.resultSettle);
      }
    }
  });

  if (rv.Quebec == undefined) {
    rv.Quebec = [];
  } else {
    var tmp = [];
    if (!rv.Quebec.specialty || rv.Quebec.specialty.length == 0) {
      rv.Quebec.specialty = [
        [],
        []
      ];
    }
    if (!rv.Quebec.specialty || rv.Quebec.specialty.length == 1) {
      rv.Quebec.specialty.push([]);
    }
    tmp.push(rv.Quebec);
    rv.Quebec = tmp;
  }

  _app = new Vue({
    "el": '.main',
    "data": {
      "answer": rv.input || answer,
      "rv": rv,
      "details": list.length > 0 ? list[4].details : [],
      "change1": false
    },
    mounted: function() {
      $(".main").show();
    },
    updated: function() {},
    methods: {
      del_zy: function(i, ii) {
        this.rv.Quebec[0].specialty[i].splice(ii, 1);
      },
      js: function() {
        this.answer[0].learn = this.rv.Quebec[0].learn;
        this.answer[0].specialty = this.rv.Quebec[0].specialty[0];
        if (this.answer.length > 1) {
          this.answer[1].specialty = this.rv.Quebec[0].specialty[1];
        }
        doAjax(JSON.stringify(this.answer), this.resultSettle);
      },
      dogo: function() {
        var r1 = _g67(0, this.details);
        this.answer[0].question6 = r1.question6;
        this.answer[0].question7 = r1.question7;
        if (answer.length > 1) {
          var r2 = _g67(1, this.details);
          this.answer[1].question6 = r2.question6;
          this.answer[1].question7 = r2.question7;
        }

        doAjax(JSON.stringify(this.answer), this.resultSettle);
      },
      resultSettle: function(result) {
        var _this = this;
        _this.answer = result.input;
        //
        if (result.Quebec != undefined) {
          var tmp = [];
          if (!result.Quebec.specialty || result.Quebec.specialty.length == 0) {
            result.Quebec.specialty = [
              [],
              []
            ];
          }
          if (!result.Quebec.specialty || result.Quebec.specialty.length == 1) {
            result.Quebec.specialty.push([]);
          }
          tmp.push(result.Quebec);
          result.Quebec = tmp;
        }
        result.Quebec = result.Quebec || [];

        //m_capital(result.Quebec);
        //m_capital(result.recommend);
        //m_capital(result.promote);

        m_url(result.Quebec);
        m_url(result.recommend);
        m_url(result.promote);

        Vue.set(_this.rv, 'recommend', result.recommend || []);
        Vue.set(_this.rv, 'promote', result.promote || []);
        Vue.set(_this.rv, 'Quebec', result.Quebec);
      }
    }
  });

  _app2 = new Vue({
    "el": '#bs-example-modal-sm',
    "data": {
      "rootOccup": [],
      "occup": [],
      "change1": false
    },
    mounted: function() {
      zy();
    },
    updated: function() {},
    methods: {
      sel_occup: function(e) {
        var name = $(e.target).text();
        var index = _app.$data.rv.Quebec[0].index || 0;
        _app.$data.rv.Quebec[0].specialty[index].push(name);
        $(".modal-header .close").click();
      },
      search: function(e) {
        this.occup = this.rootOccup.filter(function(cv, index, arr) {
          return cv.cnName.indexOf($(e.target).val().trim()) >= 0;
        });
        //if (this.occup.length == 0) {}
        this.occup.push({
          "cnName": "其他"
        });
      }
    }
  });
}

//start(rv);

function zy() {
  //http://47.94.215.48/kukoo/markingOLController/getAllProfession
  $.ajax({
    url: BASEPATH + "markingOLController/getAllProfession",
    type: "get",
    dataType: "json",
    success: function(result) {
      _app2.$data.occup = result;
      _app2.$data.rootOccup = result;
    }
  });
}


doAjax(JSON.stringify(answer), "init");

function doAjax(marking, cb) {

  if (cb != "init") {
    localStorage.setItem("__list", JSON.stringify(list));
    localStorage.setItem("__answer", marking);
  }

  $.ajax({
    url: BASEPATH + "markingOLController/addMarkingOL",
    type: "POST",
    data: {
      marking: marking
    },
    dataType: "json",
    success: function(result) {
      if (cb != "init") {
        cb(result);
      } else {
        start(result);
      }
    }
  });
}
