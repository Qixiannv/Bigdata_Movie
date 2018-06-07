package com.front.movie.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.front.movie.dao.PageDao;
import com.front.movie.entity.Movie;
import com.front.movie.entity.MovieTypeAndMovie;
import com.front.movie.entity.Page;
@Service
public class MoviePageImp {
	
	@Resource
	private PageDao PD;
	@SuppressWarnings("unchecked")
	public Page queryForPage(int currentPage,int pageSize) {
        // TODO Auto-generated method stub

        Page page = new Page();        
        //总记录数
        
        int allRow = PD.getAllRowCount();
        System.out.println(allRow);
        //当前页开始记录
        int offset = page.countOffset(currentPage,pageSize);  
        //分页查询结果集
        List<Movie> list = PD.queryForPage(offset, pageSize); 

        page.setPageNo(currentPage);
        page.setPageSize(pageSize);
       page.setTotalRecords(allRow);
        page.setList(list);
        
        return page;
    }
	
	public Page queryForPage1(int currentPage,int pageSize,int type_id){
		 // TODO Auto-generated method stub

        Page page = new Page();        
        //总记录数
        
        int allRow = PD.getAllRowCount1(type_id);
        System.out.println(allRow);
        //当前页开始记录
        int offset = page.countOffset(currentPage,pageSize);  
        //分页查询结果集
        List<MovieTypeAndMovie> list = PD.queryForPage1(offset, pageSize,type_id); 

        page.setPageNo(currentPage);
        page.setPageSize(pageSize);
       page.setTotalRecords(allRow);
        page.setList(list);
        
        return page;
	}
}
