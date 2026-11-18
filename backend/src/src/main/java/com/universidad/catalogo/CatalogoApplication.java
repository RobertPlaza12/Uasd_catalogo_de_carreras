package com.universidad.catalogo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class CatalogoApplication {
    public static void main(String[] args) {
        //SpringApplication.run(CatalogoApplication.class, args);

        try {
            SpringApplication.run(CatalogoApplication.class, args);
        } catch (Throwable ex) {
            ex.printStackTrace();
        }
    }
}
