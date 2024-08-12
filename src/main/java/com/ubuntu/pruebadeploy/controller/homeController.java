package com.ubuntu.pruebadeploy.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller("/prueba")
public class homeController {

    @GetMapping("/home")
    public String home(Model model) {
        model.addAttribute("message", "¡Bienvenido a la página principal!");
        return "home";
    }

    @GetMapping("/explora")
    public String explora() {
        return "explora"; // El nombre del archivo HTML sin la extensión
    }
}
