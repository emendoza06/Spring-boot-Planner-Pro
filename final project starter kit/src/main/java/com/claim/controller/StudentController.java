package com.claim.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.claim.entity.Student;
import com.claim.repository.StudentRepository;
import com.claim.service.StudentService;

@Controller
public class StudentController {
	 
	@Autowired
	private StudentService studentService;
	 
	@RequestMapping("/")
	public String welcome(Model model) {
		model.addAttribute("message", "This is the welcome Page");
		return "index";
	}
	
 @RequestMapping(value="/submitStudentDetails", method= RequestMethod.POST)
 private String submitStudent(Model model, @ModelAttribute("student") Student student){
	this.studentService.addStudent(student);
	model.addAttribute("welcome", "Welcome Student");
	 return "home";
 }
 
 @RequestMapping(value="/findStudentById", 
		 method= RequestMethod.GET
		 )
 @ResponseBody
 private ResponseEntity<Student> findStudent( String email){
	Student student = this.studentService.findStudent(email);
	return new ResponseEntity<>(student,HttpStatus.OK);
 }
 

}