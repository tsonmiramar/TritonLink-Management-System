package IRepository;

import java.util.List;

import Model.Enrollment;
import Model.GradStudent;
import Model.PhDCandidate;
import Model.Probation;
import Model.Student;
import Model.StudentType;

public interface IStudentRepository {
	
	public void insertStudent(StudentType studentType);

	List<Student> getAllStudent();

	void insertProbation(List<Probation> probation);

	List<PhDCandidate> getAllPhDCandidate();

	List<GradStudent> getAllGradStudent();

	List<Student> getStudentEnrollByQuarter(String quarter, int year);

	List<Enrollment> getAllStudentFromClass(int class_id);
}
