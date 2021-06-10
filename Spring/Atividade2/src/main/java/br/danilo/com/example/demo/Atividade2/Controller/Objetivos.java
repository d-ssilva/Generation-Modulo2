package br.danilo.com.example.demo.Atividade2.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController //Inerface de API
public class Objetivos {
		
	@GetMapping("/objetivos")
	public String sayObjetivos() 
	{
		return "<p style='color: #0000FF'>Compreender e Dominar o que puder sobre Back-end! ;-)</p>";
	}
		
}
