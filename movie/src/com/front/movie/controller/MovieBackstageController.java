package com.front.movie.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.front.movie.service.MovieBackstageServiceImpl;

@Controller
public class MovieBackstageController {

	@Resource
	private MovieBackstageServiceImpl mbsi;
	
	
	/**
	 * 删除电影
	 * @author 闫相垠
	 * @param movie_id 电影id
	 * @return
	 */
	@GetMapping("delete_movie")
	public String deleteMovie(@RequestParam("id") int movie_id) {
		this.mbsi.deleteMovie(movie_id);
		return "redirect:/backstagemovielist";
	}
	
	/**
	 * 插入电影
	 * @author 闫相垠
	 * @param movie_name 电影名
	 * @param movie_summary 电影简介
	 * @param movie_pic 电影图片路径
	 * @param time 电影时长
	 * @param rate 电影评分
	 */
	@RequestMapping("create_movie")
	public String createMovie(@RequestParam("name") String movie_name,@RequestParam("summary") String movie_summary,@RequestParam("pic") String movie_pic,@RequestParam("time") Integer time,@RequestParam("rate") Float rate) {
		this.mbsi.createMovie(movie_name, movie_summary, movie_pic, time, rate);
		return "redirect:/backstagemovielist";
	}
	
	/**
	 * 修改电影名字
	 * @author 闫相垠
	 * @param movie_id 电影id
	 * @param name 电影名字
	 * @return
	 */
	@GetMapping("change_movie_name")
	public String changeMovieName(@RequestParam("id") int movie_id,@RequestParam("name") String name) {
		this.mbsi.changeMovieName(movie_id, name);
		return "test";
	}
	
	/**
	 * 修改电影简介
	 * @author 闫相垠
	 * @param movie_id 电影id
	 * @param summary 电影简介
	 * @return
	 */
	@GetMapping("change_movie_summary")
	public String changeMovieSummary(@RequestParam("id") int movie_id,@RequestParam("summary") String summary) {
		this.mbsi.changeMovieSummary(movie_id, summary);
		
		return "test";
	}
	
	/**
	 * 修改电影时长
	 * @author 闫相垠
	 * @param movie 电影
	 * @param time 时长
	 */
	@GetMapping("change_movie_time")
	public String changeMovieTime(@RequestParam("id") int movie_id,@RequestParam("time") int time) {
		this.mbsi.changeMovieTime(movie_id, time);
		
		return "test";
	}
}
