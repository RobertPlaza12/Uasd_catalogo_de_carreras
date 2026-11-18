package com.universidad.catalogo.service;

import com.universidad.catalogo.dto.*;
import com.universidad.catalogo.model.*;
import com.universidad.catalogo.repository.FacultadRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;
import java.util.Optional;

@Service
public class FacultadService {
    private final FacultadRepository facultadRepository;
    public FacultadService(FacultadRepository facultadRepository) {
        this.facultadRepository = facultadRepository;
    }

    @Transactional(readOnly = true)
    public List<FacultadResponse> obtenerTodas() {
        return facultadRepository.buscarCatalogoCompleto().stream().map(this::convertirFacultad).toList();
    }

    @Transactional(readOnly = true)
    public Optional<FacultadResponse> obtenerPorId(Long id) {
        return facultadRepository.buscarPorIdConCatalogo(id).map(this::convertirFacultad);
    }

    private FacultadResponse convertirFacultad(Facultad f) {
        DecanoResponse decano = null;
        if (f.getDecanoNombre() != null || f.getDecanoFoto() != null) {
            decano = new DecanoResponse(f.getDecanoNombre(), f.getDecanoFoto());
        }
        List<EscuelaResponse> escuelas = f.getEscuelas().stream().map(this::convertirEscuela).toList();
        return new FacultadResponse(f.getId(), f.getNombre(), f.getDescripcion(), f.getColor(), f.getLogo(), decano, escuelas);
    }

    private EscuelaResponse convertirEscuela(Escuela e) {
        List<CarreraResponse> carreras = e.getCarreras().stream()
                .map(c -> new CarreraResponse(c.getId(), c.getNombre(), c.getPensum(), c.getEnlace()))
                .toList();
        return new EscuelaResponse(e.getId(), e.getNombre(), e.getDescripcion(), carreras);
    }
}
