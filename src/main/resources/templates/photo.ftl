<!DOCTYPE HTML>
<html>
<head>
<title>Photo</title>
<link href="css/photowall/style.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href='http://fonts.googleapis.com/css?family=Karla' rel='stylesheet' type='text/css'>
<link href="css/photowall/elastislide.css" rel="stylesheet" type="text/css" media="all" />
<link href="vendor/layui/css/layui.css" rel="stylesheet" type="text/css" media="all" />
<!-- Add fancyBox main JS and CSS files -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/layui/layui.js"></script>
<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
<link href="css/photowall/magnific-popup.css" rel="stylesheet" type="text/css">
		<script>
			$(document).ready(function() {
				$('.popup-with-zoom-anim').magnificPopup({
					type: 'inline',
					fixedContentPos: false,
					fixedBgPos: true,
					overflowY: 'auto',
					closeBtnInside: true,
					preloader: false,
					midClick: true,
					removalDelay: 300,
					mainClass: 'my-mfp-zoom-in'
			});
		});
			
			var currPage = ${pageInfo.pageNum};
			var pageCount = ${pageInfo.total};
			var pageSize = ${pageInfo.pageSize};
			
			
			function getListData(currPage,pageSize){
	              $.ajax({
	                  type: 'POST',
	                  url: "/photoJsonList", // ajax请求路径
	                  data: {
	                	  pageNum:currPage, //当前页数
	                	  pageSize:pageSize
	                  },
	                  dataType:'json',
	                  success: function(data){
	                	  console.log(data);
	                      var pageCount =data.total;
	                      $("#phonewall1").empty();
	                      $("#phonewall2").empty();
	                      for (var i=0;i<data.list.length;i++){
	                    	  //拼接内容
	                    	  if(i % 2 == 0){
	                    		  var v = '<div class="blog-img"><a href="single.html"><img src="'+ data.list[i].address +'" alt=""/><div class="blog-desc"><h5>hendrerit in vulputate velit esse molestie consequat</h5><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p><div class="comment"><span class="icon"><img src="images/b-heart.png" title="likes" alt=""/>15</span><div class="comment-desc"><a href="#">by adipiscing</a> / <a href="#">6comments</a> / <a href="#">Dec. 28, 2013</a></div><div class="clear"></div></div></div></a></div>'
	                    		  $("#phonewall1").append(v);
	                    	  }else{
	                    		  var v = '<div class="blog-img"><a href="single.html"><img src="'+ data.list[i].address +'" alt=""/><div class="blog-desc"><h5>hendrerit in vulputate velit esse molestie consequat</h5><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p><div class="comment"><span class="icon"><img src="images/b-heart.png" title="likes" alt=""/>15</span><div class="comment-desc"><a href="#">by adipiscing</a> / <a href="#">6comments</a> / <a href="#">Dec. 28, 2013</a></div><div class="clear"></div></div></div></a></div>' 
	                    		  $("#phonewall2").append(v);
	                    	  }
	                      }
	                  }
	              });
	          };
			
			layui.use(['laypage', 'layer'], function(){
				  var laypage = layui.laypage
				  ,layer = layui.layer;
			
			  //完整功能
			  laypage.render({
			    elem: 'demo7'
			    ,count: pageCount
                ,first: '首页'
                ,last: '尾页'
			    ,layout: ['count', 'prev', 'page', 'next', 'limit', 'refresh', 'skip']
			    ,jump: function(obj,first){
			      console.log(obj);
			      currPage =obj.curr;  //这里是后台返回给前端的当前页数
			      pageSize =obj.limit;
                  if(!first){ //点击跳页触发函数自身，并传递当前页：obj.curr  ajax 再次请求
                      getListData(currPage,pageSize);
                  }
			    }
			  });
			});
		</script>
		
<#-- 自定义 样式 -->
<#include "public/front_custom_css.ftl">

<#-- CSS -->
<#include "public/front_css.ftl">
</head>
<body>
<#include "public/nav.ftl">
  <div class="header">	
       <div class="wrap"> 
	         <div class="logo">
				<a href="index.html"><img src="images/logo.png" alt=""/></a>
			 </div>
			 <div class="cssmenu">
				<ul>
					<li><a href="index.html">Home</a></li>
					<li><a href="portfolio.html">Portfolio</a></li> 
					<li class="active"><a href="blog.html">Blog</a></li> 
					<li><a href="about.html">About Us</a></li> 
					<li><a href="contact.html">Contact</a></li>
				</ul>
		     </div>
		    <div class="clear"></div>
	   </div>
   </div>
   <div class="banner">
      	<div class="wrap">
      	     <h2>照 片 墙</h2><div class="clear"></div>
      	</div>
    </div>
	<div class="main">	
	 <div class="project-wrapper">
	   <div class="project">
	    <div class="blog-left">
			<div class="blog-bg">
			   <h4>"Lorem ipsum dolor sit consectetuer adipiscing elit, sed diam"</h4><span class="author">adipiscing</span><div class="clear"></div>
			</div>
			<div id="phonewall1">
				<#list pageInfo.list as photo> 
					<#if photo_index % 2 == 0>
						<div class="blog-img">
							<a href="/single?id=${photo.id}">
							<img src="${photo.address}" alt=""/>
							<div class="blog-desc">
								<h5>hendrerit in vulputate velit esse molestie consequat</h5>
								<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
								<div class="comment">
									<span class="icon"><img src="images/b-heart.png" title="likes" alt=""/>15</span>
									<div class="comment-desc"><a href="#">by adipiscing</a> / <a href="#">6comments</a> / <a href="#">Dec. 28, 2013</a></div>
									<div class="clear"></div>
								</div>
							</div>
							</a>
						</div>
					</#if>
				</#list>
			</div>
	    </div>
		<div class="blog-right" id="phonewall2">
			<#list pageInfo.list as photo>
				<#if photo_index % 2 == 1>
					<div class="blog-img">
						<a href="/single?id=${photo.id}">
						<img src="${photo.address}" alt=""/>
						<div class="blog-desc">
							<h5>hendrerit in vulputate velit esse molestie consequat</h5>
							<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
							<div class="comment">
								<span class="icon"><img src="images/b-heart.png" title="likes" alt=""/>15</span>
								<div class="comment-desc"><a href="#">by adipiscing</a> / <a href="#">6comments</a> / <a href="#">Dec. 28, 2013</a></div>
								<div class="clear"></div>
							</div>
						</div>
						</a>
					</div> 
				</#if>
			</#list>
		</div>
	   <div class="clear"></div>
		<div id="demo7" align="center"></div>
	 </div>
	 <div class="project-sidebar">
	 	<div class="project-list">
	 	 <div class="search_box">
			<form>
				<input type="text" value="Search...." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}">
				<input type="submit" value="">
			</form>
		 </div>
		</div>
		<div class="project-list">
	     	<h4>Categories</h4>
			<ul class="blog-list">
				<li><img src="images/arrow.png" alt=""><p><a href="#">Loremipsum</a></p><div class="clear"></div></li>
				<li><img src="images/arrow.png" alt=""><p><a href="#">Loremipsum</a></p><div class="clear"></div></li>
				<li><img src="images/arrow.png" alt=""><p><a href="#">Loremipsum</a></p><div class="clear"></div></li>
				<li><img src="images/arrow.png" alt=""><p><a href="#">Loremipsum</a></p><div class="clear"></div></li>
				<li><img src="images/arrow.png" alt=""><p><a href="#">Loremipsum</a></p><div class="clear"></div></li>
			</ul>
			<ul class="blog-list">
				<li><img src="images/arrow.png" alt=""><p><a href="#">Loremipsum</a></p><div class="clear"></div></li>
				<li><img src="images/arrow.png" alt=""><p><a href="#">Loremipsum</a></p><div class="clear"></div></li>
				<li><img src="images/arrow.png" alt=""><p><a href="#">Loremipsum</a></p><div class="clear"></div></li>
				<li><img src="images/arrow.png" alt=""><p><a href="#">Loremipsum</a></p><div class="clear"></div></li>
				<li><img src="images/arrow.png" alt=""><p><a href="#">Loremipsum</a></p><div class="clear"></div></li>
			</ul>
			<div class="clear"></div>
		 </div>
		  <div class="project-list">
	     	<h4>Archive</h4>
			<ul class="blog-list">
				<li><img src="images/arrow.png" alt=""><p><a href="#">July (15)</a></p><div class="clear"></div></li>
				<li><img src="images/arrow.png" alt=""><p><a href="#">Oct (20)</a></p><div class="clear"></div></li>
				<li><img src="images/arrow.png" alt=""><p><a href="#">November (8)</a></p><div class="clear"></div></li>
				<li><img src="images/arrow.png" alt=""><p><a href="#">December (25)</a></p><div class="clear"></div></li>
				<li><img src="images/arrow.png" alt=""><p><a href="#">August (9)</a></p><div class="clear"></div></li>
			</ul>
			<ul class="blog-list">
				<li><img src="images/arrow.png" alt=""><p><a href="#">July (15)</a></p><div class="clear"></div></li>
				<li><img src="images/arrow.png" alt=""><p><a href="#">Oct (20)</a></p><div class="clear"></div></li>
				<li><img src="images/arrow.png" alt=""><p><a href="#">November (8)</a></p><div class="clear"></div></li>
				<li><img src="images/arrow.png" alt=""><p><a href="#">December (25)</a></p><div class="clear"></div></li>
				<li><img src="images/arrow.png" alt=""><p><a href="#">August (9)</a></p><div class="clear"></div></li>
			</ul>
			<div class="clear"></div>
		 </div>
		 <div class="project-list1">
	     	<h4>Popular Posts</h4>
			<ul>
				<li><img src="images/list-img.jpg" alt=""><p><a href="#">Lorem ipsum dolor sit amet, consectetuer</a></p>
					<span class="likes"><span class="link"><a href="#">Dec 14, 2013</a></span><a href="#"><img src="images/heart.png" title="likes" alt=""/></a>16</span><div class="clear"></div>
				</li>
				<li><img src="images/list-img1.jpg" alt=""><p><a href="#">Lorem ipsum dolor sit amet, consectetuer</a></p>
					<span class="likes"><span class="link"><a href="#">Dec 14, 2013</a></span><a href="#"><img src="images/heart.png" title="likes" alt=""/></a>16</span><div class="clear"></div>
				</li>
				<li><img src="images/list-img2.jpg" alt=""><p><a href="#">Lorem ipsum dolor sit amet, consectetuer</a></p>
					<span class="likes"><span class="link"><a href="#">Dec 14, 2013</a></span><a href="#"><img src="images/heart.png" title="likes" alt=""/></a>16</span><div class="clear"></div>
				</li>
				<li><img src="images/list-img4.jpg" alt=""><p><a href="#">Lorem ipsum dolor sit amet, consectetuer</a></p>
					<span class="likes"><span class="link"><a href="#">Dec 14, 2013</a></span><a href="#"><img src="images/heart.png" title="likes" alt=""/></a>16</span><div class="clear"></div>
				</li>
				<li><img src="images/list-img5.jpg" alt=""><p><a href="#">Lorem ipsum dolor sit amet, consectetuer</a></p>
					<span class="likes"><span class="link"><a href="#">Dec 14, 2013</a></span><a href="#"><img src="images/heart.png" title="likes" alt=""/></a>16</span><div class="clear"></div>
				</li>
			</ul>
		 </div>
		  <div class="project-list2">
	     	<h4>Tags</h4>
			<ul>
				<li><a href="#">Web Design</a></li>
				<li><a href="#">Html5</a></li>
				<li><a href="#">Wordpress</a></li>
				<li><a href="#">Logo</a></li>
				<li><a href="#">Web Design</a></li>
				<li><a href="#">Web Design</a></li>
				<li><a href="#">Wordpress</a></li>
				<li><a href="#">Web Design</a></li>
				<li><a href="#">Html5</a></li>
				<li><a href="#">Wordpress</a></li>
				<li><a href="#">Logo</a></li>
				<div class="clear"></div>
			</ul>
		 </div>
	 </div>
	 <div class="clear"></div>
  </div>
	 <div class="footer-bottom">
	 	<div class="wrap">
		 	<div class="copy">
			    <p class="copy">Copyright &copy; 2018.Company name All rights reserved.</p>
		    </div>
		 	<div class="footer-nav">
		 		<ul>
					<li><a href="index.html">Home</a></li>
					<li><a href="portfolio.html">Portfolio</a></li> 
					<li><a href="blog.html">Blog</a></li> 
					<li><a href="about.html">About Us</a></li> 
					<li><a href="contact.html">Contact</a></li>
				</ul>
		 	</div>
		 	<div class="clear"></div>
	    </div>
	</div>
</div>
</body>	
</html>    		
             		
      	   		                                                                                            