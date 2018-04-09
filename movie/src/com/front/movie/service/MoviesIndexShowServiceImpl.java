package com.front.movie.service;

import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.front.movie.dao.MovieSearchAllDaoImpl;
import com.front.movie.entity.Movie;
@Service(value = "moviesIndexShowServiceImpl")
@Transactional
public class MoviesIndexShowServiceImpl {
	@Resource
	private MovieSearchAllDaoImpl msadi;//产品查询dao
	public void searchAllMovie(HttpServletRequest request) {
		List<Movie> list =this.msadi.searchAllMovie();
		request.setAttribute("movielist", list);
	}

}
