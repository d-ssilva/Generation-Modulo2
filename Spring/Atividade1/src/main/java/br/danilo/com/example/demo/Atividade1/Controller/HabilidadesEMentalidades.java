package br.danilo.com.example.demo.Atividade1.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController //Interface API
public class HabilidadesEMentalidades {

	@GetMapping("/habEmen")
	public String habEMent () 
	{
		return "<p style='color: #006400'>1-Comunicação<br>2-Persistência</p>";
	}
	
}
