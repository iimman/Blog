<!DOCTYPE HTML>
<html>
<head>
<title>Single</title>
<link href="css/photowall/style.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href='http://fonts.googleapis.com/css?family=Karla' rel='stylesheet' type='text/css'>
<!-- Add fancyBox main JS and CSS files -->
<script src="vendor/jquery/jquery.min.js"></script>
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
			
			function submitComment(){
				$("#addcommentfrom").submit();
			}
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
      	    <h2>Blog</h2><div class="clear"></div>
      	</div>
   </div>
	<div class="main">	
	 <div class="single-wrapper">
	   <div class="single-blog">
	     <div class="single-img"><img src="${photo.address}" alt=""/></div>
			<div class="blog-desc">
				<h5>hendrerit in vulputate velit esse molestie consequat</h5>
				<div class="comment">
					<div class="comment-desc"><a href="#"><img src="images/b-heart.png" title="likes" alt=""/></a>20&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">by adipiscing</a> / <a href="#">6comments</a> / <a href="#">Dec. 28, 2013</a></div>
					<div class="clear"></div>
				</div>
			</div>
			<p class="blog-text">orem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>
			<img src="images/blog-img9.jpg" alt=""/>
			<p class="blog-text">orem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat..</p>
			<img src="images/blog-img10.jpg" alt=""/>
			<p class="blog-text">orem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>
			<div class="share-point">
				<div class="point">
					<h5>Share this post</h5>
				</div>
				<div class="social-list">
					<ul>
						<li><img src="images/f.png" alt=""><p>15</p><div class="clear"></div></li>
						<li><img src="images/g.png" alt=""><p>15</p><div class="clear"></div></li>
						<li><img src="images/t.png" alt=""><p>15</p><div class="clear"></div></li>		
						<li class="last"><img src="images/i.png" alt=""><p>15</p><div class="clear"></div></li>									
					</ul>
			    </div>
				<div class="clear"></div>
			</div>
			 <div class="related-post">
		     	 <h4>Related Posts</h4>
		     	 <div class="clear"></div>
		         <div class="gallery">
		         							<!-- start magnific -->
								 <div id="small-dialog2" class="mfp-hide">
									<div class="pop_up">
									 	<h2>Lorem Ipsum is simply dummy text</h2>
									 	<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
									 	<div class="social-icons">
					 	<h2 style="margin-top: 4%;">get in touch</h2>
						    <ul>	
							  <li class="facebook"><a href="#"><span> </span></a></li>
					          <li class="google"><a href="#"><span> </span></a></li>
					          <li class="twitter"><a href="#"><span> </span></a></li>
					          <li class="linkedin"><a href="#"><span> </span></a></li>	 
					          <li class="youtube"><a href="#"><span> </span></a></li>	
					          <li class="bloger"><a href="#"><span> </span></a></li>
					          <li class="rss"><a href="#"><span> </span></a></li>	
					          <li class="dribble"><a href="#"><span> </span></a></li>		        	
					        </ul>
				     </div>
						  			</div>
								</div>
					<!-- end  magnific -->
			     	<ul>
			     		<li><a class="popup-with-zoom-anim" href="#small-dialog2"><img src="images/blog-img3.jpg" alt=""><p>Lorem ipsum nonummynib.</p></a></li>
			     		<li><a class="popup-with-zoom-anim" href="#small-dialog2"><img src="images/blog-img2.jpg" alt=""><p>Lorem ipsum nonummynib.</p></a></li>
			     		<li><a class="popup-with-zoom-anim" href="#small-dialog2"><img src="images/blog-img4.jpg" alt=""><p>Lorem ipsum nonummynib.</p></a></li>
			     		<div class="clear"></div>
			     	</ul>
		     	</div>
		      </div>
		      <div class="blog-comment">
		      	<h5>6 Comments</h5><div class="clear"></div>
		      	<#list commentList as comment>
		        <ul class="list">
			        <li>
			            <div class="preview"><a href="#"><img src="images/c1.jpg" alt=""/></a></div>
			            <div class="data">
			                <div class="title">${comment.user.id }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">${comment.create?string("yyyy-MM-dd HH:mm:ss")}  </a></div>
			                <p>${comment.content }</p>
			                <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
			            </div>
			            <div class="clear"></div>
			        </li>
	  			</ul>
	  			</#list>
	  		</div>
	  			<h5 class="leave">Leave a Comment</h5><div class="clear"></div>
	  		   <form id="addcommentfrom" method="post" action="/addComment">
	  		   		<#if Session ["session_current_user"]??>
	               		<input type="hidden" name="userId" value='${Session["session_current_user"].id}'>
	               	</#if>
	               		<input type="hidden" name="photoId" value="${photo.id}">
					<div class="text1">
	                   <textarea name="commentContent" value="Comment..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message';}">Comment...</textarea>
	                </div>
	                <div>
	                	<#if Session ["session_current_user"]??>
	               		<a href="javascript:void(0)" onclick="submitComment()" class="submit">Add a comment</a><div class="clear"></div>
	               		<#else>
	               		<a href="/userlogin" class="submit">Please login</a><div class="clear"></div>
	               		</#if>
	                </div>
	          </form>
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
 </div>
 
<div class="footer">
	 <div class="footer-bottom">
	 	<div class="wrap">
		 	<div class="copy">
			    <p class="copy">Copyright &copy; 2014.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
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
             		
      	   		                                                                                            