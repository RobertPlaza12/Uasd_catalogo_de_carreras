package com.universidad.catalogo.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OrderBy;
import jakarta.persistence.Table;

import java.util.LinkedHashSet;
import java.util.Set;

@Entity
@Table(name = "facultades")
public class Facultad {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "nombre", nullable = false, length = 150)
    private String nombre;

    @Column(name = "descripcion", columnDefinition = "TEXT")
    private String descripcion;

    @Column(name = "color", nullable = false, length = 7)
    private String color;

    @Column(name = "logo", length = 255)
    private String logo;

    @Column(name = "decano_nombre", length = 150)
    private String decanoNombre;

    @Column(name = "decano_foto", length = 255)
    private String decanoFoto;

    @OneToMany(mappedBy = "facultad", fetch = FetchType.LAZY)
    @OrderBy("id ASC")
    private Set<Escuela> escuelas = new LinkedHashSet<>();

    public Facultad() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public String getDecanoNombre() {
        return decanoNombre;
    }

    public void setDecanoNombre(String decanoNombre) {
        this.decanoNombre = decanoNombre;
    }

    public String getDecanoFoto() {
        return decanoFoto;
    }

    public void setDecanoFoto(String decanoFoto) {
        this.decanoFoto = decanoFoto;
    }

    public Set<Escuela> getEscuelas() {
        return escuelas;
    }

    public void setEscuelas(Set<Escuela> escuelas) {
        this.escuelas = escuelas;
    }
}
