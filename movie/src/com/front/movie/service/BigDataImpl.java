package com.front.movie.service;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.front.movie.dao.MovieBigDataDao;
import com.front.user.entity.User;

@Service
public class BigDataImpl {

	@Resource
	private MovieBigDataDao mbgd;
	
	public Map getUserRecommend(User recuser) throws Exception{
		return mbgd.getRecommend(recuser);
	}
	
	public Map getHateRecommend(User recuser) throws Exception{
		return mbgd.getHateRecommend(recuser);
	}
	
	
}
