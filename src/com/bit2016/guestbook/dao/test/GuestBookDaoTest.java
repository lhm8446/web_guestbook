package com.bit2016.guestbook.dao.test;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.bit2016.guestbook.dao.GuestBookDao;
import com.bit2016.guestbook.vo.GuestBookVo;

public class GuestBookDaoTest {
	public static void main(String[] args) {
		insertTest();
		getListTest();

	} 
	public static void insertTest(){
		GuestBookVo vo = new GuestBookVo();
		
		vo.setName("하민");
		vo.setContent("ㅎㅇㅎㅇ");
		vo.setPassword("1234");
		
		GuestBookDao dao = new GuestBookDao();
		dao.insert(vo);
				
	}

	public static void getListTest(){
		GuestBookDao dao = new GuestBookDao();
		List<GuestBookVo> list =dao.getList();
		for(GuestBookVo vo : list){
			System.out.println(vo);
		}
	}
}
