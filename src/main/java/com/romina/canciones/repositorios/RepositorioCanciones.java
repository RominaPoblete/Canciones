package com.romina.canciones.repositorios;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.romina.canciones.modelos.Cancion;

@Repository
public interface RepositorioCanciones extends JpaRepository<Cancion, Long> {

    List<Cancion> findAll();
}
