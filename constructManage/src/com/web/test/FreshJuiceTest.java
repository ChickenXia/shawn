package com.web.test;


public class FreshJuiceTest {
	public static void main(String[] args){
		FreshJuice juice = new FreshJuice();
		juice.size = FreshJuice.FreshJuiceSize.LARGE;
		System.out.println(juice.size);
		
		juice.color=FreshJuice.FreshJuiceColor.RED;
		System.out.println(juice.color);
	}
}
