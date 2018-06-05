package com.front.movie.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.front.movie.dao.MovieTypeDaoImpl;
import com.front.movie.entity.MovieType;

@Service(value = "movieTypeServiceImpl")
@Transactional
public class MovieTypeServiceImpl {
	@Resource
	private MovieTypeDaoImpl mtdi;
	
	//存储标签
	public int savaMovieType(MovieType mt){
		return mtdi.savaMovieType(mt);
	}
	
	//根据id查标签
	public MovieType findMovieTypeById(int id){
		return mtdi.findMovieTypeById(id);
	}
	//查询所有标签
	public List<MovieType> searchAllMovieType(){
		return mtdi.searchAllMovieType();
	}
}
