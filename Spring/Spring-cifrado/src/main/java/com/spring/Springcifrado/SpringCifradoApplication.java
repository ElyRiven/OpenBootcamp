package com.spring.Springcifrado;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@SpringBootApplication
public class SpringCifradoApplication {

	public static void main(String[] args) {

		SpringApplication.run(SpringCifradoApplication.class,args);

//		ApplicationContext context = SpringApplication.run(SpringCifradoApplication.class, args);
//		UserRepository repository = context.getBean(UserRepository.class);
//
//		PasswordEncoder encoder = context.getBean(PasswordEncoder.class);
//
//		User user = new User(null,"Daniel", encoder.encode("BigPerrito"));
//
//		repository.save(user);
	}
}
