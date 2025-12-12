package com.romina.controladores;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import jakarta.validation.Valid;

import com.romina.modelos.Cancion;
import com.romina.servicios.ServicioCanciones;

@Controller
@RequestMapping("/")
public class ControladorCanciones {
    
    @Autowired
    private ServicioCanciones servicioCanciones;

    @GetMapping("/")
    @ResponseBody
    public String index() {
        return "<html><body><h1>¡Bienvenido!</h1><p><a href='/canciones'>Ver canciones</a></p></body></html>";
    }
    
    @GetMapping("/health")
    @ResponseBody
    public String health() {
        return "OK - La aplicación está funcionando";
    }
    
    @GetMapping("/canciones")
    public String desplegarCanciones(Model model) {
        List<Cancion> canciones = servicioCanciones.obtenerTodasLasCanciones();
        model.addAttribute("canciones", canciones);
        return "canciones";  
    }
    
    @GetMapping("/canciones/detalle/{idCancion}")
    public String desplegarDetalleCancion(@PathVariable("idCancion") Long idCancion, Model model) {
        Cancion cancion = servicioCanciones.obtenerCancionPorId(idCancion);
        model.addAttribute("cancion", cancion);
        return "detalleCancion";  
    }
    
    @GetMapping("/canciones/formulario/agregar")
    public String formularioAgregarCancion(Model model) {
        model.addAttribute("cancion", new Cancion());
        return "agregarCancion";
    }
    
    @PostMapping("/canciones/procesa/agregar")
    public String procesarAgregarCancion(@Valid Cancion cancion, BindingResult resultado) {
        if (resultado.hasErrors()) {
            return "agregarCancion";
        }
        servicioCanciones.agregarCancion(cancion);
        return "redirect:/canciones";
    }
}