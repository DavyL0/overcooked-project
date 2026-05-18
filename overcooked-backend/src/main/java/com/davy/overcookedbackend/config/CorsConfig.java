package com.davy.overcookedbackend.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class CorsConfig {
    @Bean
    public WebMvcConfigurer corsConfigurer() {
        return new WebMvcConfigurer() {
            @Override
            public void addCorsMappings(CorsRegistry registry) {
                // Libera todos os endpoints que começam com /api/
                registry.addMapping("/api/**")
                        // Permite a origem padrão do frontend Angular
                        .allowedOrigins("http://localhost:4200")
                        // Métodos HTTP permitidos no escopo do projeto [cite: 12, 19]
                        .allowedMethods("GET", "POST", "DELETE", "OPTIONS")
                        .allowedHeaders("*")
                        .allowCredentials(true);
            }
        };
    }
}
