<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
<base href="<%=basePath%>">
  <meta charset="UTF-8">

  <meta name="description" content="">
  <meta name="keywords" content="">

  <title>pwdchange</title>

  <link rel="shortcut icon" href="favicon.ico">
  <link href="css/style.css" media="screen" rel="stylesheet" type="text/css">
  <link href="css/grid.css" media="screen" rel="stylesheet" type="text/css">
 
  <script src="js/jquery-1.7.2.min.js" ></script>
  <script src="js/html5.js" ></script>
  <script src="js/jflow.plus.js" ></script>
  <script src="js/jquery.carouFredSel-5.2.2-packed.js"></script>
  <script src="js/checkbox.js"></script>
  <script src="js/radio.js"></script>
  <script src="js/selectBox.js"></script>

  <script type="text/javascript">
  function docheck(){
   var flag=true;
   var opwd=document.getElementById("opwd").value;
   var opwd1=document.getElementById("opwd1").value;
   var pwd=document.getElementById("pwd").value;
   var cpwd=document.getElementById("cpwd").value;
  
   if(opwd!=opwd1){
   alert("原有密码输入不正确");
   flag=false;
   }
   if(pwd.length==0){
   alert("修改密码不能为空");
   flag=false;
   }
   if(cpwd.length==0){
   alert("确认密码不能为空");
   flag=false;
   }
   
   if(pwd!=cpwd){
   alert("修改密码和确认密码必须相同");
   flag=false;
   }
   return flag;
  }
	
  </script>
    
</head>
<body>
  <body>
  <div class="container_12">
    <div id="top">
      <div class="grid_3">
        <div class="phone_top">
          联系电话 +8888888
        </div><!-- .phone_top -->
      </div><!-- .grid_3 -->
   
      <div class="grid_6">
        <div class="welcome">
          欢迎光临DuangDuang网，请<a href="login.html">登录</a> 或者 <a href="login.html">注册</a>.
        </div><!-- .welcome -->
      </div><!-- .grid_6 -->
     
       <div class="clear"></div>  
 
   

    <header id="branding">
      <div class="grid_3">
        <hgroup>
          <h1 id="site_logo"><a href="index.html" title=""><img src="img/d.png" alt="Online Store Theme Logo"/></a></h1>
          <h2 id="site_description">Online Store Theme</h2>
        </hgroup>
      </div><!-- .grid_3 -->
      <div class="grid_6">
        <ul id="cart_nav">
          <li>
            <a class="cart_li" href="#">购物车 <span>￥0.00</span></a>
            <ul class="cart_cont">
              <li class="no_border"><p>最近添加的商品</p></li>
              <!--<li>
                <a href="product_page.html" class="prev_cart"><div class="cart_vert"><img src="images/cart_img.png" alt="" title="" /></div></a>
                <div class="cont_cart">
                  <h4>Caldrea Linen and Room Spray</h4>
                  <div class="price">1 x $399.00</div>
                </div>
                <a title="close" class="close" href="#"></a>
                <div class="clear"></div>
              </li>
              
              <li>
                <a href="product_page.html" class="prev_cart"><div class="cart_vert"><img src="images/produkt_slid1.png" alt="" title="" /></div></a>
                <div class="cont_cart">
                  <h4>Caldrea Linen and Room Spray</h4>
                  <div class="price">1 x $399.00</div>
                </div>
                <a title="close" class="close" href="#"></a>
                <div class="clear"></div>
              </li>-->
	      <li class="no_border">
		<a href="shopping_cart.html" class="view_cart">看看购物车吧</a>
		<a href="checkout.html" class="checkout">去买单咯</a>
	      </li>
            </ul>
          </li>
        </ul>
        
        <nav class="private">
          <ul>
            <li><a href="#">我的DuangDuang</a></li>
		<li class="separator">|</li>
            <li><a href="#">我的订单</a></li>
          </ul>
        </nav><!-- .private -->        
      </div><!-- .grid_6 -->
    </header><!-- #branding -->
  </div><!-- .container_12 -->
  
  <div class="clear"></div>
  
  <div id="block_nav_primary">
    <div class="container_12">
      <div class="grid_12">
        <nav class="primary">
          <ul>
            <li><a href="index.html">我的DuangDuang</a></li>
            <li class="curent"><a href="selfchange.html">账户设置</a>
              <ul class="sub">
                <li class="curent"><a href="pwdchange.html">修改登录密码</a></li>
                <li><a href="selfchange.html">修改个人信息</a></li>
              </ul>
            </li>
          </ul>
        </nav><!-- .primary -->
      </div><!-- .grid_12 -->
    </div><!-- .container_12 -->
  </div><!-- .block_nav_primary -->
  
  <div class="clear"></div>
  
  
  
 
	      
	      
	      
	   <section id="main" class="entire_width">
       <div class="container_12">      
       <div id="content">
		
		
         <div id="sidebar" class="grid_3">
	      <aside id="categories_nav">
		     <h3>个人信息</h3>
		     
		     <nav class="left_menu">
			    <ul>
				   <li class="curent"><a href="pwdchange.html">修改登录密码</a></li>
				   <li><a href="selfchange.html">修改个人信息</a></li>
			    </ul>
		     </nav><!-- .left_menu -->
	      </aside><!-- #categories_nav -->
		 </div>
		
		<div class="grid_6">
			<form class="registed" id="frm" action="${pageContext.request.contextPath}/pwdchangesuccess_pwdchangesuccess.action" method="post" onsubmit="return docheck()">
				<h2>修改登录密码</h2>			
				<div class="text">
					<strong>原有密码:</strong><sup class="surely">*</sup><br/>
					<input type="password" id="opwd" name="" class="" value="" />
					<input type="hidden" id="opwd1" name="user.password" class="" value="${user.password}"/>
				</div><!-- .email -->
							
				<div class="text">
					<strong>修改密码:</strong><sup class="surely">*</sup><br/>
					<input type="password" id="pwd"name="password" class="" value="" />
				</div><!-- .password -->
				
                    <div class="text">
					<strong>确认密码:</strong><sup class="surely">*</sup><br/>
					<input type="password"id="cpwd" name="" class="" value="" />
				</div><!-- .password -->
				
				<div class="submit">										
					<input type="submit" value="修改密码"  />
				</div><!-- .submit -->
			</form><!-- .registed -->
                </div><!-- .grid_6 -->
       </div><!-- #content -->
       
      <div class="clear"></div>
    </div><!-- .container_12 -->
  </section><!-- #main -->
      
       
  <div class="clear"></div>
    
 <footer>
    <div class="f_navigation">
      <div class="container_12">
        <div class="grid_3">
          <h3>联系电话</h3>
          <ul class="f_contact">
            <li>湖南长沙中软国际</li>
            <li>+8888888</li>
            <li>8888888@163.com</li>
          </ul><!-- .f_contact -->
        </div><!-- .grid_3 -->

        <div class="grid_3">
          <h3>相关信息</h3>
          <nav class="f_menu">
            <ul>
              <li><a href="#">关于我们</a></li>
              <li><a href="#">法律声明</a></li>
              <li><a href="#">安全支付</a></li>
            </ul>
          </nav><!-- .private -->
        </div><!-- .grid_3 -->
        
        <div class="grid_3">
          <h3>客户服务</h3>
          <nav class="f_menu">
            <ul>
              <li><a href="#">退货申请</a></li>
              <li><a href="#">诚招英才</a></li>
              <li><a href="#">客服咨询</a></li>
            </ul>
          </nav><!-- .private -->
        </div><!-- .grid_3 -->

        <div class="clear"></div>
      </div><!-- .container_12 -->
    </div><!-- .f_info -->
  </footer>
	<s:debug></s:debug>
</body>
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
</html>