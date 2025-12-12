package com.romina.canciones.modelos;

import java.util.Date;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;

@Entity
@Table(name = "artistas")
public class Artista {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @NotBlank(message = "El nombre es obligatorio")
    @Size(min = 2, max = 100, message = "El nombre debe tener entre 2 y 100 caracteres")
    private String nombre;
    
    @NotBlank(message = "El apellido es obligatorio")
    @Size(min = 2, max = 100, message = "El apellido debe tener entre 2 y 100 caracteres")
    private String apellido;
    
    @NotBlank(message = "La biografía es obligatoria")
    @Size(min = 10, max = 1000, message = "La biografía debe tener entre 10 y 1000 caracteres")
    @Column(columnDefinition = "TEXT")
    private String biografia;
    
    @Column(updatable = false)
    private Date fechaCreacion;
    
    private Date fechaActualizacion;
    
    @OneToMany(mappedBy = "artista", fetch = FetchType.LAZY)
    private List<Cancion> canciones;
    
    // Constructor vacío
    public Artista() {
    }
    
    // Getters y Setters
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
    
    public String getApellido() {
        return apellido;
    }
    
    public void setApellido(String apellido) {
        this.apellido = apellido;
    }
    
    public String getBiografia() {
        return biografia;
    }
    
    public void setBiografia(String biografia) {
        this.biografia = biografia;
    }
    
    public Date getFechaCreacion() {
        return fechaCreacion;
    }
    
    public void setFechaCreacion(Date fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }
    
    public Date getFechaActualizacion() {
        return fechaActualizacion;
    }
    
    public void setFechaActualizacion(Date fechaActualizacion) {
        this.fechaActualizacion = fechaActualizacion;
    }
    
    public List<Cancion> getCanciones() {
        return canciones;
    }
    
    public void setCanciones(List<Cancion> canciones) {
        this.canciones = canciones;
    }
    
    @PrePersist
    protected void onCreate() {
        this.fechaCreacion = new Date();
    }
    
    @PreUpdate
    protected void onUpdate() {
        this.fechaActualizacion = new Date();
    }
}