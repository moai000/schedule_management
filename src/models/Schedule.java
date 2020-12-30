package models;

import java.io.Serializable;
import java.lang.String;
import javax.persistence.*;

/**
 * Entity implementation class for Entity: Schedule
 *
 */
@Entity
@Table(name="schedule")

@IdClass(SchedulePK.class)
public class Schedule implements Serializable {

	   
	@Id
	private int id;   
	@Id
	private int year;   
	@Id
	private int day;   
	@Id
	private int member;   
	@Id
	private int month;
	private int time_to;
	private int time_from;
	private String memo;
	private int all_day_flg;
	private static final long serialVersionUID = 1L;

	public Schedule() {
		super();
	}   
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
	public int getTime_to() {
		return this.time_to;
	}

	public void setTime_to(int time_to) {
		this.time_to = time_to;
	}   
	public int getTime_from() {
		return this.time_from;
	}

	public void setTime_from(int time_from) {
		this.time_from = time_from;
	}   
	public String getMemo() {
		return this.memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}   
	public int getAll_day_flg() {
		return this.all_day_flg;
	}

	public void setAll_day_flg(int all_day_flg) {
		this.all_day_flg = all_day_flg;
	}
   
}
