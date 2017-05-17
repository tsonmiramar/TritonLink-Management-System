package Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import Model.Enrollment;
import Model.GradStudent;
import Model.PhDCandidate;
import Model.Probation;
import Model.QuarterName;
import Model.ResidentStatus;
import Model.Student;
import Model.StudentType;
import Service.QuarterService;
import Service.StudentService;

@Controller
@RequestMapping("/student")
public class StudentController {
	
	@Autowired
	private StudentService studentService;
	
	@Autowired
	private QuarterService quarterService;	
	
	@GetMapping("/entry")
	public String getStudentEntryPage(Model model){
		List<QuarterName> quarterNameList = quarterService.getAllQuarterName();
		List<ResidentStatus> residentStatusList = studentService.getAllResidentStatus();
		model.addAttribute("quarterNameList", quarterNameList);
		model.addAttribute("residentStatusList", residentStatusList);
		return "student_entry";
	}
	
	@GetMapping("/probation/entry")
	public String getProbationSubmission(Model model){
		List<Student> studentList = studentService.getAllStudent();
		List<QuarterName> quarterNameList = quarterService.getAllQuarterName();
		model.addAttribute("studentList", studentList);
		model.addAttribute("quarterNameList", quarterNameList);
		return "probation_entry";
	}
	
	@PostMapping("/probation/add")
	@ResponseBody
	public ResponseEntity<Void> addProbation(@RequestBody List<Probation> probation){
		try{
			this.studentService.insertProbation(probation);
			return new ResponseEntity<>(HttpStatus.OK);
		}
		catch(Exception e){
			e.printStackTrace();
			return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
	}
	
	@GetMapping("/{type}/entry")
	public String getSubStudentEntryPage(@PathVariable String type){
		return type+"_entry";
	}
	
	@GetMapping("/phd/list")
	@ResponseBody
	public ResponseEntity<List<PhDCandidate>> getAllPhDCandidateStudent(){
		try {
			List<PhDCandidate> phdStudentList = this.studentService.getAllPhDCandidate();
			return new ResponseEntity<>(phdStudentList,HttpStatus.OK);
		}
		catch (Exception e){
			e.printStackTrace();
			return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
	}
	
	@GetMapping("/grad/list")
	public ResponseEntity<List<GradStudent>> getAllGradStudent(){
		try {
			List<GradStudent> gradStudentList = this.studentService.getAllGradStudent();
			return new ResponseEntity<>(gradStudentList,HttpStatus.OK);
		}
		catch (Exception e){
			e.printStackTrace();
			return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
	}
	
	@GetMapping("/list")
	public ResponseEntity<List<Student>> getAllStudent(){
		try {
			List<Student> studentList = this.studentService.getAllStudent();
			return new ResponseEntity<>(studentList,HttpStatus.OK);
		}
		catch (Exception e){
			e.printStackTrace();
			return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
	}
	
	@GetMapping("/class/{class_id}")
	@ResponseBody
	public ResponseEntity<List<Enrollment>> getAllStudentFromClass(@PathVariable int class_id){
		try {
			List<Enrollment> enrollmentList = studentService.getAllStudentFromClass(class_id);
			return new ResponseEntity<>(enrollmentList,HttpStatus.OK);
		}
		catch (Exception e){
			e.printStackTrace();
			return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
	}
	
	@PostMapping("/add")
	@ResponseBody
	public ResponseEntity<Void> addStudent(@RequestBody StudentType studentType){
		try{
			this.studentService.insertStudent(studentType);
			return new ResponseEntity<>(HttpStatus.OK);
		}
		catch(Exception e){
			e.printStackTrace();
			return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
	}	
}
