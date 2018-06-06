package com.front.movie.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.front.actor.entity.Actor;
import com.front.movie.dao.MovieSearchDao;
import com.front.movie.entity.Movie;

@Service
public class MovieSearchServiceImpl {
	
	@Resource
	private MovieSearchDao msd;
	
	/**
	 * 模糊搜索
	 * @author 闫相垠
	 * @param name 需要模糊查找的字段
	 * @return List<Movie> 查找结果
	 */
	public List<Movie> movieSearch(String name){
		return this.msd.searchMovie(name);
	}
	
	/**
	 * 查找演员
	 * @author 闫相垠
	 * @param name 需要查找的字段
	 * @return List<Actor> 返回的演员列表
	 */
	public List<Actor> actorSearch(String name){
		return this.msd.searchActor(name);
	}
} 
