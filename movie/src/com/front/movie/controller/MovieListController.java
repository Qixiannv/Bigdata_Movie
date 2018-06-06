package com.front.movie.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.front.movie.dao.MovieTypeDaoImpl;
import com.front.movie.entity.Movie;
import com.front.movie.entity.MovieType;
import com.front.movie.entity.MovieTypeAndMovie;
import com.front.movie.entity.Page;
import com.front.movie.service.MoviePageImp;
import com.front.movie.service.MovieServiceImpl;

@Controller
public class MovieListController {

	@Resource
	private MoviePageImp MP;
	@Resource
	private MovieServiceImpl msi;
	
	@Resource
	private MovieTypeDaoImpl mtd;
	
	@RequestMapping(value = "/showAll.do")
    public String findAllCourse(HttpServletRequest request,
            HttpServletResponse response) {
		
		 try {
	            String pageNo = request.getParameter("pageNo");
	            if (pageNo == null) {
	                pageNo = "1";
	            }
	            Page page = MP.queryForPage(Integer.valueOf(pageNo), 10);
	            request.setAttribute("page", page);
	            List<Movie> list = page.getList();
	    		request.setAttribute("movies", list);
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
        
        return "movie-list";
    }
	@RequestMapping(value = "/11111")
	public String findMovieByMovie_Type(@RequestParam("type_name") String type_name,HttpServletRequest request){
		System.out.println(type_name);
		MovieType mt=this.mtd.selectType_idByTypeName(type_name);
		List<MovieTypeAndMovie> li= this.mtd.selectMovie_idByType_id(mt.getType_id());
		List<Movie> list=new ArrayList<Movie>();
		for(int i=0;i<li.size();i++){
			list.add(li.get(i).getMovie());
		}
		System.out.println(list);
		request.setAttribute("list", list);
		return "";
	}
}
