package com.romina.canciones.servicios;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.romina.canciones.modelos.Cancion;
import com.romina.canciones.repositorios.RepositorioCanciones;

@Service
public class ServicioCanciones {

    @Autowired
    private RepositorioCanciones repositorioCanciones;

    public List<Cancion> obtenerTodasLasCanciones() {
        return repositorioCanciones.findAll();
    }

    public Cancion obtenerCancionPorId(Long id) {
        Optional<Cancion> cancion = repositorioCanciones.findById(id);
        return cancion.orElse(null);
    }

    public Cancion agregarCancion(Cancion cancion) {
        return repositorioCanciones.save(cancion);
    }

    public Cancion actualizaCancion(Cancion cancion) {
        return repositorioCanciones.save(cancion);
    }

    public void eliminaCancion(Long id) {
        repositorioCanciones.deleteById(id);
    }
}
