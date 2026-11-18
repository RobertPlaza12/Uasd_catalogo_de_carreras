package com.universidad.catalogo.controller;

import com.universidad.catalogo.dto.FacultadResponse;
import com.universidad.catalogo.service.FacultadService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping("/api/facultades")
public class FacultadController {
    private final FacultadService facultadService;
    public FacultadController(FacultadService facultadService) {
        this.facultadService = facultadService;
    }

    @GetMapping
    public ResponseEntity<List<FacultadResponse>> obtenerFacultades() {
        return ResponseEntity.ok(facultadService.obtenerTodas());
    }

    @GetMapping("/{id}")
    public ResponseEntity<FacultadResponse> obtenerFacultad(@PathVariable Long id) {
        return facultadService.obtenerPorId(id).map(ResponseEntity::ok)
                .orElseGet(() -> ResponseEntity.notFound().build());
    }
}
