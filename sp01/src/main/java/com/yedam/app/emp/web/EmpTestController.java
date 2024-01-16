package com.yedam.app.emp.web;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yedam.app.emp.service.EmpVO;

@Controller
public class EmpTestController {
	
	@GetMapping("getTestEmp")
	@ResponseBody	//JSP가 아닌 데이터를 반환
	public EmpVO getEmpInfo(EmpVO empVO) {
		empVO.setEmployeeId(1000);
		return empVO;
	}
	//서버 실행시킨후 url뒤에 getTestEmp?lastName=Hong&hireDate=2024/01/16  입력하면
	// empVO 객체에서 lastName과 hireDate가 있는지 확인하고 매칭이 되면 매칭된 값에 대해서만 setter 실행
	// 그후 empVO.setEmployeeId(1000);  실행
	
	
	@PostMapping("getTestEmp")
	@ResponseBody	//JSP가 아닌 데이터를 반환
	public EmpVO getEmpInfoPost(EmpVO empVO) {
		empVO.setEmployeeId(9000);
		return empVO;
	}
	//postman에서 post방식
	//http://localhost:8080/app/getTestEmp
	//body : x-www-form...으로 키:밸류 입력
	
	
	@GetMapping("paramTestEmp")
	@ResponseBody
	public Map<String, Object> paramTestEmpGet(String name, Integer age){
		Map<String, Object> map = new HashMap<>();
		map.put("name", name);
		map.put("age", age);
		return map;
	}
	
	@PostMapping("paramTestEmp")
	@ResponseBody
	public Map<String, Object> paramTestEmpPost(@RequestParam String name, @RequestParam(defaultValue = "20") Integer age){
		Map<String, Object> map = new HashMap<>();
		map.put("name", name);
		map.put("age", age);
		return map;
	}
	
	@GetMapping("pathTestEmp/{id}/{password}")
	@ResponseBody
	public String pathTestEmpGet(@PathVariable String id, @PathVariable(name = "password") String pwd) {
		return id;
	}
	
	@PostMapping("jsonTestEmp")
	@ResponseBody
	public EmpVO jsonTestEmpPost(@RequestBody EmpVO empVO) {
		return empVO;
	}
	
	
	
	
}
