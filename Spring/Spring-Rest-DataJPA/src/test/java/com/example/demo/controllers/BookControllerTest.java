package com.example.demo.controllers;

import com.example.demo.entities.Book;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.boot.test.web.server.LocalServerPort;
import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.http.*;

import java.util.Arrays;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

//Con la anotación SpringBootTest se puede incluir a Spring en los Test, en este caso es necesario para probar los métodos
//de los controllers.
@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
class BookControllerTest {

    /*Estos objetos se construyen para la prueba de los métodos de los Controllers, debido a que los controllers gestionan
      peticiones HTTP y archivos JSON.
    * */
    private TestRestTemplate testRestTemplate;
    @Autowired
    private RestTemplateBuilder restTemplateBuilder;

    /*Este método se ejecuta antes de cualquier @Test y se utiliza para preparar los recursos que se necesitan para probar
    los métodos en testing.
    *La anotación @LocalServerPort sirve para inyectar el puerto http generado por Spring para hacer los test.
    */
    @LocalServerPort
    private int port;

    @BeforeEach
    void setUp() {
        restTemplateBuilder = restTemplateBuilder.rootUri("http://localhost:" + port);
        testRestTemplate = new TestRestTemplate(restTemplateBuilder);
    }
    @DisplayName("Comprobar hola mundo desde controladores Spring REST")
    @Test
    void hello() {
        ResponseEntity response =
                testRestTemplate.getForEntity("/hola",String.class);
        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertEquals(200, response.getStatusCodeValue());
        assertEquals("Hola mundo que tal vamos!!! Hasta luego!", response.getBody());
    }

    @Test
    void findAll() {
        ResponseEntity<Book[]> response =
                testRestTemplate.getForEntity("/api/books",Book[].class);
        assertEquals(HttpStatus.OK,response.getStatusCode());
        assertEquals(200,response.getStatusCodeValue());

        List<Book> books = Arrays.asList(response.getBody());
        System.out.println(books.size());
    }

    @Test
    void findById() {
        ResponseEntity<Book> response =
                testRestTemplate.getForEntity("/api/books/1",Book.class);
        assertEquals(HttpStatus.NOT_FOUND,response.getStatusCode());
    }

    @Test
    void create() {
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);
        headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));

        String json = """
                {
                    "title": "Libro creado desde Spring Test",
                    "author": "H.P. Lovecraft",
                    "pages": 200,
                    "price": 85.99,
                    "releaseDate": "1980-06-20",
                    "online": true
                }
                """;
        HttpEntity<String> request = new HttpEntity<>(json,headers);

        ResponseEntity<Book> response =
                testRestTemplate.exchange("/api/books",HttpMethod.POST,request,Book.class);

        Book result  = response.getBody();

        assertEquals(1L,result.getId());
        assertEquals("Libro creado desde Spring Test",result.getTitle());
    }
}