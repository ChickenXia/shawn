package com.web.test;

public class Arrays {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int[] myList = {1,5,3,2,9,7};
		for(int i=0;i<myList.length;i++){
			System.out.println(myList[i]);
		}
		
		int total=0;
		for(int i=0;i<myList.length;i++){
			total+=myList[i];
		}
		System.out.println("total is "+total);
		
		int max=0;
		for(int i=0;i<myList.length;i++){
			if(myList[i]>max) max=myList[i];
		}
		System.out.println("max is "+max);
		
		for(int element:myList){
			System.out.println(element);
		}
		System.out.println("数组生成方法");
		printArray(new int[]{1,3,2,7,8});
		
		System.out.println("数组作为函数的返回值：");
		for(int i=0;i<reverse(new int[]{1,3,2,7,8}).length;i++){
			System.out.println(reverse(new int[]{1,3,2,7,8})[i]);
		}
		
	}
	
	public static void printArray(int[] array){
		for(int i=0;i<array.length;i++){
			System.out.println(array[i]);
		}
	}
	
	public static int[] reverse(int[] list) {
		  int[] result = new int[list.length];
		 
		  for (int i = 0, j = result.length - 1; i < list.length; i++, j--) {
		    result[j] = list[i];
		  }
		  return result;
		}

}
