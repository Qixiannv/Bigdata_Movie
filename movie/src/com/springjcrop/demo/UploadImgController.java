package com.springjcrop.demo;

import java.io.File;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.front.user.entity.User;
import com.front.user.service.UserImp;

@Controller
public class UploadImgController {
	
	@Resource
	private UserImp userRegisterImp;
	
	@RequestMapping(value = "/uploadHeadImage",method = RequestMethod.POST)
    public String uploadHeadImage(
            HttpServletRequest request,
            @RequestParam(value = "x") String x,
            @RequestParam(value = "y") String y,
            @RequestParam(value = "h") String h,
            @RequestParam(value = "w") String w,
            @RequestParam(value = "imgFile") MultipartFile imageFile
    ) throws Exception{
        System.out.println("==========Start=============");
        String realPath = request.getSession().getServletContext().getRealPath("/");
        String resourcePath = "\\upload\\";
        if(imageFile!=null){
            if(FileUploadUtil.allowUpload(imageFile.getContentType())){
                String fileName = FileUploadUtil.rename(imageFile.getOriginalFilename());
                int end = fileName.lastIndexOf(".");
                String saveName = fileName.substring(0,end);
                File dir = new File(realPath + resourcePath);
                if(!dir.exists()){
                    dir.mkdirs();
                }
                File file = new File(dir,saveName+"_src.jpg");
                imageFile.transferTo(file);
                String srcImagePath =realPath + resourcePath+ saveName;
                System.out.println(srcImagePath);
                
                int imageX = Integer.parseInt(x);
                int imageY = Integer.parseInt(y);
                int imageH = Integer.parseInt(h);
                int imageW = Integer.parseInt(w);
                //这里开始截取操作
                System.out.println("==========imageCutStart=============");
                ImgCut.imgCut(srcImagePath,imageX,imageY,imageW,imageH);
                System.out.println("==========imageCutEnd=============");
              User u=(User)request.getSession().getAttribute("user");
              int user_id=u.getUser_id();
              this.userRegisterImp.AvatarUpdate("E:\\upload\\"+ saveName+"_cut.jpg", user_id);
                
                
                request.getSession().setAttribute("imgSrc", resourcePath+ saveName+"_src.jpg");//成功之后显示用
                request.getSession().setAttribute("imgCut",resourcePath + saveName+"_cut.jpg");//成功之后显示用
            }
        }
        return "movie-personal";
    }

}
