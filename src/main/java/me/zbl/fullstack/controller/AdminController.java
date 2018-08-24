package me.zbl.fullstack.controller;

import me.zbl.fullstack.controller.base.BaseController;
import me.zbl.fullstack.entity.Article;
import me.zbl.fullstack.entity.Photo;
import me.zbl.fullstack.entity.Resume;
import me.zbl.fullstack.entity.dto.form.AdminUserPwdModifyForm;
import me.zbl.fullstack.entity.dto.request.TableKeyModel;
import me.zbl.fullstack.entity.vo.BlogModifyModel;
import me.zbl.fullstack.entity.dto.form.BlogAddForm;
import me.zbl.fullstack.entity.dto.form.BlogModifyForm;
import me.zbl.fullstack.entity.dto.form.UserLoginForm;
import me.zbl.fullstack.entity.vo.ResumeModifyModel;
import me.zbl.fullstack.service.api.IAdminBlogService;
import me.zbl.fullstack.service.api.IAdminPhotoService;
import me.zbl.fullstack.service.api.IAdminUserService;
import me.zbl.fullstack.service.api.IAdminUserService.ModifyPwdResult;
import me.zbl.fullstack.service.api.IResumeService;
import me.zbl.fullstack.utils.DateTimeHelper;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import static me.zbl.fullstack.consts.ViewConsts.*;

import java.io.File;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

/**
 * 后台控制器
 *
 * @author James
 */
@Controller
@RequestMapping("/admin")
public class AdminController extends BaseController {

  @Autowired
  IAdminBlogService mBlogService;
  @Autowired
  IAdminUserService mAdminUserService;
  @Autowired
  IResumeService mResumeService;
  @Autowired
  IAdminPhotoService mAdminPhotoService;
  
  String url = "D:\\projects\\FS-Blog-master\\src\\main\\resources\\static\\images";

  /**
   * 后台首页
   */
  @GetMapping("")
  public String pAdminIndex(HttpServletRequest request, Model model) {
    return "admin/blog_manage";
  }

  /**
   * 后台首页
   */
  @GetMapping("/index")
  public String pAdminIndex2(HttpServletRequest request, Model model) {
    return "admin/blog_manage";
  }

  /**
   * 后台用户登录页面
   */
  @GetMapping("/login")
  public String pAdminLogin(HttpServletRequest request, Model model) {
    return "admin/userlogin";
  }

  /**
   * 写博客页面
   */
  @GetMapping("/blogadd")
  public String pAdminBlogAdd(HttpServletRequest request, Model model) {
    return "admin/blogadd";
  }

  /**
   * 编辑博客页面
   */
  @GetMapping("/blogmodify/{id}")
  public String pAdminBlogModify(HttpServletRequest request, Model model, @PathVariable Integer id) throws Exception {
    Article article = mBlogService.blogSelectByPrimaryKey(id);
    BlogModifyModel modifyModel = new BlogModifyModel(article);
    addModelAtt(model, VIEW_ARTICLE, modifyModel);
    return "admin/blog_modify";
  }

  /**
   * 博客管理页面
   */
  @GetMapping("/blogmanage")
  public String pAdminBlogManage(HttpServletRequest request, Model model) {
    return "admin/blog_manage";
  }

  /**
   * 后台用户登录验证
   */
  @PostMapping("/login.f")
  public String fAdminLogin(UserLoginForm userLoginForm) {
    return "redirect:/admin/blog_manage";
  }

  /**
   * 发布文章
   */
  @PostMapping("/blogadd.f")
  public String fAdminBlogAdd(BlogAddForm blogAddForm) {
    // TODO: 17-12-4 返回 json ，成功则重定向到博客列表
    mBlogService.blogAdd(blogAddForm);
    return "redirect:/admin/index";
  }

  /**
   * 修改文章
   */
  @PostMapping("blog_modify.f")
  public String fAdminBlogModify(BlogModifyForm modifyForm) {
    // TODO: 17-12-4 返回 json ，成功则重定向到博客列表
    mBlogService.blogModify(modifyForm);
    return "redirect:/admin/index";
  }


  /**
   * 获取博客详情列表
   */
  @GetMapping("/blog_list.j")
  @ResponseBody
  public Object jAdminBlogList() {
    return mBlogService.getArticleList();
  }

  /**
   * 批量删除博客
   */
  @DeleteMapping("/blog_delete.j")
  @ResponseBody
  public Object jAdminBlogDelete(@RequestBody TableKeyModel model) {
    mBlogService.blogDelete(model);
    return responseSimpleOK();
  }

  /**
   * 后台用户管理页面
   */
  @GetMapping("/admin_user_manage")
  public String pAdminUserManage() {
    return "admin/admin_user_manage";
  }

  /**
   * 后台用户管理 json
   */
  @GetMapping("/admin_user.j")
  @ResponseBody
  public Object jAdminUserList() {
    return mAdminUserService.getAdminUserJson();
  }

  /**
   * 后台用户批量删除
   */
  @DeleteMapping("/admin_use_delete.j")
  @ResponseBody
  public Object jAdminUserDelete(@RequestBody TableKeyModel model) {
    mAdminUserService.deleteAdminUser(model);
    return responseSimpleOK();
  }

  /**
   * 后台用户密码修改页面
   */
  @GetMapping("/admin_user_pwd_modify")
  public String pAdminUserPwdModify() {
    return "admin/admin_user_pwd_modify";
  }

  /**
   * 后台用户密码修改
   */
  @PostMapping("/admin_user_pwd_modify.f")
  @ResponseBody
  public Object fAdminUserPwdModify(@Valid AdminUserPwdModifyForm form, BindingResult result, HttpServletRequest request) {
    if (result.hasErrors()) {
      return responseSimpleError();
    }
    ModifyPwdResult result1;
    try {
      result1 = mAdminUserService.modifyUserPwd(form, request);
    } catch (Exception e) {
      e.printStackTrace();
      return responseSimpleError();
    }
    if (result1 == ModifyPwdResult.SUCCESS) {
      return responseSimpleOK();
    } else {
      return responseSimpleError();
    }
  }

  @GetMapping("/resume_modify")
  public String pUpdateResume(Model model) throws Exception {
    Resume article = mResumeService.getResume();
    ResumeModifyModel modifyModel = new ResumeModifyModel(article);
    addModelAtt(model, VIEW_ARTICLE, modifyModel);
    return "admin/resume_modify";
  }
  
  /**
   *  后台照片管理页面
   */
  @GetMapping("/admin_photo_manage")
  public String AdminPhotoManage() {
    return "admin/admin_photo_manage";
  }
  
  /**
   *  后台照片数据
   */
  @GetMapping("/admin_photo.j")
  @ResponseBody
  public Object AdminPhotoList() {
    return mAdminPhotoService.getAdminPhotoJson();
  }
  
  /**
   *  后台照片上传页面
   */
  @GetMapping("/photoadd")
  public String AdminPhotoAdd(HttpServletRequest request, Model model) {
    return "admin/photoadd";
  }
  
  @PostMapping("/inputPhoto")
  @ResponseBody
  public Map<String, Object> AdminInputPhoto(HttpServletRequest request, HttpServletResponse response ,@RequestParam("file") MultipartFile file){
	Map<String, Object> json = new HashMap<String, Object>();
	Photo photo = new Photo();
	try {
		//输出文件后缀名称
        DateFormat df = new SimpleDateFormat("yyyyMMddHHmmssSSS");
        //图片名称
        String name = df.format(new Date());
        //图片随机后缀
        Random r = new Random();
        for(int i = 0 ;i<3 ;i++){
            name += r.nextInt(10);
        }
        //获取文件后缀名
        String ext = FilenameUtils.getExtension(file.getOriginalFilename());
        //保存图片       File位置 （全路径）   /upload/fileName.jpg
        //String url = request.getSession().getServletContext().getRealPath("/static/images");
        System.out.println(url);
        //相对路径
        String path = "/"+name + "." + ext;
        photo.setAddress("images"+path);
        File f = new File(url);
        if(!f.exists()){
            f.mkdirs();
        }
        //上传到指定文件夹
        file.transferTo(new File(url+path));
        //图片数据保存到数据图
        Date nowTime = DateTimeHelper.getNowTime();
        photo.setCreate(nowTime);
        photo.setModified(nowTime);
        mAdminPhotoService.adminAddPhoto(photo);
		json.put("success", "/static/images"+path);
	} catch (Exception e) {
		 e.printStackTrace();
	}
    return json;
  }
  
  /**
   *  后台照片修改
   */
  @PostMapping("/updatePhoto")
  public String AdminUpdatePhoto(Photo photo) {
	System.out.println(photo.toString());
	mAdminPhotoService.adminUpdatePhoto(photo);
    return "admin/admin_photo_manage";
  }
  
  /**
   * 后台照片批量删除
   */
  @DeleteMapping("/deletePhoto")
  @ResponseBody
  public Object AdminPhotoDelete(@RequestBody TableKeyModel model) {
	System.out.println(model.toString());
	mAdminPhotoService.AdminDeletePhoto(model);
    return responseSimpleOK();
  }

}
