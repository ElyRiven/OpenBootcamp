

## JWT

https://jwt.io/introduction

Es un estándar abierto que permite transmitir información segura entre dos partes:

JSON Web Token

## Funcionamiento Session

1. Cliente envía una petición a un servidor (/api/login).
2. Servidor valida username y password enviados:
   i. Si son válidos, genera un token JWT utilizando una secret key y se almacena el usuario en Session.
   ii. Si no son válidos, devolverá una respuesta 401 unauthorized.
3. Se genera una cookie en el Cliente
4. En próximas peticiones se comprueba que el cliente está en Session.

Desventajas:

* La información de la session se almacena en el servidor, lo cual consume recursos.

## Funcionamiento JWT

1. Cliente envía una petición a un servidor (/api/login).
2. Servidor valida username y password enviados:
   i. Si son válidos, genera un token JWT utilizando una secret key.
   ii. Si no son válidos, devolverá una respuesta 401 unauthorized.
3. Servidor devuelve el token JWT generado al Cliente.
4. Cliente envía peticiones a los endpoints REST del servidor utilizando el token JWT en las cabeceras de las peticiones.
5. Servidor valida el token JWT en cada petición y si es correcto permite el acceso a los datos.

Ventajas:

* El token se guarda en el Cliente por lo que se consume menos recursos en el servidor. Esto permite mayor escalabilidad.

Desventajas:

* El token está en el navegador, no podríamos invalidarlo antes de la fecha de expiración asignada cuando se creó.
  * Lo que se realiza es dar la opción de logout, lo cuál simplemente borra el token.

## Estructura del token JWT

3 partes separadas por un punto (.) y codificadas en base 64 cada una:

1. Header

'''json
{
    "alg": "HS512",
    "typ": "JWT",
}
'''

2. Payload (información, datos del usuario NO sensibles)

'''json
{
    "name": "Joh Doe",
    "admin": true,
}
'''

3. Signatura

'''
   HMACKSHA256{
    base64UrlEncode(header) + "." + base64UrlEncode(payload), secret
   }
'''

El User-Agent envía el token JWT en las cabeceras:

'''
Authorization: Bearer <token>
'''

## Configuración Spring

Crear proyecto Spring Boot con:

* Spring Security
* Spring Web
* Spring boot DevTools
* Spring Data JPA
* PostgreSQL
* Dependencia JWT (se añade manualmente en pom.xml)

'''
<!-- https://mvnrepository.com/artifact/io.jsonwebtoken/jjwt -->
<dependency>
    <groupId>io.jsonwebtoken</groupId>
    <artifactId>jjwt</artifactId>
    <version>0.9.1</version>
</dependency>
'''