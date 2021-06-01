package com.generation.atvlojadegames.atvlojadegames.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import com.generation.atvlojadegames.atvlojadegames.model.Categoria;

public interface CategoriaRepository extends JpaRepository<Categoria, Long>{
	public List<Categoria> findAllByGeneroContainingIgnoreCase(String Genero);
}
