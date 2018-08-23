<!DOCTYPE html>
<html lang="zh">
<#-- 写博客 -->
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Full-Stack 系统后台管理</title>
    
    <!-- jQuery -->
	<script src="../vendor/admin/jquery/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="../vendor/admin/bootstrap/js/bootstrap.min.js"></script>

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

    <!-- EditorMD -->
    <link rel="stylesheet" href="../vendor/editor/css/editormd.css"/>
    
    <!-- bootstrap-fileinput -->
    <script src="../vendor/bootstrap-fileinput/js/fileinput.min.js"></script>
    <script src="../vendor/bootstrap-fileinput/js/fileinput_locale_zh.js"></script>
    <link href="../vendor/bootstrap-fileinput/css/fileinput.min.css" rel="stylesheet">
	    
    <script type="text/javascript">    
    $(function () {
        initFileInput("input-id");
    })

    function initFileInput(ctrlName) {
        var control = $('#' + ctrlName);
        control.fileinput({
            language: 'zh', //设置语言
            uploadUrl: "/admin/inputPhoto", //上传的地址
            allowedFileExtensions: ['jpg', 'gif', 'png'],//接收的文件后缀
            maxFilesNum : 5,//上传最大的文件数量
            //uploadExtraData:{"id": 1, "fileName":'123.mp3'},
            uploadAsync: true, //默认异步上传
            showUpload: true, //是否显示上传按钮
            showRemove : true, //显示移除按钮
            showPreview : true, //是否显示预览
            showCaption: false,//是否显示标题
            browseClass: "btn btn-primary", //按钮样式
            //dropZoneEnabled: true,//是否显示拖拽区域
            //minImageWidth: 50, //图片的最小宽度
            //minImageHeight: 50,//图片的最小高度
            //maxImageWidth: 1000,//图片的最大宽度
            //maxImageHeight: 1000,//图片的最大高度
            maxFileSize: 0,//单位为kb，如果为0表示不限制文件大小
            //minFileCount: 0,
            //maxFileCount: 10, //表示允许同时上传的最大文件个数
            enctype: 'multipart/form-data',
            validateInitialCount:true,
            previewFileIcon: "<i class='glyphicon glyphicon-king'></i>",
            msgFilesTooMany: "选择上传的文件数量({n}) 超过允许的最大数值{m}！",

        }).on('filepreupload', function(event, data, previewId, index) {     //上传中
            var form = data.form, files = data.files, extra = data.extra,
            response = data.response, reader = data.reader;
            console.log('文件正在上传···');
            
        }).on("fileuploaded", function (event, data, previewId, index) {    //一个文件上传成功
            console.log('文件上传成功！'+data.id);
            alert(JSON.stringify(data.success));
        }).on('fileerror', function(event, data, msg) {  //一个文件上传失败
            console.log('文件上传失败！'+data.id);
            alert(msg);
        })
		}

    </script>
</head>

<body>

<div id="wrapper">
<#-- s 导航 -->
<#include "public/nav.ftl">
<#-- e 导航 -->

<#-- s 页面内容 -->
    <div id="page-wrapper">
    <#-- s 页面内容 -->
	<form id="form" action="" method="post" enctype="multipart/form-data">
      <div class="row form-group">
         <div class="panel panel-primary">
           <div class="panel-heading" align="center">
             <label style="text-align: center;font-size: 18px;">文 件 上 传</label>
           </div>
         <div class="panel-body">
           <div class="col-sm-12">
              <input id="input-id" name="file" multiple type="file" data-show-caption="true">
           </div>
         </div>
        </div>
      </div>
    </form>

    <#-- e 页面内容 -->
    </div>
<#-- e 页面内容 -->

</div>



<!-- Metis Menu Plugin JavaScript -->
<script src="../vendor/admin/metisMenu/metisMenu.min.js"></script>

<!-- Morris Charts JavaScript -->
<script src="../vendor/admin/raphael/raphael.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="../dist/admin/js/sb-admin-2.js"></script>
<script src="../vendor/editor/editormd.min.js"></script>

</body>

</html>
