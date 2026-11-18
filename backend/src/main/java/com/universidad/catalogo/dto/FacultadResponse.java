package com.universidad.catalogo.dto;
import java.util.List;
public record FacultadResponse(Long id, String nombre, String descripcion, String color, String logo, DecanoResponse decano, List<EscuelaResponse> escuelas) {}
