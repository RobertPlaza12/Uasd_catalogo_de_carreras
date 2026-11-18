package com.universidad.catalogo.dto;
import java.util.List;
public record EscuelaResponse(Long id, String nombre, String descripcion, List<CarreraResponse> carreras) {}
