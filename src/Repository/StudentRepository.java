package Repository;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import IRepository.IStudentRepository;
import Model.Course;
import Model.CourseClass;
import Model.CourseSubject;
import Model.CourseUnitNumber;
import Model.DEPARTMENT;
import Model.Enrollment;
import Model.GradStudent;
import Model.PhDCandidate;
import Model.Probation;
import Model.Quarter;
import Model.QuarterGPA_DAO;
import Model.QuarterName;
import Model.ResidentStatus;
import Model.Section;
import Model.Student;
import Model.StudentDegree;
import Model.StudentType;

@Repository
public class StudentRepository extends BaseRepository implements IStudentRepository{
	
	@Override
	public void insertStudent(StudentType studentType) {
		Session session = sessionFactory.getCurrentSession();
		
		if ( studentType.getUnderGrad() != null){
			if (!studentType.getUnderGrad().getDegreeList().isEmpty()){
				((List<StudentDegree>)studentType.getUnderGrad().getDegreeList()).get(0).setStudent(studentType.getUnderGrad());
			}
			session.save(studentType.getUnderGrad());
		}
		else if ( studentType.getMaster() != null){
			if (!studentType.getMaster().getDegreeList().isEmpty()){
				((List<StudentDegree>)studentType.getMaster().getDegreeList()).get(0).setStudent(studentType.getMaster());
			}
			session.save(studentType.getMaster());
		}
		else if ( studentType.getBsmsMaster() != null){
			if (!studentType.getBsmsMaster().getDegreeList().isEmpty()){
				((List<StudentDegree>)studentType.getBsmsMaster().getDegreeList()).get(0).setStudent(studentType.getUnderGrad());
			}
			session.save(studentType.getBsmsMaster());
		}
		else if ( studentType.getPhdCandidate() != null){
			if (!studentType.getPhdCandidate().getDegreeList().isEmpty()){
				((List<StudentDegree>)studentType.getPhdCandidate().getDegreeList()).get(0).setStudent(studentType.getUnderGrad());
			}
			session.save(studentType.getPhdCandidate());
		}
		else if ( studentType.getPhdPreCandidate() != null){
			if (!studentType.getPhdPreCandidate().getDegreeList().isEmpty()){
				((List<StudentDegree>)studentType.getPhdPreCandidate().getDegreeList()).get(0).setStudent(studentType.getUnderGrad());
			}
			session.save(studentType.getPhdPreCandidate());
		}
	}

	@Override
	public List<Student> getAllStudent() {
		Session session = sessionFactory.getCurrentSession();
		List<Student> studentList = new ArrayList<Student>();
		
		@SuppressWarnings("unchecked")
		List<Object[]> rset = session.createNativeQuery("select s.id,s.firstname,s.lastname,s.middlename, s.ssn from STUDENT s")
										   .getResultList();
		for ( Object[] obj : rset){
			Student student = new Student();
			student.setId((Integer)obj[0]);
			student.setFirstname((String)obj[1]);
			student.setLastname((String)obj[2]);
			student.setMiddlename((String)obj[3]);
			student.setSsn((Integer)obj[4]);
			
			studentList.add(student);
		}
		return studentList;
	}

	@Override
	public void insertProbation(List<Probation> probation) {
		Session session = sessionFactory.getCurrentSession();
		for ( Probation probationEntry : probation){
			session.save(probationEntry);
		}
	}

	@Override
	public List<PhDCandidate> getAllPhDCandidate() {
		Session session = sessionFactory.getCurrentSession();
		
		@SuppressWarnings("unchecked")
		List<Object[]> rset = session.createNativeQuery("select s.id, s.firstname, s.lastname, s.middlename, d.id as dept_id, d.name as dept_name from PHD_CANDIDATE p "
													  + "join STUDENT s on p.id = s.id "
													  + "join GRAD g on p.id = g.id "
													  + "join DEPARTMENT d on g.dept_id = d.id; ").getResultList();
		
		List<PhDCandidate> studentList = new ArrayList<PhDCandidate>();
		
		for ( Object[] obj : rset){
			PhDCandidate student = new PhDCandidate();
			student.setId((Integer)obj[0]);
			student.setFirstname((String)obj[1]);
			student.setLastname((String)obj[2]);
			student.setMiddlename((String) obj[3]);
			student.setDepartment(new DEPARTMENT());
			student.getDepartment().setId((Integer) obj[4]);
			student.getDepartment().setName((String) obj[5]);
			
			studentList.add(student);
		}
		return studentList;
	}

	@Override
	public List<GradStudent> getAllGradStudent() {
		Session session = sessionFactory.getCurrentSession();
		
		@SuppressWarnings("unchecked")
		List<Object[]> rset = session.createNativeQuery("select s.id, s.firstname, s.lastname, s.middlename, d.id as dept_id, d.name as dept_name from GRAD g "
													   +"join STUDENT s on g.id = s.id "
													   +"join DEPARTMENT d on g.dept_id = d.id").getResultList();
		
		List<GradStudent> studentList = new ArrayList<GradStudent>();
		
		for ( Object[] obj : rset){
			GradStudent student = new GradStudent();
			student.setId((Integer)obj[0]);
			student.setFirstname((String)obj[1]);
			student.setLastname((String)obj[2]);
			student.setMiddlename((String) obj[3]);
			student.setDepartment(new DEPARTMENT());
			student.getDepartment().setId((Integer) obj[4]);
			student.getDepartment().setName((String) obj[5]);
			
			studentList.add(student);
		}
		return studentList;
	}

	@Override
	public List<Student> getStudentEnrollByQuarter(String quarter, int year) {
		Session session = sessionFactory.getCurrentSession();
		
		@SuppressWarnings("unchecked")
		List<Object[]> rset = session.createNativeQuery("select s.id,s.firstname,s.lastname,s.middlename from STUDENT s "
								 +"join ENROLLMENT e on s.id = e.student_id "
								 +"join SECTION se on se.id = e.section_id "
								 +"join CLASS c on se.class_id = c.id "
								 +"join QUARTER q on q.id = c.quarter_id "
								 +"join QUARTER_NAME qn on q.name_id = qn.id "
								 +"where qn.name=:quarter and q.year=:year")
				.setParameter("quarter", quarter)
				.setParameter("year", year)
				.getResultList();
		
		List<Student> studentList = new ArrayList<Student>();
		for ( Object[] obj : rset ){
			Student student = new Student();
			student.setId((Integer)obj[0]);
			student.setFirstname((String)obj[1]);
			student.setLastname((String)obj[2]);
			student.setMiddlename((String)obj[2]);
			studentList.add(student);
		}
		return studentList;
	}

	@Override
	public List<Enrollment> getAllStudentFromClass(int class_id) {
		Session session = sessionFactory.getCurrentSession();
		
		@SuppressWarnings("unchecked")
		List<Object[]> rset = session.createNativeQuery(
				 "with class_title as "
				+"( select c.title from CLASS c where c.id = :class_id ) "
				+"select s.pid, s.firstname, s.lastname, s.middlename, s.ssn, rs.type, e.unit, e.letter_option, e.su_option, qn.name as quarter, q.year from ENROLLMENT e "
				+"join STUDENT s on e.student_id = s.id "
				+"join RESIDENT_STATUS rs on s.resident_status = rs.id "
				+"join SECTION sc on e.section_id = sc.id "
				+"join CLASS c on sc.class_id = c.id "
				+"join QUARTER q on c.quarter_id = q.id "
				+"join QUARTER_NAME qn on q.name_id = qn.id "
				+"join class_title ct on c.title like ct.title "
				)
		.setParameter("class_id", class_id)
		.getResultList();
		
		List<Enrollment> enrollmentList = new ArrayList<Enrollment>();
		
		for ( Object[] obj : rset ){
			Enrollment enrollment = new Enrollment();
			
			enrollment.setStudent(new Student());
			enrollment.getStudent().setPid((Integer)obj[0]);
			enrollment.getStudent().setFirstname((String)obj[1]);
			enrollment.getStudent().setLastname((String)obj[2]);
			enrollment.getStudent().setMiddlename((String)obj[3]);
			enrollment.getStudent().setSsn((Integer)obj[4]);
			enrollment.getStudent().setResidentStatus(new ResidentStatus());
			enrollment.getStudent().getResidentStatus().setType((String)obj[5]);
			
			enrollment.setUnitTaken((Integer)obj[6]);
			enrollment.setLetter_option((Boolean)obj[7]);
			enrollment.setSu_option((Boolean)obj[8]);
			enrollment.setSection(new Section());
			enrollment.getSection().setSectionClass(new CourseClass());
			enrollment.getSection().getSectionClass().setQuarter(new Quarter());
			enrollment.getSection().getSectionClass().getQuarter().setQuarterName(new QuarterName());
			enrollment.getSection().getSectionClass().getQuarter().getQuarterName().setName((String)obj[9]);
			enrollment.getSection().getSectionClass().getQuarter().setYear((Integer)obj[10]);
			enrollmentList.add(enrollment);
		}
		return enrollmentList;
	}
	
	@Override
	public List<Enrollment> getAllClassWithQuarterGradeByStudent(int student_id) {
		Session session = sessionFactory.getCurrentSession();
		
		@SuppressWarnings("unchecked")
		List<Object[]> rset = session.createNativeQuery(
				 "select cu.symbol, cs.currNum, e.grade, e.unit, qn.name, q.year from ENROLLMENT e "
				+"join SECTION s on s.id = e.section_id "	
				+"join CLASS c on c.id = s.class_id "
				+"join COURSE cs on cs.id = c.course_id "
				+"join COURSE_SUBJECT cu on cu.subject_id = cs.subject_id "
				+"join QUARTER q on q.id = c.quarter_id "
				+"join QUARTER_NAME qn on qn.id = q.name_id "
				+"where e.grade is not null and e.letter_option = 1 "
				+"and e.student_id = :student_id "
				+"order by q.year asc"
		).setParameter("student_id", student_id)
		.getResultList();
		
		List<Enrollment> enrollmentList = new ArrayList<Enrollment>();
		
		for ( Object[] obj : rset){
			Enrollment enrollment = new Enrollment();
			enrollment.setSection(new Section());
			enrollment.getSection().setSectionClass(new CourseClass());
			enrollment.getSection().getSectionClass().setCourse(new Course());
			enrollment.getSection().getSectionClass().getCourse().setCourseSubject(new CourseSubject());
			enrollment.getSection().getSectionClass().getCourse().getCourseSubject().setSymbol((String)obj[0]);
			enrollment.getSection().getSectionClass().getCourse().setCourseUnitNumber(new CourseUnitNumber());
			enrollment.getSection().getSectionClass().getCourse().getCourseUnitNumber().setCurrNum((String)obj[1]);
			enrollment.setGrade((String)obj[2]);
			enrollment.setUnitTaken((Integer)obj[3]);
			enrollment.getSection().getSectionClass().setQuarter(new Quarter());
			enrollment.getSection().getSectionClass().getQuarter().setQuarterName(new QuarterName());
			enrollment.getSection().getSectionClass().getQuarter().getQuarterName().setName((String)obj[4]);
			enrollment.getSection().getSectionClass().getQuarter().setYear((Integer)obj[5]);
			
			enrollmentList.add(enrollment);
		};
		return enrollmentList;
	}

	@Override
	public List<QuarterGPA_DAO> getQuarterGPAbyStudent(int student_id){
		Session session = sessionFactory.getCurrentSession();
		
		@SuppressWarnings("unchecked")
		List<Object[]> rset = session.createNativeQuery(
				 "select sum(gc.number_grade*e.unit)/sum(e.unit) as GPA, qn.name, q.year from ENROLLMENT e "
				+"join GRADE_CONVERSION gc on e.grade = gc.letter_grade "
				+"join SECTION s on s.id = e.section_id "	
				+"join CLASS c on c.id = s.class_id "
				+"join COURSE cs on cs.id = c.course_id "
				+"join COURSE_SUBJECT cu on cu.subject_id = cs.subject_id "
				+"join QUARTER q on q.id = c.quarter_id "
				+"join QUARTER_NAME qn on qn.id = q.name_id "
				+"where e.grade is not null and e.grade != 'IN' "
				+"and e.letter_option = 1 "
				+"and e.student_id = :student_id "
				+"group by e.student_id, qn.name, q.year "
				+"order by qn.name,q.year asc" 
		).setParameter("student_id", student_id)
		.getResultList();
		
		List<QuarterGPA_DAO> quarterGPAList = new ArrayList<QuarterGPA_DAO>();
		
		for ( Object[] obj : rset ){
			QuarterGPA_DAO quarterGPA = new QuarterGPA_DAO();
			quarterGPA.setGpa((BigDecimal)obj[0]);
			quarterGPA.setQuarter(new Quarter());
			quarterGPA.getQuarter().setQuarterName(new QuarterName());
			quarterGPA.getQuarter().getQuarterName().setName((String)obj[1]);
			quarterGPA.getQuarter().setYear((Integer)obj[2]);
			
			quarterGPAList.add(quarterGPA);
		}
		return quarterGPAList;
	}
	
	@Override
	public List<BigDecimal> getCumulativeGPAByStudent(int student_id){
		Session session = sessionFactory.getCurrentSession();
		
		@SuppressWarnings("unchecked")
		List<Object> rset = session.createNativeQuery(
				 "select sum(gc.number_grade*e.unit)/sum(e.unit) as Cumulative_GPA from ENROLLMENT e "
				+"join GRADE_CONVERSION gc on e.grade = gc.letter_grade "
				+"join SECTION s on s.id = e.section_id "	
				+"join CLASS c on c.id = s.class_id "
				+"join COURSE cs on cs.id = c.course_id "
				+"join COURSE_SUBJECT cu on cu.subject_id = cs.subject_id "
				+"join QUARTER q on q.id = c.quarter_id "
				+"join QUARTER_NAME qn on qn.id = q.name_id "
				+"where e.grade is not null and e.grade != 'IN' and e.letter_option = 1 "
				+"and e.student_id = :student_id "
				+"group by e.student_id"
		)
		.setParameter("student_id", student_id)
		.getResultList();
		
		List<BigDecimal> cumulativeGPAList = new ArrayList<BigDecimal>();
		
		for ( Object obj : rset) {
			BigDecimal cumulativeGPA = (BigDecimal) obj;
			cumulativeGPAList.add(cumulativeGPA);
		}
		return cumulativeGPAList;	 
	}

	@Override
	public List<Student> getMasterStudentEnrollByQuarter(String quarter, int year) {
		Session session = sessionFactory.getCurrentSession();
		
		@SuppressWarnings("unchecked")
		List<Object[]> rset = session.createNativeQuery(
				 "select s.id,s.firstname,s.lastname,s.middlename from STUDENT s " 
				+"join MASTER m on s.id = m.id "
				+"and exists ( " 
				+"select e.student_id from ENROLLMENT e " 
				+"join SECTION st on e.section_id = st.id "
				+"join CLASS c on st.class_id = c.id "
				+"join QUARTER q on c.quarter_id = q.id "
				+"join QUARTER_NAME qn on q.name_id = qn.id " 
				+"where qn.name = :quarter and q.year = :year and m.id = e.student_id )")
				.setParameter("quarter", quarter)
				.setParameter("year", year)
				.getResultList();
		
		List<Student> studentList = new ArrayList<Student>();
		for ( Object[] obj : rset ){
			Student student = new Student();
			student.setId((Integer)obj[0]);
			student.setFirstname((String)obj[1]);
			student.setLastname((String)obj[2]);
			student.setMiddlename((String)obj[2]);
			studentList.add(student);
		}
		return studentList;
	}
}
