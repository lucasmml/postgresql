package br.unisul.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import br.unisul.model.Person;

public class PersonDAO {
	
	EntityManagerFactory emf;
	
	public PersonDAO() {
		emf = Persistence.createEntityManagerFactory("persist").createEntityManager().getEntityManagerFactory();
	}
	
	public void insert(Person person) {
		EntityManager em = emf.createEntityManager();
		try {
			EntityTransaction t = em.getTransaction();
			try {
				t.begin();
				em.persist(person);
				t.commit();
			} finally {
				if (t.isActive())
					t.rollback();
			}
		} finally {
			em.close();
		}
	}
	
	public List<Person> getList() {

		EntityManager em = emf.createEntityManager();
		try {
			return em.createQuery("from "+ Person.class.getName(), Person.class).getResultList();
		}finally {
			em.close();
		}
	}
}