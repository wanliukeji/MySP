var strHtml ="";
var str = "";
/* 通过AJAX 实现二级菜单目录展现*/
/*
$(document).ready(function(){
    alert('success');
    $.ajax({
        type:"POST",
        url:" http://localhost:8080/login.html/trees",
        dataType:"json",
        success:function(data){
                $.each(data,function(i,value) {
                    str += "<li id='parnt" + i + "' onclick=\"show(this);\"><a><i class='" + value.lcon + "'></i>" +value.name + "<span class='fa fa-chevron-down'>" + "</span></a><ul class='nav child_menu'>" + f(value.child,value)  + "</ul></li>";
            });
            $("#nav_v_for").html(str);
        },
        error:function(jqXHR){
            alert('连接失败');
        }
    });
    function f(date,obj) {
        var strchild = "";
        $.each(date,function(k,obj) {
            strchild += "<li><a href='#'>" + obj.name + "</a></li>";
        });
        return strchild;
    }
});

function show(obj){
    $(obj).children().toggle();
}

var vm =new Vue({
    el: '#didi-navigator',
    data: {
        items: [
            { text: '巴士' },
            { text: '快车' },
            { text: '专车' },
            { text: '顺风车' },
            { text: '出租车' },
            { text: '代驾' }
        ]
    }
})

new Vue({
    el: '#app',
    data: {
        sites: []
    },
    created: function () {
        //为了在内部函数能使用外部函数的this对象，要给它赋值了一个名叫self的变量。
        var self = this;
        $.ajax({
            url: '/tablev-for.php',
            type: 'get',
            data: {},
            dataType: 'json'
        }).then(function (res) {
            console.log(res);
            //把从json获取的数据赋值给数组
            self.sites = res;
        }).fail(function () {
            console.log('失败');
        })
    }
})*/
