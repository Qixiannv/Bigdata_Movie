package com.front.movie.service;

import java.util.List;

import javax.annotation.Resource;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.front.movie.dao.MovieCommentDaoImpl;
import com.front.movie.entity.Movie_Comment;

@Service(value = "movieCommentServiceImpl")
@Transactional
public class MovieCommentServiceImpl {

	@Resource
	private MovieCommentDaoImpl mcdi ;
	//查询所有的movieComment
	public void searchAllMovieComment(HttpServletRequest request) {
		List<Movie_Comment> list = this.mcdi.searchAllMovieComment();
		request.setAttribute("moviecommentlist", list);
	}
	//根据id查moviecomment
	public void findMovieCommentById(HttpServletRequest request,int id) {
		Movie_Comment m= this.mcdi.findByCommentId(id);
		request.setAttribute("movie_comment", m);
	}
	//根据userid查moviecomment
	public void findMovieCommentByUserId(HttpServletRequest request,int userid) {
		List<Movie_Comment> list = this.mcdi.findByUserId(userid);
		request.setAttribute("movielist", list);
	}
	//根据movieid查moviecomment
	public void findMovieCommentByMovieId(HttpServletRequest request,int movieid) {
		List<Movie_Comment> list = this.mcdi.findByMovieId(movieid);
		request.setAttribute("movielist", list);
	}
}
