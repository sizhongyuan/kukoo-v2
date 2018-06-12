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
      var _marking = _this.val()
      var flag = _this.check_works(_marking);
      if (!flag) return;
      //
      // $.ajax({
      //   url: BASEPATH + "markingOLController/addMarkingOL",
      //   type: "POST",
      //   data: {
      //     marking: _marking
      //   },
      //   dataType: "json",
      //   success: function(result) {
      //     if (true) {
      //       window.location.href = BASEPATH + "markingOLController/resultOL";
      //     }
      //   }
      // });
      localStorage.setItem("__list", JSON.stringify(list));
      localStorage.setItem("__answer", JSON.stringify(_marking));
      setTimeout(function() {
        window.location.href = BASEPATH + "markingOLController/resultOL";
      }, 200)
    });
    this.handelVerify();
    //
    $(".mask").css("height", $(document).height());
  },
  updated: function() {
    if (this.change1) {
      this.handelVerify();
      this.change1 = false;
    }
  },
  methods: {
    check_works: function(marking) {
      var flag = true;
      var j = -1;
      for (var i = 0; i < marking.length; i++) {
        var works = marking[i].question5;
        works.forEach(function(c) {
          if (c.time.indexOf("至") < 0 || c.profession.length == 0 || c.profession == "点击添加") {
            flag = false;
            j = i;
          }
        });
      }
      if (!flag) {
        $(".dialog-msg").text((j == 0 ? "您的" : "您配偶的") + "工作经历");
        $("#dialog_btn").trigger("click");
      }
      return flag;
    },
    handelVerify: function() {
      _verify = new Verify(".btns span", ".list-c", {
        "tips_type": "dialog",
        err_cb: function(tbx) {
          var msg = tbx.parents(".item1").find(".pen").text();
          $(".dialog-msg").text(msg);
          $("#dialog_btn").trigger("click");
        }
      });
      $(".__tips_c").hide();
    },
    change: function(e) {
      if ($(e.target).attr("q") == "情感状况") {
        if ($(e.target).val() == "有") {
          _app_tsp.$data.hasWife = true;
          this.setOnelie(false);
        } else {
          _app_tsp.$data.hasWife = false;
          this.setOnelie(true);
        }
        this.change1 = true;
      }
      //if ($(e.target).val().indexOf("+") > 0) {}
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
  var works = i == 0 ? _app_tsp.$data.works1 : _app_tsp.$data.works2;
  // for (var j = 0; j < works.length; j++) {
  //   works[j]["profession"] = works[j].name;
  //   works[j]["time"] = works[j].start + "至" + works[j].end;
  // }
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
