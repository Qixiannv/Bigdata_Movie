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
	@GetMapping("/gotosingle")
	public String ShowMovieSingle(HttpServletRequest request,@RequestParam("id") int id) {
		Movie movie = this.msi.findMovieById(id);
		request.setAttribute("movie", movie);
		
		return "single";
		}
	
	
	@GetMapping("/leave_comment")
	public String LeaveComment(HttpServletRequest request,@RequestParam("movie_id") int movie_id,@RequestParam("user_id") int user_id,
			@RequestParam("comment_text") String comment_text) throws Exception {
   		 MovieComment mc = new MovieComment();
		 mc.setComment_text(comment_text);
		 mc.setUser(this.ui.UserSelect(user_id));
		 mc.setMovie(this.msi.findMovieById(movie_id));
		 this.mcsi.saveMovieComment(mc);
		return "redirect:/gotosingle?id="+movie_id;
	}
	
	

}
