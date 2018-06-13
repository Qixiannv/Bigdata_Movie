package com.front.movie.dao;


import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;  
import java.util.HashSet;  
import java.util.Iterator;
import java.util.List;
import java.util.Map;  
import java.util.Map.Entry;  
import java.util.Scanner;  
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.front.movie.entity.Movie;
import com.front.user.dao.UserDaoImp;
import com.front.user.entity.User;
import com.front.user.entity.UserLikeMovie;
import com.front.user.service.UserImp;  

@Repository
public class MovieBigDataDao {  
  
	@Resource
	private UserDaoImp udi;
	@Resource
	private UserImp ui;
	@Resource
	private MovieDaoImpl mdi;
	@Resource
	private SessionFactory sessionFactory;
	
	
	public List searchUserLikeMovie(){
		Query<User> query =this.sessionFactory.getCurrentSession().createQuery("from UserLikeMovie");
		return query.list();
	}
	
    public Map getRecommend(User recuser) throws Exception {  
        /** 
         * 输入用户-->物品条目  一个用户对应多个物品 
         * 用户ID 物品ID集合 
         *   A      a b d 
         *   B      a c 
         *   C      b e 
         *   D      c d e 
         */  
        //Scanner scanner = new Scanner(System.in);  
     //   System.out.println("Input the total users number:");  
        //输入用户总量  
      //  int N = scanner.nextInt();  
    	int n =100;
        int[][] sparseMatrix = new int[n][n];//建立用户稀疏矩阵，用于用户相似度计算【相似度矩阵】  
        Map<Integer, Integer> userItemLength = new HashMap<Integer, Integer>();//存储每一个用户对应的不同物品总数  eg: A 3  
        Map<Movie, Set<User>> itemUserCollection = new HashMap<Movie, Set<User>>();//建立物品到用户的倒排表 eg: a A B  
        Set<Movie> items = new HashSet<Movie>();//辅助存储物品集合  
        Map<String, Integer> userID = new HashMap<String, Integer>();//辅助存储每一个用户的用户ID映射  
        Map<Integer, String> idUser = new HashMap<Integer, String>();//辅助存储每一个ID对应的用户映射 
        List<User> userlist = ui.searchAllUser();
        List<UserLikeMovie> likelist = this.searchUserLikeMovie();
        for(User u :userlist){
        			Set um = new HashSet<Movie>();
        			for(UserLikeMovie ml:likelist){
        				if(ml.getUser()==u){
        					um.add(ml.getMovie());
        				}
        			}
        			
    				
    				userItemLength.put(u.getUser_id(),um.size());//eg: A 3
    				
    				userID.put(u.getEmail(), u.getUser_id());//用户ID与稀疏矩阵建立对应关系
    				
    				
    				
    				
    				
    				idUser.put(u.getUser_id(), u.getEmail());
    				
    				List<Movie> uml = new ArrayList<Movie>(um);
    				//物品用户倒排表
    				for(int j = 0; j < um.size();j++){
    	                if(items.contains(uml.get(j))){//如果已经包含对应的物品--用户映射，直接添加对应的用户  
    	                	itemUserCollection.get(uml.get(j)).add(u);  
    	                }else{//否则创建对应物品--用户集合映射  
    	                	items.add(uml.get(j));  
    	                	itemUserCollection.put(uml.get(j), new HashSet<User>());//创建物品--用户倒排关系  
    	                	itemUserCollection.get(uml.get(j)).add(u);  
                  }
        		}
				
				
        		
				
				
			
        }
       
        
      //计算相似度矩阵【稀疏】  
        Set<Entry<Movie, Set<User>>> entrySet = itemUserCollection.entrySet();  

        Iterator<Entry<Movie, Set<User>>> iterator = entrySet.iterator(); 

        while(iterator.hasNext()){  
            Set<User> commonUsers = iterator.next().getValue();  
           
            for (User user_u : commonUsers) {  
            	
                for (User user_v : commonUsers) {  
                	
                    if(user_u.equals(user_v)){  
                        continue;  
                    }
   
                    sparseMatrix[userID.get(user_u.getEmail())][userID.get(user_v.getEmail())] += 1;//计算用户u与用户v都有正反馈的物品总数  
                    
                }  
            }  
        }

        
        

        
        


        User recommendUser = recuser;
        //System.out.println(userID.get(recommendUser.getEmail()));  
        //计算用户之间的相似度【余弦相似性】  
        int recommendUserId = recommendUser.getUser_id(); 
        List<Integer> uid = new ArrayList<Integer>();
        for(User u : userlist){
        	uid.add(u.getUser_id());
        }
        

        
        Map<Movie, Double> urec = new HashMap<Movie,Double>();
        //计算指定用户recommendUser的物品推荐度  
        for(Movie item: items){//遍历每一件物品  
            Set<User> users = itemUserCollection.get(item);//得到购买当前物品的所有用户集合  
            if(!users.contains(recommendUser)){//如果被推荐用户没有购买当前物品，则进行推荐度计算  
                double itemRecommendDegree = 0.0;  
                for(User user: users){  
                	
                    itemRecommendDegree += sparseMatrix[userID.get(recommendUser.getEmail())][userID.get(user.getEmail())]/Math.sqrt(userItemLength.get(recommendUserId)*userItemLength.get(user.getUser_id()));//推荐度计算  
                }  
                System.out.println("The item "+item+" for "+recommendUser +"'s recommended degree:"+itemRecommendDegree); 
                urec.put(item, itemRecommendDegree );
            }  
        }
        
        List<Map.Entry<Movie,Double>> list = new ArrayList<Map.Entry<Movie,Double>>(urec.entrySet());
        
        Collections.sort(list,new Comparator<Map.Entry<Movie,Double>>() {
            //升序排序

			public int compare(Entry<Movie, Double> o1, Entry<Movie, Double> o2) {
	                return o1.getValue().compareTo(o2.getValue());
			}
        });
        
        
        Map<Movie, Double> map = new HashMap<Movie,Double>();
        List<Movie> finallist = new ArrayList<Movie>();
        for( UserLikeMovie ulm :likelist ){
        	if(ulm.getUser().getUser_id() == recuser.getUser_id()){
        		finallist.add(ulm.getMovie());
        	}else{
        		continue;
        	}
        }
        for(Map.Entry<Movie,Double> mapping:list){ 
        	
        	for(Movie m : finallist){
        		if(m == mapping.getKey()){
        			continue;
        		}else{
        			map.put(mapping.getKey(), mapping.getValue());
        		}
        	}
        	
            
        } 
        System.out.println(map.size());
        
        
        return map;
        
    }  
    
  
}  


