package cn.edu.ch4.model;

/**
 * Kcb entity. @author MyEclipse Persistence Tools
 */
public class Kcb extends AbstractKcb implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Kcb() {
	}

	/** minimal constructor */
	public Kcb(String kch) {
		super(kch);
	}

	/** full constructor */
	public Kcb(String kch, String kcm, Short kxxq, Integer xs, Integer xf) {
		super(kch, kcm, kxxq, xs, xf);
	}

}
