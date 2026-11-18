package com.universidad.catalogo.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class CorsConfig implements WebMvcConfigurer {

    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/api/**")
                // Cualquier puerto local (Live Server suele usar 5500, 5501, 8080...)
                // y también la página abierta directamente como archivo (origen "null").
                .allowedOriginPatterns("http://localhost:[*]", "http://127.0.0.1:[*]", "null")
                .allowedMethods("GET", "OPTIONS")
                .allowedHeaders("*")
                .maxAge(3600);
    }
}
