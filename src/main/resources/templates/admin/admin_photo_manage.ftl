<!DOCTYPE html>
<html lang="zh">
<#-- 后台用户批量管理 -->
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Full-Stack 系统后台管理</title>

    <!-- Bootstrap Core CSS -->
    <link href="../vendor/admin/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../vendor/admin/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../dist/admin/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="../vendor/admin/morrisjs/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../vendor/admin/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- Bootstrap 表格 -->
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.11.1/bootstrap-table.min.css">

    <!-- 自定义样式 -->
    <link rel="stylesheet" href="/css/public.css">

    <!-- 后台通用 css -->
    <#include "public/public_css.ftl">
</head>

<body>

<div id="wrapper">
<#-- s 导航 -->
<#include "public/nav.ftl">
<#-- e 导航 -->

<#-- s 页面内容 -->
    <div id="page-wrapper">
    <#-- s 页面内容 -->
        <!-- 按钮组 -->
        <div id="toolbar" class="btn-group">
            <button id="id_btn_add" type="button" class="btn btn-default">
                <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>&nbsp;&nbsp;  上传
            </button>
            <button id="id_btn_edit" type="button" class="btn btn-default">		
                <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>&nbsp;&nbsp; 修改
            </button>
            <button id="id_btn_delete" type="button" class="btn btn-default">
                <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>&nbsp;&nbsp; 删除
            </button>
        </div>
        <!-- s 表格 -->
        <table id="id_table_blog">

        </table>
        <!-- e 表格 -->
    <#-- e 页面内容 -->
    </div>
<#-- e 页面内容 -->

<#-- e 模态框 -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="exampleModalLabel">Photo Message</h4>
      </div>
      <form id="updatePhotoFrom" action="/admin/updatePhoto" method="post">
	      <div class="modal-body">
	      	  <input id="photoId" type="hidden" name="id">
	          <div class="form-group">
	            <label for="recipient-name" class="control-label">照片:</label><br>
	           	<img id="photoAddress" src="">
	          </div>
	          <div class="form-group">
	            <label for="recipient-name" class="control-label">标题:</label>
	            <input name="title" type="text" class="form-control" id="recipient-name">
	          </div>
	          <div class="form-group">
	            <label for="message-text" class="control-label">内容:</label>
	            <textarea name="description" class="form-control" id="message-text"></textarea>
	          </div>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	        <button type="submit" class="btn btn-primary">Submit</button>
	      </div>
      </form>
    </div>
  </div>
</div>
<#-- e 模态框 -->

</div>

<!-- jQuery -->
<script src="../vendor/admin/jquery/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="../vendor/admin/bootstrap/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="../vendor/admin/metisMenu/metisMenu.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="../dist/admin/js/sb-admin-2.js"></script>

<#-- Bootstrap 表格 -->
<!-- Latest compiled and minified JavaScript -->
<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.11.1/bootstrap-table.min.js"></script>

<!-- Latest compiled and minified Locales -->
<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.11.1/locale/bootstrap-table-zh-CN.min.js"></script>

<#-- 自定义 js -->
<script src="../js/b_admin_photo_manage.js"></script>
<script src="../js/public.js"></script>

<#-- 后台通用 js -->
<#include "public/public_js.ftl">
</body>

</html>
