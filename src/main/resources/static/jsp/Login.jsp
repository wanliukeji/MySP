<!doctype html public "-/w3c/dtd xhtml 1.1/en" "http://www.w3.org/tr/xhtml11/dtd/xhtml11.dtd">
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="s" uri="h"%>
<html>
<head>
<c:set var="ctx" value="<%= request.getContextPath().toString() %>"/>
<script src="${ctx}/comm-sys/js/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="${ctx}/comm-sys/js/public.js" type="text/javascript"></script>
<script src="${ctx}/comm-sys/js/plugin/pop/pop.js" type="text/javascript"></script>
<script src="${ctx}/comm-sys/ukey/Syunew6.js" type="text/javascript"></script>
<title>${cpynme}</title>
<style type="text/css">
body {
	margin:0;
	padding:0;
	font-size:12px;
	font-family:Arial, Helvetica, sans-serif;
	color:#333333;
	background:#FFFFFF;
	text-align:center;
}
div ul, div ul li {
	margin:0px;
	padding:0px;
	list-style:none;
}
img {
	border:0px;
}
a:link {
	color:#333333;
	text-decoration:none;
}
a:visited {
	color:#333333;
	text-decoration:none;
}
a:hover {
	color:#FF9900;
	text-decoration:none;
}
.color01 {
	color:#3399CC;
}
.container {
	width:809px;
	height:600px;
	overflow:hidden;
	margin:0 auto;
}
.logo {
	position:relative;
	top:10px;
	height:50px;
}
.logo ul li {
	float:left;
	font-size: 14px;
	font-family:"Arial","Microsoft YaHei","黑体","宋体",sans-serif	
}
.right {
	width:460px;
	text-align:right;
	position:relative;
	right:20px;
}
.main {
	clear:both;
}
.main div {
	float:left;
}
.main_left {
	width:809px;
}
.main_left01 {
	height:76px;
}
.main_left02 {
    width:809px;
	height:223px;
	background:url(/comm-sys/logo/login9/bg.jpg);
}
.main_left03 {
	height:7px;
}
.main_left04 {
	height:121px;
	background:url(/comm-sys/logo/login9/login_99.png) no-repeat left;
}
.main_left05 {
	padding:20px 0 0 120px;
}
.main_left05 ul li {
	height:40px;
	line-height:40px;
}
.main_center {
	width:373px;
	z-index:50;
	position:relative;
	left:417px;
	top:-440px;
  
}
.main_center_top { 
	height:71px;
	width:100%;
	background:url(/comm-sys/logo/login9/login_01.gif) no-repeat bottom;
	text-indent:280px;
}
.main_center_main {
	height:341px;
	width:100%;
	background:url(/comm-sys/logo/login9/login_02.jpg);
}
.main_center_main01 {
	padding:10px 0 0 30px;
}
.Login {
	padding-top:20px;
}
*html .Login {
	padding-top:22px;
}
.main_center_bott {
	height:24px;
	width:100%;
	background:url(/comm-sys/logo/login9/login_03.gif);
}
.main_right {
	width:19px;
}
.main_rightbg {
	height:223px;
	background:url(/comm-sys/logo/login9/bg01.jpg);
}
.login_table_text1_input {
	width:176px;
	height:28px;
	border:#0a8fda 1px solid;
	background-color:#E8F9FF;
	font-family:Verdana, Arial, Helvetica, sans-serif;
	font-size:15px;
	padding:5px 5px
}
.login_table_chk_input {
	width:112px;
	height:28px;
	border:#0a8fda 1px solid;
	background-color:#E8F9FF;
	font-family:Verdana, Arial, Helvetica, sans-serif;
	font-size:15px;
	padding:5px 3px
}
.login_table_select {
	width:180px;
	height:22px;
	border:1px solid #84a1bd;
	float:left
}
.cop {
	clear:both;
	height:8px;
	background:#2d8819;
	position:relative;
	top:-400px;
}
.CopyRight {
	text-align:center;
	line-height:20px;
	position:relative;
	font-size:15px;
	top:-395px;
}
</style>
<script type="text/javascript">
if(top.location !== self.location) {
    top.location = self.location;
}
window.onload = function (){
    document.getElementById("usrcde").focus();

	//记住用户名功能
	var usr = getCookie('usrcde');
	if(usr != undefined && usr != '') {
		document.getElementById("usrcde").value = usr;
		document.getElementById("remuser").checked = true;
	}

	//自动更换每月图片
	var month_img = document.getElementById("month_img");
	var month = new Date().getMonth() + 1;
	month = month < 10? '0' + month: month;
	month_img.src = "/comm-sys/logo/login9/login_month" + month + ".gif";
};

function getCookie(VarName) {
	var VarName;
	var CookieFound = false;
	var CookieString = document.cookie;

	var aCookieString = CookieString.split('; ');
	for(var i=0; i<aCookieString.length; i++) {
		j = aCookieString[i].indexOf('=');
		if(VarName == aCookieString[i].substring(0,j))
			return aCookieString[i].substr(j+1);
	}
}
function setCookie()//设置cookie
{
	if(document.getElementById ('usrcde').value != ""){
 		document.cookie ="usrcde="+$('#usrcde').val();
 		document.cookie ="passwd="+$('#passwd').val();
 	}
}

$(function(){
    var $inp = $(":input");
    $inp.bind('keydown', function (e) {
        var key = e.which;
        if (key == 13) {
            e.preventDefault();
            if($(this).attr('type')=='checkbox'){
            	$("#sublogin").focus();
            }else if($(this).attr('id')=='sublogin'){
            	$("#sublogin").focus();
            	$("#sublogin").click();
            }else{
	            var nxtIdx = $inp.index(this) + 1;
	            $(":input:eq(" + nxtIdx +")").focus();
            }
        }
    });
}); 
</script>
</head>
<body topmargin="0" leftmargin="0"> 
<s:form id="login" action="${ctx}/login.shtml" method="post" >
	<br>
	<br>
	<div class="container">
		<div class="logo">
			<ul>
				<li style="height: 55px;background-image: url(${ctx}/comm-sys/logo/title.png)">
					<img height="47" width="349" src="/comm-sys/logo/company.png" />
				</li>
				<li class="right">
					&nbsp;&nbsp;&nbsp;
					<!-- 在线&nbsp;${OnlineCount}&nbsp;人 -->
					&nbsp;&nbsp;&nbsp;
					<span style="cursor:pointer;"><a href="/down/EjShV4.apk">移动APP</a></span>
					&nbsp;&nbsp;&nbsp;
					<span style="cursor:pointer;"><a href="/comm-sys/ukey/uKeyDriver.exe">UKEY驱动下载</a></span>
				</li>
			</ul>
		</div>

	  <div class="main">
	    <div class="main_left">
	      <ul>
	        <li class="main_left01"></li>
	        <li class="main_left02"></li>
	        <li class="main_left03"></li>
	        <li class="main_left04">
	          <div class="main_left05" align="left">
	            <ul>
	              <li><img src="/comm-sys/logo/login9/login_33.jpg"/>&nbsp;&nbsp;大型平台技术,支持多用户，高强度的作业环境；</li>
	              <li><img src="/comm-sys/logo/login9/login_37.jpg"/>&nbsp;&nbsp;多机构、多组织安全的有效管理；</li>
	            </ul>
	          </div>
	        </li>
	      </ul>
	    </div>
	    <div class="main_center">
		  <div class="main_center_top"><img id="month_img" src="/comm-sys/logo/blank.gif"/></div>
	      <div class="main_center_main">
	 	     <Div class="main_center_main01">
	          <ul>
	            <li><img src="/comm-sys/logo/login9/login_11.png"/></li>
	            <li class="Login">
	              <table width="100%" border="0" cellspacing="0" cellpadding="0">
	                <tr>
	                  <td class="color01" width="80" align="right">登录帐号</td>
	                  <td align="left">&nbsp;&nbsp;&nbsp;&nbsp;<input class="login_table_text1_input" required="true" placeholder="代码，手机号，邮件"  type="text" name="usrcde" id="usrcde" maxlength="15" style="TEXT-TRANSFORM: uppercase;font-weight:bold; font-family:Verdana, Arial, Helvetica, sans-serif"/></td>
	                </tr>
					<tr>
					 <td colspan="2" height="5px"></td>
					</tr>
	                <tr>
	                  <td class="color01" width="80" align="right" height="45px">登录密码</td>
	                  <td align="left">&nbsp;&nbsp;&nbsp;&nbsp;<input class="login_table_text1_input"  placeholder="密码" required="true" style="TEXT-TRANSFORM: uppercase;" type="password" name="passwd"  maxlength="15" style="font-weight:bold; font-family:Verdana, Arial, Helvetica, sans-serif"/></td>
	                </tr>
	                <tr>
	                  <td class="color01" width="80" align="right" height="45px">Ｕ盾码值</td>
	                  <td align="left">&nbsp;&nbsp;&nbsp;&nbsp;<input class="login_table_text1_input" readonly="true" placeholder="系统自动获取加密锁UKey" required="true" type="password" name="usrkey" id="usrkey"  maxlength="15" style="font-weight:bold; font-family:Verdana, Arial, Helvetica, sans-serif"/></td>
	                </tr>
					<tr bgcolor="#FFFFFF" height="25">
						<td align="right" colspan="2" nowrap align="center">${message}</td>
					</tr>
	                <tr>
	                  <td height="45px" style="line-height:20px;" colspan="2">
	                  	<table align="center">
	                      <tr>
	                        <td><input name="remuser" id="remuser" onchange="setCookie();" type="checkbox" style="float:left"/>&nbsp;记住用户名</td>
	                        <td><input name="ssl" type="checkbox" disabled="disabled" style="float:left"/>&nbsp;SSL安全登录</td>
	                      </tr>
	                    </table>
					  </td>
	                </tr>
	                <tr>
	                  <td colspan="2" style="padding-left:15px;">
					    <input value="" id="sublogin" type="submit" style="cursor:hand;background-image:url(/comm-sys/logo/login9/login_18.gif);BORDER-bottom: medium none;BORDER-left: medium none;BORDER-right: medium none; BORDER-TOP: medium none; width:86px; height:33px;"/>
	                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                    <input title="如果密码忘记，请管理员进行重置密码！" name="getpass" value="" type="button" onclick="window.open('/')" style="cursor:hand;background-image:url(/comm-sys/logo/login9/login_20.gif);BORDER-bottom: medium none;BORDER-left: medium none;BORDER-right: medium none; BORDER-TOP: medium none; width:86px; height:33px;"/>
	                  </td>
	                </tr>
	              </table>
	            </li>
	          </ul>
	        </div>
	      </div>
	      <div class="main_center_bott">&nbsp;</div>
	    </div>
	  </div>
	  <div class="cop"></div>
	  <div class="CopyRight"><br/>CopyRight © 2006&nbsp;&nbsp;<a href="http://www.ej-sh.com">上海蓄量软件有限公司</a>　　服务电话186 8113 0822　　版本：${version}</div>
	</div>
</s:form>
<script  type="text/javascript">
$(document).ready(function(){
	load();
	login_onclick();
});	

var bConnect=0;
function load()
{    
    try{
        var s_pnp = new SoftKey6W();
        s_pnp.Socket_UK.onopen = function(){
               bConnect=1;
        };             
        s_pnp.Socket_UK.onclose = function(){};
   }catch(e) {  
        alert(e.name + ": " + e.message);
        return false;
    }  
}
var digitArray = new Array('0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f');
function toHex( n ) {

        var result = '';
        var start = true;

        for ( var i=32; i>0; ) {
                i -= 4;
                var digit = ( n >> i ) & 0xf;

                if (!start || digit != 0) {
                        start = false;
                        result += digitArray[digit];
                }
        }

        return ( result == '' ? '0' : result );
}

function login_onclick() 
{
   	var DevicePath,ret,n,mylen,ID_1,ID_2,addr;
	try{
		var s_simnew1=new SoftKey6W();
		s_simnew1.Socket_UK.onopen = function() {
			s_simnew1.ResetOrder();
		}; 
	    s_simnew1.Socket_UK.onmessage =function got_packet(Msg){
	        var UK_Data = JSON.parse(Msg.data);
	        if(UK_Data.type!="Process")return ;
	        switch(UK_Data.order){
	            case 0:
	                {
	                    s_simnew1.FindPort(0);
	                }
	                break;
	            case 1:
	                {
	                    if( UK_Data.LastError!=0){s_simnew1.Socket_UK.close();return false;} 
	                    DevicePath = UK_Data.return_value;
	                    s_simnew1.GetID_1(DevicePath);
	                }
	                break;
	            case 2:
	                {
	                    if( UK_Data.LastError!=0){s_simnew1.Socket_UK.close();return false;} 
	                    ID_1=UK_Data.return_value;
	                    s_simnew1.GetID_2(DevicePath);
	                }
	                break;
	             case 3:
	                {
	                    if( UK_Data.LastError!=0){s_simnew1.Socket_UK.close();return false;} 
	                     ID_2=UK_Data.return_value;
	                     var usrkey = toHex(ID_1)+toHex(ID_2);
	                     if(usrkey != ''){
		                    $("#usrkey").val(usrkey);
		                    $("#usrkey").attr("readonly",true);
		                    $("#usrkey").css("background","#00CED1");		                     
	                     }else{
	                    	 $("#usrkey").attr("disabled",true);
	                     }
	                     s_simnew1.ContinueOrder();
	                }
	                break;
	             case 4:
	                {
			            addr=0;
			            s_simnew1.YRead(addr,1,"ffffffff","ffffffff",DevicePath);
	                }
	                break;
	            case 5:
	                {
	                    if( UK_Data.LastError!=0){s_simnew1.Socket_UK.close();return false;} 
	                    s_simnew1.GetBuf(0);
	                }
	                break;
	            case 6:
	                {
	                    if( UK_Data.LastError!=0){s_simnew1.Socket_UK.close();return false;} 
	                    mylen=UK_Data.return_value;
	                    addr=1;
	                    s_simnew1.YReadString(addr,mylen, "ffffffff", "ffffffff", DevicePath);
	                }
	                break;
	            case 7:
	                {
	                    if( UK_Data.LastError!=0){s_simnew1.Socket_UK.close();return false;} 
	                    var usrcde = UK_Data.return_value;
	                    if(usrcde != ""){
		                    $("#usrcde").val(usrcde);
		                    $("#usrcde").attr("readonly",true);
		                    $("#usrcde").css("background","#00CED1");
	                    }
			            addr=20;
			            s_simnew1.YRead(addr,1,"ffffffff","ffffffff",DevicePath);
	                }
	                break;
	            case 8:
	                {
	                    if( UK_Data.LastError!=0){s_simnew1.Socket_UK.close();return false;} 
	                    s_simnew1.GetBuf(0);
	                }
	                break;
	            case 9:
	                {
	                    if( UK_Data.LastError!=0){s_simnew1.Socket_UK.close();return false;} 
	                    mylen=UK_Data.return_value;//获得返回的数据缓冲区中数据
	                    addr=21;
	                    s_simnew1.YReadString(addr,mylen,"ffffffff", "ffffffff", DevicePath);
	                }
	                break;
	             case 10:
	                {
	                    if(UK_Data.LastError!=0){s_simnew1.Socket_UK.close();return false;} 
	                    //frmlogin.Password.value=UK_Data.return_value;//获得返回的UK中地址21的字符串
                        //frmlogin.submit ();
	                    //所有工作处理完成后，关掉Socket
	                    s_simnew1.Socket_UK.close();
	                }
	                break;
            }
	    };
	    s_simnew1.Socket_UK.onclose = function(){};
		return true;
	}
	catch (e){
		alert(e.name + ": " + e.message);
	}
}
</script>
</body>
</html>