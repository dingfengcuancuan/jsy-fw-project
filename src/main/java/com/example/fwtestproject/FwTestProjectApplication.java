package com.example.fwtestproject;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


import org.springframework.cloud.client.discovery.EnableDiscoveryClient;



@EnableDiscoveryClient
@SpringBootApplication
public class FwTestProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(FwTestProjectApplication.class, args);
	}
}
