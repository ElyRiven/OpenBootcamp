package com.spring.Springcifrado;

import org.junit.jupiter.api.DisplayNameGenerator;
import org.junit.jupiter.api.Test;
import org.springframework.security.crypto.argon2.Argon2PasswordEncoder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.*;
import org.springframework.security.crypto.scrypt.SCryptPasswordEncoder;

import java.util.HashMap;
import java.util.Map;

public class EncryptionTest {

    /**
     *  BCrypt genera su propio salt de 16 bits
     *
     *  El resultado de cifrar con BCrypt será un string de 60 caracteres:
     *
     *  $a versión
     *  $10 fuerza (valor que va de 4 a 31, por defecto vale 10)
     *  Los 22 siguientes caracteres son el salt generado
     */
    @Test
    void bcryptTest(){

        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        String hashedPassword = passwordEncoder.encode("admin");
        System.out.println(hashedPassword);

        boolean matches = passwordEncoder.matches("amdin", hashedPassword);
        System.out.println(matches);
    }

    @Test
    void bcryptCheckMultiplePassowrds(){
        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        for(int i = 0 ; i < 30 ; i++)
            System.out.println(passwordEncoder.encode("admin"));
    }

    @Test
    void pbkdf2() {
        Pbkdf2PasswordEncoder passwordEncoder = new Pbkdf2PasswordEncoder();
        for(int i = 0 ; i < 30 ; i++)
            System.out.println(passwordEncoder.encode("admin"));
    }
    @Test
    void argon() {
        Argon2PasswordEncoder passwordEncoder = new Argon2PasswordEncoder();
        for(int i = 0 ; i < 30 ; i++)
            System.out.println(passwordEncoder.encode("admin"));
    }

    @Test
    void scrypt() {
        SCryptPasswordEncoder passwordEncoder = new SCryptPasswordEncoder();
        for(int i = 0 ; i < 30 ; i++)
            System.out.println(passwordEncoder.encode("admin"));
    }

    @Test
    void springPasswordEncoders(){
        Map<String,PasswordEncoder> encoders = new HashMap<>();
        encoders.put("bcrypt", new BCryptPasswordEncoder());
        encoders.put("pbkdf2", new Pbkdf2PasswordEncoder());
        encoders.put("argon2", new Argon2PasswordEncoder());
        encoders.put("scrypt", new SCryptPasswordEncoder());
        // no seguros:
        encoders.put("noop", NoOpPasswordEncoder.getInstance());
        encoders.put("sha256", new StandardPasswordEncoder());

        PasswordEncoder passwordEncoder = new DelegatingPasswordEncoder("bcrypt",encoders);
        String hashedPassword = passwordEncoder.encode("admin");
        System.out.println(hashedPassword);
    }
}