
## Cifrado

El cifrado es el proceso de codificar la información de su representación original (texto plano) a un texto
cifrado, de manera que solamente pueda ser descifrado utilizando una clave.

Historia del cifrado:

1. Almacenar contraseñas en texto plano
2. Almacenar contraseñas cifradas con una función hash
3. Almacenar contraseñas cifradas con una función hash + salt (una palabra aleatoria añadida a la clave)
4. Almacenar contraseñas cifradas con una función adaptativa + factor de trabajo

La seguridad se gana haciendo que la validación de contraseñas sea costosa computacionalmente.

## Algoritmos en Spring Security

* BCrypt (Es el estándar de Spring para el cifrado, o al menos es el más utilizado)
* *PBKDF2
* scrypt
* argon2

