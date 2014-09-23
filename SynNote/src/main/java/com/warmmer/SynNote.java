package com.warmmer;

public class SynNote {
	
	private JavaBean javaBean;

	public JavaBean getJavaBean() {
		return javaBean;
	}

	public void setJavaBean(JavaBean javaBean) {
		this.javaBean = javaBean;
	}

	public void p(){
		System.out.println("this is test! "+javaBean.a);
	}
}
