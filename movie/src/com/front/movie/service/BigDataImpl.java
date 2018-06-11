package com.front.movie.service;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.front.movie.dao.MovieBigDataDao;

@Service
public class BigDataImpl {

	@Resource
	private MovieBigDataDao mbgd;
	
	public Map getUserRecommend(HttpServletRequest request){
		return mbgd.getRecommend(request);
	}
	
	
}
