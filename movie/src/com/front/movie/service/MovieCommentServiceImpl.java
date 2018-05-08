package com.front.movie.service;


import java.util.List;

import javax.annotation.Resource;
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
	public MovieComment findMovieCommentById(int commentid) {
		MovieComment mc =this.mcdt.findMovieCommentById(commentid);
		return mc;
	}
	public List<MovieComment> findMovieCommentByMovieId(int movieid) {
		return this.mcdt.findMovieCommentByMovieId(movieid);
	} 
	//插入一条电影评论
	public int saveMovieComment(MovieComment mc) {
		return this.mcdt.savaMovieComment(mc);
	}
}
