package com.example.demo.service;

import com.example.demo.entities.Book;
import org.junit.jupiter.api.Test;

import java.time.LocalDate;

import static org.junit.jupiter.api.Assertions.*;

class BookPriceCalculatorTest {
    /*La anotación Test permite ejecutar esta porción de código para realizar pruebas unitarias. Esta anotación es propia
    de la librería JUnit.
    * */
    @Test
    void calculatePriceTest() {
        // TESTING
        /* Configuración del Test o Prueba:
        * */
        Book book = new Book(1L, "El Señor de los Anillos","JRR Tolkien",5000,49.99, LocalDate.now(),true);
        BookPriceCalculator calculator = new BookPriceCalculator();

        /* Ejecución del comportamiento bajo testing
        * */
        double price = calculator.calculatePrice(book);
        System.out.println(price);

        /* Comprobaciones / Aserciones
        * */
        assertTrue(price > 0);
        assertEquals(57.980000000000004,price);
    }
}