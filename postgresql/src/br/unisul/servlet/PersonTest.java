package br.unisul.servlet;

import br.unisul.DAO.PersonDAO;
import br.unisul.model.Person;
import br.unisul.model.Phone;

public class PersonTest {

	public static void main(String[] args) {
		save();
	}
	
	private static void save(){
		long start = System.currentTimeMillis();  
		/* Aqui vai o c�digo cuja execu��o voc� que cronometrar */  

		for (int i = 0; i < 3; i++) {
		
		Phone phone = new Phone("021-3222.6598", "021-9145.9966");
		
		Person person = new Person();
		person.addPhone(phone);
//		person.setFirstName("Jo�o Luiz");
		person.setFirstName("Jo�o Luiz" +i);
		person.setLastName("de Alvares" + i);
		person.setAge(27);
		PersonDAO personDAO = new PersonDAO();
		
		personDAO.insert(person);
		
		}
		long delay = System.currentTimeMillis() - start;  
		System.out.println("Demorou " + delay + " milissegundos");  
	}
}