package test;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import cn.edu.ch4.db.HibernateSessionFactory;
import cn.edu.ch4.model.Kcb;

public class Test {
	public static void main(String[] args) {
		Kcb kcb = new Kcb();
		kcb.setKch("666");
		kcb.setKcm("JavaEE¸ß¼¶");
		Session session = HibernateSessionFactory.getSession();
		Transaction ps = session.beginTransaction();
		//session.save(kcb);
		Query query = session.createQuery("from Kcb");
		List<Kcb> list = query.list();
		for(Kcb cb:list){
			System.out.println(cb.getKcm());
			cb.setKcm("JSP");
		}
		ps.commit();
		HibernateSessionFactory.closeSession();
	}

}
