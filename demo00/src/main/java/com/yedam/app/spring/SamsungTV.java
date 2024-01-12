package com.yedam.app.spring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class SamsungTV implements TV {

	@Autowired
	Speaker speaker;
	
	
	SamsungTV(Speaker speaker){ // 1. 생성자방식
		this.speaker = speaker;
	}
	
	SamsungTV(){};//기본생성자
	
	// 2. setter방식
	public void setSpeaker(Speaker speaker) {
		this.speaker = speaker;
	}
	
	@Override
	public void on() {
		System.out.println("삼성 TV를 켰습니다.");
		speaker.on();
	}

}
