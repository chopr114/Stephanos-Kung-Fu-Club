package DAOLayers;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;

//import java.util.ArrayList;
//import java.util.List;

//import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VOLayers.StudentVO;
import javax.persistence.Entity;
import org.hibernate.mapping.Table;

public class StudentDAO {

	public void insert(StudentVO StuVO){
		Session session = null;
		 

		  try{
		  // This step will read hibernate.cfg.xml
                      
		//and prepare hibernate for use
		   SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		 session =sessionFactory.openSession();
		 Transaction tr=session.beginTransaction();
		  //Create new instance of Contact and set 

		//values in it by reading them from form object
		 System.out.println("Inserting Record");
		 
		 StuVO.setRank("White Belt");
		  session.save(StuVO);
		  tr.commit();
		  System.out.println("Done");
		  }catch(Exception e){
			  e.printStackTrace();
		  
		  }finally{
		  // Actual contact insertion will happen at this step
		 // session.flush();
		 // session.close();

		  }
		  
		  }
	

	public List<StudentVO> search(StudentVO StuVO)
	{
		List<StudentVO> ls=new ArrayList<StudentVO>();
		
		Session session=null;
		
		try
		{   
                        String number123 = null; 
                        // Configuration cfg=new Configuration();  
                        //cfg.configure("hibernate.cfg.xml");
                        SessionFactory sessionFactory= new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			session=sessionFactory.openSession();
                        System.out.println("inside search");
                        Query q=session.createQuery("from VOLayers.StudentVO where Student_Number = :number123");
                       	q.setParameter("number123",StuVO.getStudent_Number());
			ls=q.list();
			System.out.println("done" + ls.size());
		}
		catch (Exception e) {
			// TODO: handle exception
			
			e.printStackTrace();
		}
		finally
		{
			//session.flush();
			//session.close();
		}
		return ls;
	}
}
