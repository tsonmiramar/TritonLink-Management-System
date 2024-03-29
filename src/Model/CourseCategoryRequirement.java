package Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="COURSE_CATEGORY_REQUIREMENT")
public class CourseCategoryRequirement {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int	id;
	
	@ManyToOne
	@JoinColumn(name="type_id")
	private CourseType type;
	
	@Column(name="min_gpa")
	private Double minGPA;
	
	@Column(name="min_unit")
	private int minUnit;

	public CourseCategoryRequirement() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public CourseType getType() {
		return type;
	}

	public void setType(CourseType type) {
		this.type = type;
	}

	public Double getMinGPA() {
		return minGPA;
	}

	public void setMinGPA(Double minGPA) {
		this.minGPA = minGPA;
	}

	public int getMinUnit() {
		return minUnit;
	}

	public void setMinUnit(int minUnit) {
		this.minUnit = minUnit;
	}
}
