package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import domain.Student;
import service.StudentService;

@Controller
@RequestMapping("/student")
public class StudentController {

	@Autowired
	private StudentService studentService;
	
	
//	@RequestMapping(path="/list" ,method= RequestMethod.GET)
	@GetMapping("/list")
	public String listStudents(Model model) {
		
//		http://localhost:8080/SpringExampleUdemy/student/list
		
		List<Student> theStudent = studentService.getStudents();
		
		model.addAttribute("student",theStudent);
		return "list-student";
		
	}
	
	@GetMapping("/showStudentForm")
	public String showStudentForm(Model theModel) {
		
		Student theStudent = new Student();
		theModel.addAttribute("student",theStudent);
		
		return "student-form";
	}
	
	@PostMapping("/saveStudent")
	public String saveStudent(@ModelAttribute("student") Student theStudent) {
		
		studentService.saveStudent(theStudent);
		
		return "redirect:/student/list";
	}
	
	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("studentId")int theId,Model theModel ) {
		
		Student theStudent = studentService.getStudent(theId);
		
		theModel.addAttribute(theStudent);
		
		return "student-form";
		
	}
	
	@GetMapping("/deleteStudent")
	public String deleteStudent(@RequestParam("studentId")int theId,Model model) {
		
		studentService.deleteStudent(theId);
		return "redirect:/student/list";
	}
}
