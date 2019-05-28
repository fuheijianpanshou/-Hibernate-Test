package test;

import org.hibernate.Session;
import org.hibernate.Transaction;

import cn.edu.ch4.db.HibernateSessionFactory;
import cn.edu.ch4.model.Xsb;

public class TestXsb {
	public static void main(String[] args) {
		Xsb xsb = new Xsb();
		xsb.setXh("123");
		xsb.setXm("Dream");
		xsb.setZyId(1);
		Session session = HibernateSessionFactory.getSession();
		Transaction bs = session.beginTransaction();
		session.save(xsb);
		bs.commit();
		HibernateSessionFactory.closeSession();
		//Transaction bs = session.beginTransaction();
	}

}
