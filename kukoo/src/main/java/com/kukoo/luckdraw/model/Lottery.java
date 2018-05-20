package com.kukoo.luckdraw.model;

import java.io.Serializable;
/**
 * 奖品表
 * @author gang
 *
 */
public class Lottery implements Serializable{
	private static final long serialVersionUID = -1595371216905016135L;
	
	private String id;
	/**
	 * 奖品编号
	 */
	private Integer lno;
	/**
	 * 奖品名称
	 */
	private String name;
	/**
	 * 中奖率
	 */
	private Integer rate;
	/**
	 * 奖品图片路径
	 */
	private String imgRoute;
	/**
	 * 奖品数量
	 */
	private String num;
	
	
	public Lottery(Integer lno, String name, Integer rate) {
		super();
		this.lno = lno;
		this.name = name;
		this.rate = rate;
	}
	public Lottery(Integer lno, String name, Integer rate,String imgRoute,String num) {
		super();
		this.lno = lno;
		this.name = name;
		this.rate = rate;
		this.imgRoute = imgRoute;
		this.num = num;
	}

	public Lottery() {
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public Integer getLno() {
		return lno;
	}


	public void setLno(Integer lno) {
		this.lno = lno;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public Integer getRate() {
		return rate;
	}


	public void setRate(Integer rate) {
		this.rate = rate;
	}


	public String getImgRoute() {
		return imgRoute;
	}


	public void setImgRoute(String imgRoute) {
		this.imgRoute = imgRoute;
	}


	public String getNum() {
		return num;
	}


	public void setNum(String num) {
		this.num = num;
	}


	@Override
	public String toString() {
		return "Lottery [ lno=" + lno + ", name=" + name + ", imgRoute=" + imgRoute
				+ ", num=" + num + "]";
	}
	
}
