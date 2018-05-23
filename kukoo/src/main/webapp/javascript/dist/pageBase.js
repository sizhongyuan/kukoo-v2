 (function(globle) {

   String.prototype.format = function() {
     if (typeof arguments[0] == "object" && arguments.length == 1) {
       var temp = [];
       var con = arguments[0];
       for (var i in con) {
         temp.push(con[i]);
       }
       arguments = temp;
     }
     for (var i = 0, val = this, len = arguments.length; i < len; i++)
       val = val.replace(new RegExp('\\{' + i + '\\}', 'g'), arguments[i]);
     return val;
   }
   Array.prototype.insert = function(index, item) {
     this.splice(index, 0, item);
   };

   /**
    * 给定url，load 对于 js
    * @param {url} string  js url 地址
    * @param {callback} fn  加载完毕后的callback
    */
   _loadScript = function(url, callback, link) {
     var script = link ? document.createElement("link") : document.createElement("script");
     if (callback && script.readyState) { //IE情况下
       script.onreadystatechange = function() { //当页面加载状态改变的时候执行这个方法
         if (script.readyState == "loaded" || script.readyState == "complete") { //当页面加载状态为完全结束时进入
           script.onreadystatechange = null;
           callback();
         }
       }
     } else { //其他浏览器
       if (callback) {
         script.onload = function() {
           callback();
         }
       }
     }
     if (link) {
       script.href = url;
       script.rel = "stylesheet";
     } else {
       script.src = url;
       script.type = "text/javascript";
       script.charset = "utf-8";
     }
     $("head").append($(script));
   }
   _loadCss = function(url, callback) {
     loadScript(url, callback, true);
   }

   function appendStyle(cssString) {
     var doc = document;
     var style = doc.createElement("style");
     style.setAttribute("type", "text/css");

     if (style.styleSheet) { // IE
       style.styleSheet.cssText = cssString;
     } else { // w3c
       var cssText = doc.createTextNode(cssString);
       style.appendChild(cssText);
     }

     var heads = doc.getElementsByTagName("head");
     if (heads.length)
       heads[0].appendChild(style);
     else
       doc.documentElement.appendChild(style);
   }

   var _guid = Math.round(Math.random() * 1E7);

   function guid(isNum) {
     return isNum ? _guid++ : "col_" + _guid++;
   }

   function GetQS(name) {
     var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
     var r = window.location.search.substr(1).match(reg);
     if (r != null) {
       return decodeURI(r[2]);
     }
     return null;
   }

   function ajaxCall(url, param, callback, options) {
     var pa = param;
     var opt = options || {};
     var cb = callback;
     if (typeof param == 'function') {
       cb = param;
       pa = {};
     }
     $.ajax({
       'url': url,
       'type': opt.type || "get",
       'dataType': opt.dataType || "jsonp",
       "contentType": 'application/json; charset=utf-8',
       'data': JSON.stringify(pa),
       "xhrFields": {
         "withCredentials": true
       },
       success: function(data, status) {
         if (data.status == "S1") {
           cb && cb(data, status);
         } else {
           alert(data.message);
         }
       },
       error: function(xhr, msg) {
         cb && cb({
           result: {},
           status: "error",
           msg: msg
         }, 'error');
       }
     });
   }

   function getCookie(name) {
     var arr, reg = new RegExp("(^| )" + name + "=([^;]*)(;|$)");
     if (arr = document.cookie.match(reg))
       return decodeURI(arr[2]);
     else
       return null;
   }

   globle.guid = guid;
   globle.GetQS = GetQS;
   globle.ajaxCall = ajaxCall;
   globle.loadScript = _loadScript;
   globle.loadCss = _loadCss;
   globle.appendStyle = appendStyle;


 })(window)
