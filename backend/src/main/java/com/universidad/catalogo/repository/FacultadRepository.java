package com.universidad.catalogo.repository;

import com.universidad.catalogo.model.Facultad;
import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface FacultadRepository extends JpaRepository<Facultad, Long> {

    @EntityGraph(attributePaths = {"escuelas", "escuelas.carreras"})
    @Query("select distinct f from Facultad f order by f.id")
    List<Facultad> buscarCatalogoCompleto();

    @EntityGraph(attributePaths = {"escuelas", "escuelas.carreras"})
    @Query("select distinct f from Facultad f where f.id = :id")
    Optional<Facultad> buscarPorIdConCatalogo(@Param("id") Long id);
}
