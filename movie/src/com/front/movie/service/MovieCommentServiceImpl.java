package com.front.movie.service;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.front.movie.dao.MovieCommentDaoImpl;
import com.front.movie.entity.MovieComment;

@Service(value = "movieCommentServiceImpl")
@Transactional
public class MovieCommentServiceImpl {

	@Resource
	private MovieCommentDaoImpl mcdt;
	
	//根据评论id查movieComment
	public void findMovieCommentById(HttpServletRequest request,int commentid) {
		MovieComment mc =this.mcdt.findMovieCommentById(commentid);
		request.setAttribute("moviecomment", mc);
	}
	
	//根据userID查
	public void findMovieCommentByUserId(HttpServletRequest request,int userId) {
		List<MovieComment> list =this.mcdt.findMovieCommentByUserId(userId);
		request.setAttribute("moviecommentlist", list);
	}
	//根据movieId查
	public void findMovieCommentByMovieId(HttpServletRequest request,int movieId) {
		List<MovieComment> list =this.mcdt.findMovieCommentByMovieId(movieId);
		request.setAttribute("moviecommentlist", list);
	}
	
	//插入一条电影评论
	public int saveMovieComment(MovieComment mc) {
		return this.mcdt.savaMovieComment(mc);
	}
}
