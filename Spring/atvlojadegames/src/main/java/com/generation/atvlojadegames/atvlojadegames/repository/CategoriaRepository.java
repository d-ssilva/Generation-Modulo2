package com.generation.atvlojadegames.atvlojadegames.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.generation.atvlojadegames.atvlojadegames.model.Categoria;

@Repository
public interface CategoriaRepository extends JpaRepository<Categoria, Long>{
	public List<Categoria> findAllByGeneroContainingIgnoreCase(String Genero);
}
