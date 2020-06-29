package com.sample.demo_sample;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

//@SpringBootApplication

@ServletComponentScan
@SpringBootApplication(scanBasePackages = "com.sample.demo_sample")
@EnableJpaRepositories("com.sample.demo_sample.persistence.repo")
@EntityScan("com.sample.demo_sample.persistence.model")
public class DemoSampleApplication {

	public static void main(String[] args) {
		SpringApplication.run(DemoSampleApplication.class, args);
	}

}
