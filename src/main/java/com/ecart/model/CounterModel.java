package com.ecart.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ecart_application_counter")
public class CounterModel {

	@Id
//	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "count", nullable = false, unique = true)
	private int counter;

	public int getCounter() {
		return counter;
	}

	public void setCounter(int counter) {
		this.counter = counter;
	}

	@Override
	public String toString() {
		return "CounterModel [counter=" + counter + "]";
	}

}
