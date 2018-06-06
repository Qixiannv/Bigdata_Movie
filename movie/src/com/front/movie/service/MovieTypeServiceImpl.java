package com.front.movie.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.front.movie.dao.MovieTypeDaoImpl;
import com.front.movie.entity.Movie;
import com.front.movie.entity.MovieType;
import com.front.user.entity.User;
/**
 * 电影标签Dao的实现
 * @author 李孟明
 */
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
	//为用户保存标签
	public void saveUserType(User u,int typeid){
		mtdi.addUserType(typeid, u);
	}
	//为电影保存标签
	public void saveMovieType(int typeid,Movie movie){
		mtdi.addMovieType(typeid, movie);
	}
	
}
