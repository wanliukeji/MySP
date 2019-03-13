
function parseJsonDate(jsonDateString) {
    return new Date(parseInt(jsonDateString.replace('/Date(', '')));
}

Date.prototype.format = function (format) //author: meizz
{
    var o = {
        "yy+": this.getYear(),//year
        "M+": this.getMonth() + 1, //month
        "d+": this.getDate(),    //day
        "h+": this.getHours(),   //hour
        "m+": this.getMinutes(), //minute
        "s+": this.getSeconds(), //second
        "q+": Math.floor((this.getMonth() + 3) / 3),  //quarter
        "S": this.getMilliseconds() //millisecond
    }
    if (/(y+)/.test(format)) format = format.replace(RegExp.$1,
    (this.getFullYear() + "").substr(4 - RegExp.$1.length));
    for (var k in o) if (new RegExp("(" + k + ")").test(format))
        format = format.replace(RegExp.$1,
      RegExp.$1.length == 1 ? o[k] :
        ("00" + o[k]).substr(("" + o[k]).length));
    return format;
}

Date.prototype.addMonths = function (m) {
    var d = this.getDate();
    this.setMonth(this.getMonth() + m);

    if (this.getDate() < d)
        this.setDate(0);

    return this;
};

Date.prototype.diff = function (date) {
    return (this.getTime() - date.getTime()) / (24 * 60 * 60 * 1000);
}

function getSimpleTime(date) {

    var d = serverTime.diff(date);

    if (d > 365 * 4)
        return "很久前";

    if (d > 365 * 3)
        return "三年前";

    if (d > 365 * 2)
        return "二年前";

    if (d > 365 * 1)
        return "一年前";

    if (d > 180)
        return "半年前";

    if (d > 90)
        return "三个月前";

    if (d > 30)
        return "一个月前";

    if (d > 15)
        return "半个月前";

    if (d > 7)
        return "一周前";

    if (d > 3)
        return "三天前";

    if (d > 2)
        return "前天";

    if (d > 1)
        return "昨天";

    return date.getHours() + ":" + date.getMinutes();
}

function getSimpleSize(size) {
    var u = "k";

    if (size > 1024) {
        size = size / 1024;
        u = "Kb";
    }

    if (size > 1024) {
        size = size / 1024;
        u = "Mb";
    }

    if (size > 1024) {
        size = size / 1024;
        u = "Gb";
    }

    var num = new Number(size);
    return num.toFixed(1) + u;
}


String.prototype.padLeft = function (totalWidth, paddingChar) {
    if (paddingChar != null) {
        return this.PadHelper(totalWidth, paddingChar, false);
    } else {
        return this.PadHelper(totalWidth, ' ', false);
    }
}
String.prototype.padRight = function (totalWidth, paddingChar) {
    if (paddingChar != null) {
        return this.PadHelper(totalWidth, paddingChar, true);
    } else {
        return this.PadHelper(totalWidth, ' ', true);
    }

}
String.prototype.PadHelper = function (totalWidth, paddingChar, isRightPadded) {

    if (this.length < totalWidth) {
        var paddingString = new String();
        for (i = 1; i <= (totalWidth - this.length) ; i++) {
            paddingString += paddingChar;
        }

        if (isRightPadded) {
            return (this + paddingString);
        } else {
            return (paddingString + this);
        }
    } else {
        return this;
    }
}

String.prototype.startWith = function (str) {
    if (str == null || str == "" || this.length == 0 || str.length > this.length)
        return false;
    if (this.substr(0, str.length) == str)
        return true;
    else
        return false;
    return true;
}
String.prototype.endWith = function (str) {
    if (str == null || str == "" || this.length == 0 || str.length > this.length)
        return false;
    if (this.substring(this.length - str.length) == str)
        return true;
    else
        return false;
    return true;
}

String.prototype.format = function () {
    var args = arguments;
    return this.replace(/{(\d+)}/g, function (match, number) {
        return typeof args[number] != 'undefined'
          ? args[number]
          : match
        ;
    });
};
String.prototype.formatNull = function (str) {
    if (typeof (str) == 'undefined')
        return "";
    return str;
}

function formatString(str) {
    if (typeof (str) == 'undefined')
        return "";
    return str;
}

Number.prototype.enumIn = function (num) {
    return (this & num) == num;
}

Number.prototype.enumNotIn = function (num) {
    return (this & num) != num;
}

Object.size = function (obj) {
    var size = 0, key;
    for (key in obj) {
        if (obj.hasOwnProperty(key)) size++;
    }
    return size;
};

function parseDate(str) {
    if (typeof str == 'string') {
        var results = str.match(/^ *(\d{4})-(\d{1,2})-(\d{1,2}) *$/);
        if (results && results.length > 3)
            return new Date(parseInt(results[1]), parseInt(results[2], 10) - 1, parseInt(results[3], 10));
        results = str.match(/^ *(\d{4})-(\d{1,2})-(\d{1,2}) +(\d{1,2}):(\d{1,2}):(\d{1,2}) *$/);
        if (results && results.length > 6)
            return new Date(parseInt(results[1]), parseInt(results[2], 10) - 1, parseInt(results[3], 10), parseInt(results[4], 10), parseInt(results[5], 10), parseInt(results[6], 10));
        results = str.match(/^ *(\d{4})-(\d{1,2})-(\d{1,2}) +(\d{1,2}):(\d{1,2}):(\d{1,2})\.(\d{1,9}) *$/);
        if (results && results.length > 7)
            return new Date(parseInt(results[1]), parseInt(results[2], 10) - 1, parseInt(results[3], 10), parseInt(results[4], 10), parseInt(results[5], 10), parseInt(results[6], 10), parseInt(results[7]));

        var results = str.match(/^ *(\d{4})-(\d{1,2}) *$/);
        if (results && results.length > 2)
            return new Date(parseInt(results[1]), parseInt(results[2], 10) - 1);

        var results = str.match(/^ *(\d{4}) *$/);
        if (results && results.length > 1)
            return new Date(parseInt(results[1]));
    }
    return null;
}

$.expr[':'].idCase = function (node, stackIndex, properties) {

    var arg = properties[3].split(',')[0].replace(/^\s*["']|["']\s*$/g, '').toLowerCase();

    if (typeof ($(node).attr('id')) == 'undefined')
        return false;

    return $(node).attr('id').toLowerCase() == arg;//args[0].toLowerCase();
};

function ajax(options) {
    var defaults = {
        url: '',
        type: 'GET',
        data: '',
        action: function () { },
        success: null,
        dataType: "json",
        async: true,
        showBlock: true,
        finished: null,
        jsonp: '',//为 jsonp时，后台返回jsonp格式数据
        jsonpCallback: 'JSONPHandler' //jsonp回调函数,和后端保持一致
    };
    var opts = $.extend(defaults, options);
    if (opts.jsonp === 'jsonp')
        opts.dataType = "jsonp";
    if (opts.async && opts.showBlock)
        App.blockUI({ boxed: true });

    opts.url = opts.url + (opts.url.indexOf("?") == -1 ? "?" : "&") + "rnd=" + Math.random();

    $.ajax({
        type: opts.type,
        url: opts.url,
        data: encodeURI(opts.data),
        dataType: opts.dataType,
        async: opts.async,
        jsonp: opts.jsonp,
        jsonpCallback: opts.jsonpCallback,
        contentType: "application/x-www-form-urlencoded; charset=utf-8",
        success: function (rs) {

            if (opts.async && opts.showBlock) {
                //setTimeout(function () {
                App.unblockUI();
                //}, 100);
            }

            if (rs.message != null && rs.message != null)
                rs.Message = rs.message;

            if (rs.data == null && rs.data != null)
                rs.data = rs.data;

            if (opts.success != null)
                opts.success(rs);
            else {
                if (rs.isSuccess) {
                    opts.action(rs.data);
                }
                else {
                    alert(rs.Message);

                    if (opts.finished != null)
                        opts.finished(true);
                }
            }
        },
        error: function (rs, type, info) {

            if (opts.async && opts.showBlock) {
                //setTimeout(function () {
                App.unblockUI();
                //}, 100);
            }

            if (rs.status == 500) {
                var m = rs.responseText.match(/<title>(.*?)\<\/title>/);
                if (m.length >= 2) {
                    info += '\n' + m[1];
                }
            }

            alert("调用 ajax 失败\n\n" + info);

            if (opts.finished != null)
                opts.finished(false);
        }
    });
}

function ajaxSubmit(options) {

    var defaults = {
        title: '正在保存数据...',
        finished: null,
        success: null
    };

    var opts = $.extend(defaults, options);

    $(".alert-danger").hide();
    App.blockUI({ target: $(opts.form).parent(), message: opts.title });

    $(opts.form).ajaxSubmit({
        success: function (data) {
            setTimeout(function () {
                App.unblockUI($(opts.form).parent());
            }, 300);

            if (typeof data == 'string')
                data = $.parseJSON(data);

            if (data.isSuccess) {
                opts.success(data.data);
                if (opts.finished != null)
                    opts.finished(true);
            }
            else {
                //App.error({ content: data.Message });
                $(".alert-danger>span").text(data.message);
                $(".alert-danger", $(opts.form)).show();
                $(opts.form).animate({ scrollTop: $(".alert-danger").offset().top }, 1000);
                if (opts.finished != null)
                    opts.finished(false);
            }


        },
        error: function (rs, type, info) {
            setTimeout(function () {
                App.unblockUI($(opts.form).parent());
            }, 300);

            if (rs.status == 500) {
                var m = rs.responseText.match(/<title>(.*?)\<\/title>/);
                if (m.length >= 2) {
                    info += '\n' + m[1];
                }
            }

            //App.error({ content: "调用 ajax 失败\r\n\r\n" + info });
            $(".alert-danger>span").text("调用 ajax 失败\r\n\r\n" + info);
            $(".alert-danger", $(opts.form)).show();
            $(opts.form).animate({ scrollTop: $(".alert-danger").offset().top }, 1000);

            if (opts.finished != null)
                opts.finished(false);
        }
    });
}

function openUrlDialog(url) {

    if ($("#content").length > 0)
        $("#content").html('');
    else
        $("<div id='content'></div>").appendTo($(body));

    ajax({
        url: url,
        type: "GET",
        dataType: "html",
        success: function (data) {
            //$(window).scrollTop(top);
            if (data.indexOf("{\"isSuccess") != -1) {
                var rs = $.parseJSON(data);
                alert(rs.Message);
            }
            else {
                $("#dialog-form").remove();
                $("div.ui-dialog").remove();
                $("#content").html('');
                $("#content").html(data);
            }
        }
    });
}

function getWindowSize() {

    var size = { width: 0, height: 0 };

    if (window.innerWidth)
        size.width = window.innerWidth;
    else if (document.documentElement && document.documentElement.clientWidth)
        size.width = document.documentElement.clientWidth;
    else if (document.body)
        size.width = document.body.clientWidth;


    if (window.innerHeight)
        size.height = window.innerHeight;
    else if (document.documentElement && document.documentElement.clientHeight)
        size.height = document.documentElement.clientHeight;
    else if (document.body)
        size.height = document.body.clientHeight;

    return size;
}

function myBrowser() {
    var userAgent = navigator.userAgent; //取得浏览器的userAgent字符串
    var isOpera = userAgent.indexOf("Opera") > -1; //判断是否Opera浏览器
    var isFF = userAgent.indexOf("Firefox") > -1; //判断是否Firefox浏览器
    var isSafari = userAgent.indexOf("Safari") > -1; //判断是否Safari浏览器


    if (userAgent.indexOf("Trident/7.0") > 0)
        return "IE11";

    if (userAgent.indexOf("Trident/6.0") > 0)
        return "IE10";

    if (userAgent.indexOf("Trident/5.0") > 0)
        return "IE9";

    var IE5 = IE55 = IE6 = IE7 = IE8 = false;
    var reIE = new RegExp("MSIE (\\d+\\.\\d+);");
    reIE.test(userAgent);

    var fIEVersion = parseFloat(RegExp["$1"]);

    IE55 = fIEVersion == 5.5;
    IE6 = fIEVersion == 6.0;
    IE7 = fIEVersion == 7.0;
    IE8 = fIEVersion == 8.0;


    if (IE55) { return "IE55"; }
    if (IE6) { return "IE6"; }
    if (IE7) { return "IE7"; }
    if (IE8) { return "IE8"; }


    return "";
}

function htmlDecode(str) {
    var s = "";
    if (str.length == 0) return "";
    s = str.replace(/&amp;/g, "&");   //2 
    s = s.replace(/&lt;/g, "<");
    s = s.replace(/&gt;/g, ">");
    s = s.replace(/&nbsp;/g, "");
    s = s.replace(/&#39;/g, "\'");
    s = s.replace(/&quot;/g, "\"");
    return s;
}
//判断对象是否为数组
function isArray(o) {
    return Object.prototype.toString.call(o) ==="[object Array]";
}

function getQueryString(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
    var r = window.location.search.substr(1).match(reg);

    if (r != null) {
        return unescape(r[2]);
    }
    else {
        return "";
    }
}

function checkLogin() {
    ajax({
        url: window.homePath + "Account/Login/Check",
        type: "GET",
        async: false,
        showBlock: false,
        success: function (rs) {
            if (!rs.isSuccess){
                var url = "../sys/login.html?returnUrl=" + escape(window.location.href);
                window.location.href = url;
            }
        }
    });
}


var homePath = "/";

var sitePath = "../";
var areaPath = "";
//var modulePath = "@Url.ModulePath()";
//var adminPath = "../assets/sys/@PlugInManager.ManageAreaName/";
//var absoluteUrl = '@DomainData.AbsoluteUrl';
var controllerPath = "";
//var serverTime = new Date('@DateTime.Now.ToString()');


$(function () {

    //debugger;
    if ($("#divQuery").length >= 1 && $("#divQuery").data("isLoad") == null) {
        checkLogin();

        window.ajax({
            url: "../sys/layout.html",
            async: false,
            dataType: "html",
            success: function (data) {
                // debugger;
                $("#main").html(data);
                $("#divQuery").data("isLoad", true);
                setTimeout(initPage, 100);
            }
        });
    }
});