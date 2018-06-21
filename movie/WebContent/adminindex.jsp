<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>首页-后台管理系统</title>
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

</li>

 <li class="kuanjie">
 	
 	
 </li>

 <li class="soso">
 	
<p>   
	

</p>
<p></p>
 </li>




      <li class="am-hide-sm-only" style="float: right;"><a href="javascript:;" id="admin-fullscreen"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>
    </ul>
  </div>
</header>

<div class="am-cf admin-main"> 

<div class="nav-navicon admin-main admin-sidebar">
    
    
    <div class="sideMenu am-icon-dashboard" style="color:#aeb2b7; margin: 10px 0 0 0;"> 欢迎系统管理员：清风抚雪</div>
    <div class="sideMenu">
    
      <h3 class="am-icon-flag"><em></em> <a href="./backstagemovielist">电影管理</a></h3>
      <ul>
        <li><a href="./backstagemovielist">电影列表</a></li>
        <li><a href="addmovie.jsp">添加电影</a></li>
      </ul>
      
      <h3 class="am-icon-cart-plus"><em></em> <a href="./backstageactorlist">演员管理</a></h3>
      <ul>
        <li><a href="./backstageactorlist">演员列表</a></li>
        <li><a href="addactor.jsp">添加演员</a></li>
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
		

       

	
</div>
	
	


<div class="admin">
	

	
	
   
   <div class="admin-index">
      <dl data-am-scrollspy="{animation: 'slide-right', delay: 100}">
        <dt class="qs"><i class="am-icon-users"></i></dt>
        <dd>666</dd>
        <dd class="f12">用户数量</dd>
      </dl>
      <dl data-am-scrollspy="{animation: 'slide-right', delay: 300}">
        <dt class="cs"><i class="am-icon-area-chart"></i></dt>
        <dd>666</dd>
        <dd class="f12">电影数量</dd>
      </dl>
      <dl data-am-scrollspy="{animation: 'slide-right', delay: 600}">
        <dt class="hs"><i class="am-icon-shopping-cart"></i></dt>
        <dd>666</dd>
        <dd class="f12">演员数量</dd>
      </dl>
      <dl data-am-scrollspy="{animation: 'slide-right', delay: 900}">
        <dt class="ls"><i class="am-icon-cny"></i></dt>
        <dd>666</dd>
        <dd class="f12">影评数量</dd>
      </dl>
    </div>
    <div class="admin-biaoge">
      <div class="xinxitj">信息展示</div>
      <table class="am-table">
        <thead>
          <tr>
            <th>新增用户</th>
            <th>用户email</th>
            <th>用户phone</th>
            <th>用户birthday</th>
            <th>加入时间</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>普卡</td>
            <td>普卡</td>
            <td><a href="#">4534</a></td>
            <td>+20</td>
            <td> 4534 </td>
          </tr>
          <tr>
            <td>银卡</td>
            <td>银卡</td>
            <td>4534</td>
            <td>+2</td>
            <td> 4534 </td>
          </tr>
          <tr>
            <td>金卡</td>
            <td>金卡</td>
            <td>4534</td>
            <td>+10</td>
            <td> 4534 </td>
          </tr>
          <tr>
            <td>钻卡</td>
            <td>钻卡</td>
            <td>4534</td>
            <td>+50</td>
            <td> 4534 </td>
          </tr>
          <tr>
            <td>合计</td>
            <td>合计</td>
            <td>4534</td>
            <td>+50</td>
            <td> 4534 </td>
          </tr>
        </tbody>
      </table>
      <table class="am-table">
        <thead>
          <tr>
            <th>新增电影</th>
            <th>上映时间</th>
            <th>播出时长</th>
            <th>用户评分</th>
            <th>添加时间</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>普卡</td>
            <td>普卡</td>
            <td>4534</td>
            <td>+50</td>
            <td> 4534 </td>
          </tr>
          <tr>
            <td>银卡</td>
            <td>银卡</td>
            <td>4534</td>
            <td>+2</td>
            <td> 4534 </td>
          </tr>
          <tr>
            <td>金卡</td>
            <td>金卡</td>
            <td>4534</td>
            <td>+10</td>
            <td> 4534 </td>
          </tr>
          <tr>
            <td>钻卡</td>
            <td>钻卡</td>
            <td>4534</td>
            <td>+50</td>
            <td> 4534 </td>
          </tr>
          <tr>
            <td>合计</td>
            <td>合计</td>
            <td>4534</td>
            <td>+50</td>
            <td> 4534 </td>
          </tr>
        </tbody>
      </table>
      <table class="am-table">
        <thead>
          <tr>
            <th>新增演员</th>
            <th>主演电影</th>
            <th>演员评价</th>
            <th>。。。</th>
            <th>。。。</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>普卡</td>
            <td>普卡</td>
            <td>4534</td>
            <td>+20</td>
            <td> 4534 </td>
          </tr>
          <tr>
            <td>银卡</td>
            <td>银卡</td>
            <td>4534</td>
            <td>+2</td>
            <td> 4534 </td>
          </tr>
          <tr>
            <td>金卡</td>
            <td>金卡</td>
            <td>4534</td>
            <td>+10</td>
            <td> 4534 </td>
          </tr>
          <tr>
            <td>钻卡</td>
            <td>钻卡</td>
            <td>4534</td>
            <td>+50</td>
            <td> 4534 </td>
          </tr>
          <tr>
            <td>合计</td>
            <td>合计</td>
            <td>4534</td>
            <td>+50</td>
            <td> 4534 </td>
          </tr>
        </tbody>
      </table>
    </div>
    <div class="shuju">
      <div class="shujuone">
        <dl>
          <dt>今日上映电影数量：  13</dt>
          <dt>本周上映电影数量：   56</dt>
          <dt>统计电影数量：  546</dt>
        </dl>
        <ul>
          <h2>26.83%</h2>
          <li>数据展示</li>
        </ul>
      </div>
      <div class="shujutow">
        <dl>
          <dt>今日新增用户数量：  1</dt>
          <dt>本周新增用户数量：   5</dt>
          <dt>统计用户数量：  54</dt>
        </dl>
        <ul>
          <h2>26.83%</h2>
          <li>数据展示</li>
        </ul>
      </div>
      <div class="slideTxtBox">
        <div class="hd">
          <ul>
            <li>电影排名</li>
          </ul>
        </div>
        <div class="bd">
          <ul>
            <table width="100%" class="am-table">
              <tbody>
                <tr>
                  <td width="7%"  align="center">1 </td>
                  <td width="83%" >红海行动</td>
                  <td width="10%"  align="center"><a href="#">9.8</a></td>
                </tr>
                <tr>
                  <td align="center">2 </td>
                  <td>红海行动</td>
                  <td  align="center"><a href="#">9.8</a></td>
                </tr>
                <tr>
                  <td  align="center">3 </td>
                  <td>红海行动</td>
                  <td  align="center"><a href="#">9.8</a></td>
                </tr>
                <tr>
                  <td  align="center">4 </td>
                  <td>红海行动</td>
                  <td  align="center"><a href="#">9.8</a></td>
                </tr>
                
                <tr>
                  <td  align="center">5 </td>
                  <td>红海行动</td>
                  <td  align="center"><a href="#">9.8</a></td>
                </tr>
                
                <tr>
                  <td  align="center">6 </td>
                  <td>红海行动</td>
                  <td  align="center"><a href="#">9.8</a></td>
                </tr>
                
                <tr>
                  <td  align="center">7 </td>
                  <td>红海行动</td>
                  <td  align="center"><a href="#">9.8</a></td>
                </tr>
                
                
                
                
                
                
                
                
              </tbody>
            </table>
          </ul>
         
        </div>
      </div>
      <script type="text/javascript">jQuery(".slideTxtBox").slide();</script> 
   
   
   
   
   
   
   
   
</div>

    <div class="foods">
    	<p>
					唯一指定邮箱：248207330@qq.com
			© 2018 My Show | Design by  <a
				href="#">七仙女</a>
				</p>
				<dl><a href="" title="返回头部" class="am-icon-btn am-icon-arrow-up"></a></dl>


    	
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