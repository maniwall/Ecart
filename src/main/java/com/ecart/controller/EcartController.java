package com.ecart.controller;

import java.util.List;
import java.util.Map;

import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.ecart.hibernate.standalone.config.StandaloneHibernate;
import com.ecart.model.CounterModel;

@Controller
public class EcartController {

	/*
	 * @GetMapping("/home") public ModelAndView menu() { // return "home";
	 * 
	 * ModelAndView mav = new ModelAndView("home"); mav.addObject("count", "20");
	 * 
	 * return mav; }
	 */

	static Session session = StandaloneHibernate.getSession();

	@GetMapping("/home")
	public String menu(Map<String, Object> model) {

		saveCouter();

		model.put("count", getAppplicationViewCount());

		return "home";
	}

	@GetMapping("/")
	public String sample() {
		return "home";
	}

	/*
	 * public static void main(String[] args) {
	 * 
	 * System.out.println("start!!"); saveCouter(); System.out.println("end!!"); }
	 */

	private static void saveCouter() {

		session.beginTransaction();

		int currentCount = getAppplicationViewCount();

		CounterModel model = new CounterModel();
		model.setCounter(currentCount);

		session.save(model);

		session.getTransaction().commit();
	}

	private static int getAppplicationViewCount() {
		CriteriaBuilder builder = session.getCriteriaBuilder();
		CriteriaQuery<CounterModel> query = builder.createQuery(CounterModel.class);
		Root<CounterModel> root = query.from(CounterModel.class);
		query.select(root).orderBy(builder.desc(root.get("counter")));
		Query q = session.createQuery(query);
		List<CounterModel> counts = q.getResultList();
		int currentCount = 0;

		for (CounterModel obj : counts) {

			System.out.println("Result :::::::::::::: " + obj.getCounter());
			currentCount = obj.getCounter() + 1;
			break;
		}
		return currentCount;
	}

}
