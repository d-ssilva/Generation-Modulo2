package br.danilo.com.example.demo.HelloWord1.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController //Inerface de API
public class HelloWorldController {
		
		@GetMapping("/hello")
		public String sayHello() 
		{
			return "Hello World!";
		}
}
