package com.controller;

import java.util.HashMap;

public class HashMapTest {

	public static void main(String[] args) {
		
		// HashMap
		// 값을 저장할 때 Key, Value 형태로 저장
		// Value 값은 중복 허용, Key 값은 중복이 없다.
		// HashMap<key DataType, Value DataType> h = new HashMap<key DataType, Value DataType>
		
		// 사용예시
		// HashMap 에 "이름" : "박병관" 저장
		
		//HashMap<String, String> map = new HashMap<String, String>();
		HashMap<String, String> map = new HashMap<>();
		
		// Data 추가 .put() 
		map.put("이름", "박병관");
		
		// Data 가져오기 .get()
		String name = map.get("이름");
		System.out.println(name);
	}

}
