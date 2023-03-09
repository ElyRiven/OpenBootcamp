package com.example.demo.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;

import java.util.Collections;

/**
 * Configuración Swagger para la generación de documentación de la API REST
 *
 * HTML:http://localhost:8080/swagger-ui/
 * JSON:http://localhost:8080/v2/api-docs
 */
@Configuration
public class SwaggerConfig {
    // Docket es una clase de tipo builder (patron builder) la cual es la interfaz principal para el uso de springfox para
    // integrar Swagger
    // La anotación @Bean indica a Spring que este método creará un Bean para tenerlo disponible en el contenedor de Beans.
    @Bean
    public Docket api(){

        return  new Docket(DocumentationType.SWAGGER_2)
                .apiInfo(apiDetails())
                .select()
                .apis(RequestHandlerSelectors.any())
                .paths(PathSelectors.any())
                .build();
    }

    private ApiInfo apiDetails(){
        return new ApiInfo("Spring Boot Book API REST",
                "Library Api rest docs",
                "1.0",
                "http://www.google.com",
                new Contact("Daniel","http://www.google.com","byrdanto@gmail.com"),
                "MIT",
                "http://www.google.com",
                Collections.emptyList());
    }
}