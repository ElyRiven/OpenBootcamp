package com.example.Springsecurity;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.configuration.EnableGlobalAuthentication;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.firewall.HttpFirewall;
import org.springframework.security.web.firewall.StrictHttpFirewall;

/* Anotaciones importantes para configurar la seguridad web de Spring
* */
@Configuration
@EnableWebSecurity
@EnableGlobalAuthentication
public class WebSecurityConfig{

    /**
     * Configuración de seguridad para URL's
     */
    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http.authorizeRequests()

                // antMatchers permite configurar las URL's como accesibles o mediante autenticación
                .antMatchers("/hola").permitAll()
                .antMatchers("/bootstrap").hasRole("ADMIN")
                .anyRequest()
                .authenticated()
                .and().formLogin()
                .and()
                .httpBasic();
        return http.build();
    }

    /**
     * Configuración de Usuarios para la autenticación.
     * NOTA: el método .withDefaultPasswordEncoder no se debe utilizar en producción. Se debe utilizar un método
     * de codificación más seguro, este sirve únicamente para pruebas o educación. Tener en cuenta que estas
     * credenciales se guardan en memoria RAM, no en una BBDD
     */
    @Bean
    public UserDetailsService userDetailsService() {
        UserDetails user = User.withDefaultPasswordEncoder()
                .username("user")
                .password("password")
                .roles("USER")
                .build();

        UserDetails admin = User.withDefaultPasswordEncoder()
                .username("admin")
                .password("password")
                .roles("ADMIN", "USER")
                .build();
        return new InMemoryUserDetailsManager(user, admin);
    }

    /**
     * Configuración de Firewall de Spring
     * Es recomendable dejarlo por defecto, pero si se requiere la llamada de URL's que contengan caracteres especiales,
     * se lo puede configurar de esta forma, con los métoddos .setAllow...
     */
    @Bean
    public HttpFirewall looseHttpFirewall(){
        StrictHttpFirewall firewall = new StrictHttpFirewall();

        firewall.setAllowSemicolon(true);
        firewall.setAllowBackSlash(true);
        firewall.setAllowUrlEncodedSlash(true);

        return firewall;
    }
}