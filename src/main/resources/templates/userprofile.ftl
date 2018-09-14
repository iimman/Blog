<!DOCTYPE HTML>
<html>
<head>
<title>Photo</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href='http://fonts.googleapis.com/css?family=Karla' rel='stylesheet' type='text/css'>
<link href="css/photowall/style.css" rel="stylesheet" type="text/css" media="all" />
<script src="vendor/jquery/jquery.min.js"></script>
<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
<link href="css/photowall/magnific-popup.css" rel="stylesheet" type="text/css">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="vendor/admin/bootstrap/js/bootstrap.min.js"></script>
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
			
			function updateMessage(){
				$('#pModal').modal('show');
			}
	</script>


		
<#-- 自定义 样式 -->
<#include "public/front_custom_css.ftl">

<#-- CSS -->
<#include "public/front_css.ftl">
</head>
<body>
<#include "public/nav.ftl">
  <div class="banner">
      <div class="wrap">
      	   <h2>个人信息中心</h2><div class="clear"></div>
      </div>
  </div>
  <div class="main">	
	 <div class="project-wrapper">
	 	<div class="wrap">
	 		<span class="glyphicon glyphicon-align-left" aria-hidden="true"></span><img alt="" src="${Session ['session_current_user'].avatar }">
	    </div> 
	    <div class="wrap">
	 	  <div class="contact">
	 	  		
				<div class="lsidebar span_1_of_about">
				   <h5 class="leave">个人信息</h5><div class="clear"></div>
				   <div class="contact-list">
						<ul>
							<li><img src="images/address.png" alt=""><p>用户名：${Session ["session_current_user"].username }</p><div class="clear"></div></li>
							<li><img src="images/phone.png" alt=""><p>电话号码： ${Session ["session_current_user"].motto }<br></p><div class="clear"></div></li>
							<li><img src="images/msg.png" alt=""><p>邮箱： <span class="yellow1">${Session ["session_current_user"].email }</span></p><div class="clear"></div></li>
					   </ul>
					</div>
			    </div>
			    <div class="lsidebar span_1_of_about">
				   <h5 class="leave">联系方式</h5><div class="clear"></div>
				   <div class="contact-list">
						<ul>
							<li><img src="images/i.png" alt=""><p>微信：${Session ["session_current_user"].wecaht }</p><div class="clear"></div></li>
							<li><img src="images/f.png" alt=""><p>昵称：${Session ["session_current_user"].nickname }<br></p><div class="clear"></div></li>
							<li><img src="images/g.png" alt=""><p>QQ：${Session ["session_current_user"].qq }<span class="yellow1"></span></p><div class="clear"></div></li>
					   </ul>
					</div>
			    </div>
			    
			    <div class="cont span_2_of_contact"><input onclick="updateMessage()" class="btn btn-primary" type="button" value="修改信息"></div>
			    
			<div class="clear"></div>				
		    </div>
		</div>
     </div>
  </div>
  
<#-- e 模态框 -->
<div class="modal fade" id="pModal" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="exampleModalLabel">个人信息修改</h4>
      </div>
      <form id="updatePhotoFrom" action="/updateUser" method="post">
      	  <input type="hidden" name="id" value="${Session ['session_current_user'].id }">
	      <div class="modal-body">
	      	 <div class="form-group">
			    <label for="exampleInputEmail1">用户名</label>
			    <input type="text" class="form-control" name="username" placeholder="UserName" value='${Session ["session_current_user"].username }'>
			  </div>
			  <div class="form-group">
			    <label for="exampleInputPassword1">电话号码</label>
			    <input type="text" class="form-control" name="motto" placeholder="Telephone" value="${Session ['session_current_user'].motto }">
			  </div>
			  <div class="form-group">
			    <label for="exampleInputPassword1">邮箱</label>
			    <input type="email" class="form-control" name="email" placeholder="Email" value="${Session ['session_current_user'].email }">
			  </div>
			  <div class="form-group">
			    <label for="exampleInputPassword1">github</label>
			    <input type="text" class="form-control" name="github" placeholder="Github" value="${Session ['session_current_user'].github }">
			  </div>
			  <div class="form-group">
			    <label for="exampleInputPassword1">qq</label>
			    <input type="text" class="form-control" name="qq" placeholder="qq" value="${Session ['session_current_user'].qq }">
			  </div>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-danger" data-dismiss="modal">关 闭</button>
	        <button type="submit" class="btn btn-success">确认修改</button>
	      </div>
      </form>
    </div>
  </div>
</div>
<#-- e 模态框 -->

<#-- s-footer -->
<#include "public/footer.ftl">
<#-- e-footer -->
<#-- JS -->
<#include "public/front_js.ftl">
</body>	
</html>    		          		
      	   		                                                                                            