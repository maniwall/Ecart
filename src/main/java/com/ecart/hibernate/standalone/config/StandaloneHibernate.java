package com.ecart.hibernate.standalone.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.stereotype.Component;

import com.ecart.model.CounterModel;
import com.mchange.v2.c3p0.DriverManagerDataSource;

@Component
public class StandaloneHibernate {

	@Bean
	public static Session getSession() {

		System.out.println("Opening SESSION...");

		SessionFactory sessionFactory = getStandaloneSessionFactory();
		return sessionFactory.openSession();
	}

	@Bean
	private static SessionFactory getStandaloneSessionFactory() {

		Properties propertiesHibernateConfiguration = new Properties();

		propertiesHibernateConfiguration.put("hibernate.dialect", "org.hibernate.dialect.PostgreSQLDialect");
		propertiesHibernateConfiguration.put("hibernate.connection.driver_class", "org.postgresql.Driver");
		propertiesHibernateConfiguration.put("hibernate.connection.username", "postgres");
		propertiesHibernateConfiguration.put("hibernate.connection.password", "password");
		propertiesHibernateConfiguration.put("hibernate.connection.url",
				"jdbc:postgresql://postgres:5432/hibernateTutorials");
		propertiesHibernateConfiguration.put("hibernate.connection_pool_size", "1");
		propertiesHibernateConfiguration.put("hibernate.show_sql", "true");
		propertiesHibernateConfiguration.put("hibernate.hbm2ddl.auto", "update");

//		LocalSessionFactoryBean localSessionFactoryBean = new LocalSessionFactoryBean();
//		localSessionFactoryBean.setHibernateProperties(propertiesHibernateConfiguration);

//		propertiesHibernateConfiguration.put("hibernate.c3p0.min_size", "10");
//		propertiesHibernateConfiguration.put("hibernate.c3p0.max_size", "20");
//		propertiesHibernateConfiguration.put("hibernate.c3p0.time_out", "500");

		LocalSessionFactoryBuilder localSessionFactoryBuilder = new LocalSessionFactoryBuilder(getDataSource());
		localSessionFactoryBuilder.addProperties(propertiesHibernateConfiguration);

		localSessionFactoryBuilder.addAnnotatedClass(CounterModel.class);
		

		return localSessionFactoryBuilder.buildSessionFactory();
	}

	@Bean
	private static final DataSource getDataSource() {

		DriverManagerDataSource managerDataSource = new DriverManagerDataSource();

		managerDataSource.setDriverClass("org.postgresql.Driver");
		managerDataSource.setJdbcUrl("jdbc:postgresql://postgres:5432/hibernateTutorials");
		managerDataSource.setUser("postgres");
		managerDataSource.setPassword("password");

		return managerDataSource;

	}
}
