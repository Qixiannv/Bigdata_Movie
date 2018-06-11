<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>修改演员姓名-后台管理系统</title>
<meta name="description" content="这是一个 index 页面">
<meta name="keywords" content="index">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="icon" type="image/png" href="assets/i/favicon.png">
<link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link rel="stylesheet" href="assets/css/amazeui.min.css"/>
<link rel="stylesheet" href="assets/css/admin.css">
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/app.js"></script>
</head>
<body>
<!--[if lte IE 9]><p class="browsehappy">升级你的浏览器吧！ <a href="http://se.360.cn/" target="_blank">升级浏览器</a>以获得更好的体验！</p><![endif]-->






</head>

<body>
<header class="am-topbar admin-header">
  <div class="am-topbar-brand"><img src="assets/i/logo.png"></div>

  <div class="am-collapse am-topbar-collapse" id="topbar-collapse">
    <ul class="am-nav am-nav-pills am-topbar-nav admin-header-list">

   <li class="am-dropdown tognzhi" data-am-dropdown>
  <button class="am-btn am-btn-primary am-dropdown-toggle am-btn-xs am-radius am-icon-bell-o" data-am-dropdown-toggle> 消息管理<span class="am-badge am-badge-danger am-round">6</span></button>
  <ul class="am-dropdown-content">
  	
  	
  	
    <li class="am-dropdown-header">所有消息都在这里</li>

    
    <li><a href="#">新增用户 <span class="am-badge am-badge-danger am-round">6</span></a></li>
    <li><a href="#">新增电影 <span class="am-badge am-badge-danger am-round">9</span></a></a></li>
    <li><a href="#">信息反馈</a></li>
    
    
    
  </ul>
</li>

 <li class="kuanjie">
 	
 </li>

 <li class="soso">
 	
<p>   
	
	

</p>

 </li>




      <li class="am-hide-sm-only" style="float: right;"><a href="javascript:;" id="admin-fullscreen"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>
    </ul>
  </div>
</header>

<div class="am-cf admin-main"> 

<div class="nav-navicon admin-main admin-sidebar">
    
    
    <div class="sideMenu am-icon-dashboard" style="color:#aeb2b7; margin: 10px 0 0 0;"> 欢迎系统管理员：清风抚雪</div>
    <div class="sideMenu">
     <h3 class="am-icon-flag"><em></em> <a href="./adminindex">电影管理</a></h3>
      <ul>
        <li><a href="./backstagemovielist">电影列表</a></li>
        <li><a href="./addmovie">添加电影</a></li>
        <li><a href="./editmovietype">添加电影类型</a></li>
      </ul>
      
      <h3 class="am-icon-cart-plus"><em></em> <a href="./backstageactorlist">演员管理</a></h3>
      <ul>
        <li><a href="./backstageactorlist">演员列表</a></li>
        <li><a href="./addactor">添加演员</a></li>
      </ul>
      
      <h3 class="am-icon-users"><em></em> <a href="./backstageuserlist">用户管理</a></h3>
      <ul>
        <li><a href="./backstageuserlist">用户列表 </a></li>
      </ul>
    </div>
    <!-- sideMenu End --> 
    
    <script type="text/javascript">
			jQuery(".sideMenu").slide({
				titCell:"h3", //鼠标触发对象
				targetCell:"ul", //与titCell一一对应，第n个titCell控制第n个targetCell的显示隐藏
				effect:"slideDown", //targetCell下拉效果
				delayTime:300 , //效果时间
				triggerTime:150, //鼠标延迟触发时间（默认150）
				defaultPlay:true,//默认是否执行效果（默认true）
				returnDefault:true //鼠标从.sideMen移走后返回默认状态（默认false）
				});
		</script> 

    
    
    
    
    
    
    
</div>

<div class=" admin-content">
	
		<div class="daohang">
			<ul>
				
				
			</ul>

       

	
</div>
	
	


<div class="admin-biaogelist">
	
    <div class="listbiaoti am-cf">
      <ul class="am-icon-flag on"> 演员：</ul>
      
      <dl class="am-icon-home" style="float: right;"> 当前位置： 首页 > <a href="#">电影修改</a></dl>

      
      
    </div>
	
    <div class="fbneirong">
      <form class="am-form" action="change_actor_name" method="post" >
        <div class="am-form-group am-cf">
          <div class="zuo">演员：</div>
          <div class="you">
            <input type="text" name="actor_name" class="am-input-sm" id="doc-ipt-email-1" style=" padding: 8px 12px;font-size: 14px;font-weight: 400;line-height: 1.66;border-radius: 3px;" placeholder="请输入演员名称">
          </div>
           <input type="hidden" name="actor_id" value="${param.actor_id}">
        </div>

    
        
        
        
        <div class="am-form-group am-cf">
			<div style="min-height: 1px;    padding-left: 120px;">
                 <button style=" padding: 8px 15px;  font-size: 13px;  background-color: #777; border-color: transparent; border-radius: 3px;"><font style="color:#fff;">取消</font></button>
                 <button style=" background-color: #009688;    border-color: transparent;
                 font-weight: 600;    text-align: center; padding: 8px 15px; font-size: 13px; line-height: 1.428571429;    border-radius: 3px;    vertical-align: middle;" type="submit"><font style="color:#fff;">提交</font></button>
            </div>
        </div>
      </form>
    </div>

  
 
 <div class="foods">

    <p>
					唯一指定邮箱：248207330@qq.com
			© 2018 My Show | Design by  <a
				href="#">七仙女</a>
				</p>
  <dl>
    <a href="" title="返回头部" class="am-icon-btn am-icon-arrow-up"></a>
  </dl>
</div>




</div>

</div>




</div>

<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="assets/js/polyfill/rem.min.js"></script>
<script src="assets/js/polyfill/respond.min.js"></script>
<script src="assets/js/amazeui.legacy.js"></script>
<![endif]--> 

<!--[if (gte IE 9)|!(IE)]><!--> 
<script src="assets/js/amazeui.min.js"></script>
<!--<![endif]-->



</body>

</html>