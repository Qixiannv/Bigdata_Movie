package com.front.movie.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.front.movie.entity.Movie;
import com.front.movie.entity.Page;
import com.front.movie.service.MoviePageImp;
import com.front.movie.service.MovieServiceImpl;

@Controller
public class MovieListController {

	@Resource
	private MoviePageImp MP;
	@Resource
	private MovieServiceImpl msi;
	
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
            System.out.println("1111");
            List<Movie> list = page.getList();
    		request.setAttribute("movies", list);
    		System.out.println("1213");
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return "movie-list";
    }
}
