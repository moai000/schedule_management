package models;

import java.io.Serializable;

/**
 * ID class for entity: Schedule
 *
 */ 
public class SchedulePK  implements Serializable {   
   
	         
	private int id;         
	private int year;         
	private int day;         
	private int member;         
	private int month;
	private static final long serialVersionUID = 1L;

	public SchedulePK() {}

	

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}
	

	public int getYear() {
		return this.year;
	}

	public void setYear(int year) {
		this.year = year;
	}
	

	public int getDay() {
		return this.day;
	}

	public void setDay(int day) {
		this.day = day;
	}
	

	public int getMember() {
		return this.member;
	}

	public void setMember(int member) {
		this.member = member;
	}
	

	public int getMonth() {
		return this.month;
	}

	public void setMonth(int month) {
		this.month = month;
	}
	
   
	/*
	 * @see java.lang.Object#equals(Object)
	 */	
	public boolean equals(Object o) {
		if (o == this) {
			return true;
		}
		if (!(o instanceof SchedulePK)) {
			return false;
		}
		SchedulePK other = (SchedulePK) o;
		return true
			&& getId() == other.getId()
			&& getYear() == other.getYear()
			&& getDay() == other.getDay()
			&& getMember() == other.getMember()
			&& getMonth() == other.getMonth();
	}
	
	/*	 
	 * @see java.lang.Object#hashCode()
	 */	
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + getId();
		result = prime * result + getYear();
		result = prime * result + getDay();
		result = prime * result + getMember();
		result = prime * result + getMonth();
		return result;
	}
   
   
}
