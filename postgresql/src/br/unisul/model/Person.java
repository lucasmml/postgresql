package br.unisul.model;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name="Person", uniqueConstraints = {
		@UniqueConstraint(columnNames = "ID"),
		@UniqueConstraint(columnNames = "firstName"),
		@UniqueConstraint(columnNames = "lastName")})

public class Person implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "ID", unique = true, nullable = false)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	private String firstName;
	private String lastName;
	private int age;

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "person")
	private Set<Phone> personPhoneNumbers = new HashSet<Phone>();

	public Person(String firstName, String lastName, int age, Set<Phone> personPhoneNumbers) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.age = age;
		this.personPhoneNumbers = personPhoneNumbers;
	}

	public Person() {
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public Set<Phone> getPersonPhoneNumbers() {
		return personPhoneNumbers;
	}

	public void setPersonPhoneNumbers(Set<Phone> personPhoneNumbers) {
		this.personPhoneNumbers = personPhoneNumbers;
	}

	public void addPhone(Phone phone) {
		phone.setPerson(this);
		this.personPhoneNumbers.add(phone);
	}
}