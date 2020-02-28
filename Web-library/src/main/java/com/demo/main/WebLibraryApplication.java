package com.demo.main;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

/**
 * 
 * @author Aleksandar Bajic
 * demo application Web-library
 * https://github.com/BajicAleksandar
 *
 */

@SpringBootApplication
@ComponentScan("com.demo")
@EntityScan("com.demo")
@EnableJpaRepositories("com.demo.repository")
public class WebLibraryApplication {

	public static void main(String[] args) {
		SpringApplication.run(WebLibraryApplication.class, args);
	}

}
