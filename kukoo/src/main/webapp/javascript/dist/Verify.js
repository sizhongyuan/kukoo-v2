(function(global) {
  var $s = {
    lang: "cn"
  }

  var DATATYPE = {
    "*": /[\w\W]+/,
    "*2-12": /^[\w\W]{2,12}$/,
    "*2-20": /^[\w\W]{2,20}$/,
    "*2-40": /^[\w\W]{2,40}$/,
    "*4-12": /^[\w\W]{4,12}$/,
    "*6-16": /^[\w\W]{6,16}$/,
    "*1-1000": /^[\w\W]{1,1000}$/,
    "*1-500": /^[\w\W]{1,500}$/,
    //"n": /^\d+$/,//纯数字
    "n": /^(\-|\+?)\d+(\.\d+)?$/, //数字，包括正负数小数
    "n1-3": /^\d{1,3}$/,
    "n6-16": /^\d{6,16}$/,
    "s": /^[\u4E00-\u9FA5\uf900-\ufa2d\w\.\s]+$/,
    "s2-12": /^[\u4E00-\u9FA5\uf900-\ufa2d\w\.\s]{2,12}$/,
    "s4-12": /^[\u4E00-\u9FA5\uf900-\ufa2d\w\.\s]{4,12}$/,
    "s6-18": /^[\u4E00-\u9FA5\uf900-\ufa2d\w\.\s]{6,18}$/,
    "s2-40": /^[\u4E00-\u9FA5\uf900-\ufa2d\w\.\s]{2,40}$/,
    "s1-200": /^[\u4E00-\u9FA5\uf900-\ufa2d\w\.\s]{1,200}$/,
    "p": /^[0-9]{6}$/,
    "m": /^13[0-9]{9}$|14[0-9]{9}|15[0-9]{9}|17[0-9]{9}$|18[0-9]{9}$/,
    "notm": /(?!(.*13[0-9]{9}|14[0-9]{9}|15[0-9]{9}|17[0-9]{9}|18[0-9]{9}))^.*$/,
    "e": /^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/,
    "cn": /^[\u2E80-\u9FFF]+$/,
    "en": /^[A-Za-z]+$/,
    "url": /^(\w+:\/\/)?\w+(\.\w+)+.*$/,
    //精确判断日期，包括判断日期时间是否准确
    "datetime": /^(?:(?!0000)[0-9]{4}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1[0-9]|2[0-8])|(?:0[13-9]|1[0-2])-(?:29|30)|(?:0[13578]|1[02])-31)|(?:[0-9]{2}(?:0[48]|[2468][048]|[13579][26])|(?:0[48]|[2468][048]|[13579][26])00)-02-29)\s+([01][0-9]|2[0-3]):[0-5][0-9]$/
  };

  var TIPMSG = {
    tit: "提示信息",
    w: {
      "*": "不能为空",
      "*2-12": "请填写2到12位任意字符",
      "*2-20": "请填写2到20位任意字符",
      "*2-40": "请填写2到40位任意字符",
      "*4-12": "请填写4到12位任意字符",
      "*6-16": "请填写6到16位任意字符",
      "*1-500": "请填写少于500位任意字符",
      "*1-1000": "请填写少于1000位任意字符",
      "n": "请填写数字",
      "cn": "请输入中文字符",
      "en": "请输入英文字符",
      "n1-3": "请填写1到3位数字",
      "n6-16": "请填写6到16位数字",
      "s": "不能输入特殊字符",
      "s2-12": "请填写2到12位字符",
      "s4-12": "请填写4到12位字符",
      "s6-18": "请填写6到18位字符",
      "s2-40": "请填写2到40位字符",
      "s1-200": "请填写1到200位字符",
      "p": "请填写邮政编码",
      "m": "请填写手机号码",
      "notm": "不能包含有手机号码",
      "e": "邮箱地址格式不对",
      "url": "请填写网址",
      "datetime": "日期时间或格式错误"
    },
    w_en: {
      "*": "Can not be empty",
      "*2-12": "Please enter 2-12 characters",
      "*2-20": "Please enter 2-20 characters",
      "*2-40": "Please enter 2-40 characters",
      "*4-12": "Please enter 4-12 characters",
      "*6-16": "Please enter 6-16 characters",
      "*1-500": "Please enter less than 500 characters",
      "*1-1000": "Please enter less than 1000 characters",
      "n": "Please type in number",
      "n1-3": "Please type 1-3 numbers",
      "n6-16": "Please type 6-16 numbers",
      "s": "Cannot type any special characters",
      "s2-12": "Please enter 2-12 characters",
      "s4-12": "Please enter 4-12 characters",
      "s6-18": "Please enter 6-18 characters",
      "s2-40": "Please enter 2-40 characters",
      "s1-200": "Please enter less 200 characters",
      "p": "Postcode",
      "m": "Mobile number",
      "notm": "No Mobile number",
      "e": "Please enter a valid email address",
      "url": "Website"
    },
    def: "请填写正确信息~",
    undef: "datatype未定义~",
    reck: "两次输入的内容不一致~",
    r: "通过信息验证~",
    c: "正在检测信息…",
    s: "请{填写|选择}{0|信息}~",
    v: "所填信息没有经过验证，请稍后…",
    p: "正在提交数据…"
  }

  function settleEventsOrder(_this) {
    var events = $._data(_this.$submitBtn.get(0), 'events')['click'];
    if (events.length > 1) {
      if (events[1].data && events[1].data.verify) {
        var tmp = $._data(_this.$submitBtn.get(0), 'events')['click'][0];
        $._data(_this.$submitBtn.get(0), 'events')['click'][0] = events[1];
        $._data(_this.$submitBtn.get(0), 'events')['click'][1] = tmp;
      }
    }
  }

  function bindTip(_this) {
    //先清理所有之前绑定的提示内容块（如果有）
    $(".__tips_c").remove();
    //
    var eles = _this.$elements;
    var tips_c = $("<div class='__tips_c'></div>").appendTo($(document.body));
    for (var i = 0; i < eles.length; i++) {
      var ele = $(eles[i]);
      if (ele.attr('tipmsg') == "none") continue;

      var dt = ele.attr('dtype');
      var tipmsg = (ele.attr('tipmsg') == undefined) ? ($s.lang == "en" ? TIPMSG.w_en[dt] : TIPMSG.w[dt]) : ele.attr('tipmsg');

      var l = ele.offset().left + _this.offset.left;
      var t = ele.offset().top + _this.offset.top + 28;
      var tip = $("<div style='left:{0}px; top:{1}px; z-index:{3}' class='__tip'>{2}</div>".format(l, t, tipmsg, _this.tip_zIndex));

      ele.data('tip', tip);
      tips_c.append(tip);
    }
    var submitbtntip = $("<div style='left:{0}px; top:{1}px; z-index:{3}' class='__submittip'>{2}</div>".format(
      _this.$submitBtn.offset().left + 70,
      _this.$submitBtn.offset().top,
      _this.submitBtnTip,
      _this.tip_zIndex));

    _this.$submitBtn.data('tip', submitbtntip);
    tips_c.append(submitbtntip);
  }

  function fixTipPosition(ele, _this) {
    if (ele.data('tip')) {
      if (ele.data('tip').offset().left < ele.offset().left && !ele.attr('fixed')) {
        var textareaH = ele.attr("_type") == "textarea" ? ele.height() - 20 : 0;
        var l = ele.offset().left + _this.offset.left;
        var t = ele.offset().top + _this.offset.top + 28 + textareaH;
        ele.data('tip').css({
          left: l,
          top: t
        });
      }
    }
  }

  function init(_this) {
    _this.$elements = _this.$form ? _this.$form.find('[dtype]') : $(document.body).find('[dtype]');
    _this.$submitBtn.on('click', {
      verify: true
    }, function(evt) {
      if ($(".__submittip").length > 0) {
        $(".__submittip").hide();
        $(".__submittip").css({
          left: $(this).offset().left + 70,
          top: $(this).offset().top + 20,
          opacity: 0
        });
      }
      if (!_this.check()) { //没有通过
        _this.err_cb && _this.err_cb(_this.error_tbx);
        evt.stopImmediatePropagation(); //阻止事件的继续执行,event.isImmediatePropagationStopped 可以用来确定该元素是否有调用过event.stopImmediatePropagation
      }
    });
    //
    bindTip(_this);
    settleEventsOrder(_this);
    _this.initialised && _this.initialised(_this);
  }

  function Verify(submitBtn, formID, options) {
    options = options || {};
    //
    this.$submitBtn = $(submitBtn);
    this.$form = formID ? $(formID) : null;
    this.initialised = options.init_cb;
    this.err_cb = options.err_cb;

    this.offset = {
      left: (options.left || 0),
      top: (options.top || 0)
    };

    if (options.submitBtnTip == null) {
      this.submitBtnTip = null;
    } else if (options.submitBtnTip) {
      this.submitBtnTip = options.submitBtnTip;
    }

    this.tips_type = options.tips_type || "border";
    // this.fatherSelector = options.fatherSelector || "";
    // this.findSelector = options.findSelector || "";
    this.tip_zIndex = options.zIndex || 0;
    this.error_msg = "";
    this.error_tbx = null;

    init(this);
  }

  function _check(tbx, _this) {
    var returnValue = true;
    var allowEmpty = tbx.attr('allowEmpty');
    var dt = tbx.attr('dtype');
    var bit = tbx.attr('bit');
    var tbxType = tbx.get(0).tagName;
    var v = tbx.val() || tbx.attr('v') || tbx.attr('value') || "";
    v = (tbxType == "SELECT" && v == "-1") ? "" : v;
    if (allowEmpty == 1 && v.length == 0) return true;
    var r = v.match(DATATYPE[dt]);
    var setbg = function() {
      if (tbx.find('.radios').length == 0 && tbx.find('.checkboxs').length == 0) {
        var bg = tbx.attr('bg') || '#fff';
        //tbx.css('background', bg);
        if (_this.tips_type == "border") {
          tbx.css('border', "solid 1px #dedede");
        }
      }
    }
    if (!!!r) {
      //tbx.css('background', "#ffefef");
      if (_this.tips_type == "border") {
        tbx.css('border', "solid 1px #f88888");
        if (tbx.find('.radios').length > 0 || tbx.find('.checkboxs').length > 0) {
          tbx.css('border', "none");
        }
        fixTipPosition(tbx, _this);
        if (tbx.data('tip') && tbx.is(":visible") && tbx.parents(".multilin-table").length == 0) tbx.data('tip').show();
        tbx.off('keyup').off('blur');
        tbx.on('keyup', setbg);
        tbx.on('blur', function() {
          _check($(this), _this);
        });
        //
        if (_this.submitBtnTip != null) {
          _this.$submitBtn.data('tip').show();
          setTimeout(function() {
            _this.$submitBtn.data('tip').css({
              'opacity': 1
            });
          });
          setTimeout(function() {
            _this.$submitBtn.data('tip').css('opacity', 0);
          }, 1200);
        }
      }
      // if (_this.fatherSelector) {
      //   var $f = tbx.parents(_this.fatherSelector);
      //   if (_this.findSelector) {
      //     $f = $f.find(_this.findSelector);
      //   }
      //   _this.error_msg = $f.text();
      // }
      _this.error_tbx = tbx;
      returnValue = false;
    } else {
      if (tbx.data('tip')) {
        tbx.data('tip').hide();
      }
      if (dt == "n" && bit) {
        tbx.val(parseFloat(v).toFixed(parseInt(bit)));
        tbx.get(0).dispatchEvent(new Event('input'));
      }
      setbg();
    }
    return returnValue;
  }

  Verify.prototype = {
    $submitBtn: null,
    $form: null,
    $elements: null,
    offset: null,
    tip_zIndex: 0,
    initialised: null,
    err_cb: null,
    submitBtnTip: $s.lang == "en" ? "Form content input error." : "表单内容输入有误",

    check: function(cb) {
      var E = this.$elements;
      var returnValue;
      for (var i = 0; i < E.length; i++) {
        if (returnValue == false) {
          _check($(E[i]), this);
        } else {
          returnValue = _check($(E[i]), this);
        }
      }
      return returnValue;
    },
    rebind: function() {
      this.$elements = this.$form ? this.$form.find('[dtype]') : $(document.body).find('[dtype]');
      $(".__tips_c").empty();
      bindTip(this);
    },
    live: function() {

    }
  };
  global.Verify = Verify;


  var cssString =
    ".__tip {" +
    "  width: 140px;" +
    "  line-height: 15px;" +
    "  font-size: 12px;" +
    "  padding: 5px;" +
    "  position: absolute;" +
    "  color: #fe4f47;" +
    "  display: none;" +
    "}  " +
    ".__submittip {" +
    "  width: 140px;" +
    "  line-height: 15px;" +
    "  font-size: 12px;" +
    "  padding: 5px;" +
    "  position: absolute;" +
    "  color: #fe4f47;" +
    "  opacity: 0;" +
    "  -webkit-transition: all 0.8s;" +
    "  -moz-transition: all 0.8s;" +
    "  -ms-transition: all 0.8s;" +
    "  transition: all 0.8s;" +
    "}";

    appendStyle(cssString);


})(window);
