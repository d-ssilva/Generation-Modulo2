package com.generation.atvlojadegames.atvlojadegames.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.generation.atvlojadegames.atvlojadegames.model.Categoria;
import com.generation.atvlojadegames.atvlojadegames.repository.CategoriaRepository;

@RestController
@RequestMapping("/categoria")
@CrossOrigin("*") // Faz com que o acesso a classe fique 'promisquo'
public class CategoriaController {
	
	// Injetando dependencias: passando controle do repositório para classe controladora
	@Autowired
	private CategoriaRepository categoriaRepository;
	
	@GetMapping
	public ResponseEntity<List<Categoria>> GetAll(){
		return ResponseEntity.ok(categoriaRepository.findAll());
	}
	
	@GetMapping("/{id}")
	public ResponseEntity<Categoria> GetById(@PathVariable long id){
		return categoriaRepository.findById(id).map(resp -> ResponseEntity.ok(resp))
				.orElse(ResponseEntity.notFound().build());
	}
	
	@GetMapping("/categoria/{categoria}")	
	public ResponseEntity<List<Categoria>> GetByGenero(@PathVariable String categoria){
		return ResponseEntity.ok(categoriaRepository.findAllByGeneroContainingIgnoreCase(categoria));
	}		
	
	@PostMapping
	public ResponseEntity<Categoria> post(@RequestBody Categoria genero){
		return ResponseEntity.status(HttpStatus.CREATED).body(categoriaRepository.save(genero));
	}
	
	@PutMapping
	public ResponseEntity<Categoria> put(@RequestBody Categoria genero){
		return ResponseEntity.status(HttpStatus.OK).body(categoriaRepository.save(genero));
	}
	
	@DeleteMapping("/{id}")
	public void delete(@PathVariable long id) {
		categoriaRepository.deleteById(id);		
	}
}
