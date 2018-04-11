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
	
	//根据主键查movieComment
	public void findMovieCommentById(HttpServletRequest request,int id) {
		MovieComment mc =this.mcdt.findMovieCommentById(id);
		request.setAttribute("moviecomment", mc);
	}
	
	//根据userid查
	public void findMovieCommentByUserId(HttpServletRequest request,int userId) {
		List<MovieComment> list =this.mcdt.findMovieCommentByUserId(userId);
		request.setAttribute("moviecommentlist", list);
	}
	//根据movieid查
	public void findMovieCommentByMovieId(HttpServletRequest request,int movieId) {
		List<MovieComment> list =this.mcdt.findMovieCommentByMovieId(movieId);
		request.setAttribute("moviecommentlist", list);
	}
	
}
