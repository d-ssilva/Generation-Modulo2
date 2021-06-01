package com.generation.atvlojadegames.atvlojadegames.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.sun.istack.NotNull;

@Entity
@Table(name = "tb_categoria")
public class Categoria {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY )
	private long id;
	
	@NotNull
	@Size(min = 2, max = 50)
	private String genero;
	
	@OneToMany(mappedBy = "categoria_id", cascade = CascadeType.ALL)
	@JsonIgnoreProperties("categoria_id")
	private List<Produto> produto;
	
	}
