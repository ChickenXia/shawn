package com.web.test;

public class Lion {

	/**
	 * @param args
	 */
	
	public int lionAge;
	public String lionName;
	public void setAge(int age){
		lionAge = age;
	}
	public int getAge(){
		return lionAge;
	}
	public Lion(String name){
		this.lionName=name;
	}
	public String getName(){
		return lionName;
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Lion lion = new Lion("Cindy");
		lion.setAge(2);
		System.out.println("年龄为："+lion.getAge());
		System.out.println("名字为："+lion.getName());
	}
	
}

class Dog{
	public String dogName;
	public String color;
	public void setDogName(String name){
		dogName = name;
	}
	
	public String getDogName(){
		return dogName;
	}
	
	public void setColor(String color){
		this.color = color;
	}
	
	public String getColor(){
		return color;
	}
	public static void main(String[] args){
		Dog dog = new Dog();
		dog.setColor("Yellow");
		dog.setDogName("Cooper");
		System.out.println(dog.getColor()+dog.getDogName());
		
		FreshJuice juice = new FreshJuice();
		juice.size = FreshJuice.FreshJuiceSize.LARGE;
		System.out.println(juice.size);
	}
	


}