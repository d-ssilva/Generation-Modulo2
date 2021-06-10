package com.testeInitializr.testeInitializr.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/teste")
public class testeController {
	
	@GetMapping
	public String teste()
	{
		return "<p style='color: #006400'>Consegui realizar o exercicio da plataforma!</p>";
	}
}
