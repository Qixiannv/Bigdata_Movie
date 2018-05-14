package com.front.movie.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.front.movie.entity.Movie;
import com.front.movie.entity.MovieComment;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.front.movie.service.MovieCommentServiceImpl;
import com.front.movie.service.MovieServiceImpl;
import com.front.user.entity.User;
import com.front.user.service.UserImp;

@Controller
public class SingleController {

	@Resource
	private MovieServiceImpl msi;
	@Resource
	private MovieCommentServiceImpl mcsi;
	@Resource
	private UserImp ui;
	
	
	//跳转页面
	/**
	 * 将电影id传给jsp
	 * @author 闫相垠
	 * @param request request
	 * @param id 电影id
	 * @return jsp名称
	 */
	@GetMapping("/gotosingle")
	public String showMovieSingle(HttpServletRequest request,@RequestParam("id") int id) {
		//调用service方法，通过电影id找到电影
		Movie movie = this.msi.findMovieById(id);
		//将电影存放进request
		request.setAttribute("movie", movie);
		
		return "single";
		}
	
	/**
	 * 将评论存放进数据库
	 * @author 闫相垠
	 * @param request request
	 * @param movie_id 电影id
	 * @param user_id 评论者id
	 * @param comment_text 评论内容
	 * @return 重定向到showMovieSingle,并传递参数：电影id
	 */
	@GetMapping("/leave_comment")
	public String leaveComment(HttpServletRequest request,@RequestParam("movie_id") int movie_id,@RequestParam("user_id") int user_id,
			@RequestParam("comment_text") String comment_text) throws Exception {
		//实例化一个MovieComment
   		 MovieComment mc = new MovieComment();
   		 //设定评论内容属性
		 mc.setComment_text(comment_text);
		 //设定user
		 mc.setUser(this.ui.UserSelect(user_id));
		 //设定movie
		 mc.setMovie(this.msi.findMovieById(movie_id));
		 //调用service将评论内容存放进数据库
		 this.mcsi.saveMovieComment(mc);
		return "redirect:/gotosingle?id="+movie_id;
	}
	
	

}
