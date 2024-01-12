package com.yedam.app.spring;

import org.springframework.context.support.GenericApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class SpringMainClass {

	public static void main(String[] args) {
		System.out.println("Spring 방식");
		GenericApplicationContext ctx = 
				new GenericXmlApplicationContext("classpath:applicationContext.xml");
		
//		TV tV = (TV)ctx.getBean("tv");
		TV tV = (TV)ctx.getBean(TV.class);
		tV.on();
	}

}
