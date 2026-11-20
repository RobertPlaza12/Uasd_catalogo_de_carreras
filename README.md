#COMO CORRER EL BACKEND:

1.	Instalar xampp, e iniciar MySQL (al lado de esta hay un boton que dice estar):
   <img width="940" height="599" alt="image" src="https://github.com/user-attachments/assets/8a199105-b67f-4c2e-8bda-cf0a5b6c82f9" />
   
3.	Importa la base de datos a MySQL (en la parte superior derecha hay un boton que dice importar).
 <img width="940" height="329" alt="image" src="https://github.com/user-attachments/assets/590bafe4-8437-4ea9-ac96-63cf70874c3d" />
 
4.	Se agrega el archivo ubicado en backed/database/catalogo_carreras.sql y se le da a importa.
 <img width="681" height="364" alt="image" src="https://github.com/user-attachments/assets/d4e795cc-09e6-4346-b895-502d276d8731" />

5.	Si no da error ya la base de datos está montada, ahora hay que conectarla con la API.
6.	Vamos a al archivo ubicado en backend/src/main/resources/application.properties
7.	En ese archivo cambiamos las propiedades por las que por defecto que pone mysql por defecto que sería (Aunque estas ay deberían estar bien): 
spring.datasource.url=jdbc:mysql://localhost:3306/catalogo_carreras
spring.datasource.username=root
spring.datasource.password=
8.	Seguimos con la instalación del server para ver la página, en este caso uso la extensión live server para Visual Studio code.
9.	Una ves instalada la extensión solo hay que abrir en vs code el archivo index.html y dale click a "Go live" en la parte inferior derecha e iniciar el servidor.
    <img width="872" height="578" alt="image" src="https://github.com/user-attachments/assets/f8ffaeac-b623-413b-ad86-10071478a35a" />
 
11.	Automáticamente nos abrirá la página en nuestro navegador.
12.	Ahora hay que instalar la Api en java, para esto primero hay que instalar estas extensiones para VS code: 
•	Extension Pack for Java (Microsoft).
•	Maven for Java (Microsoft).
13.	Seguido debemos instalar apache Maven, pueden guiarse de este video para la instalación: https://www.youtube.com/watch?v=rl5-yyrmp-0
14.	Una ves instalado debemos abrir la terminar en VS code con Control + ñ, en la consola debemos abrir la carpeta del backend, podemos usar, por ejemplo 
cd backend.
<img width="783" height="158" alt="image" src="https://github.com/user-attachments/assets/9aa65482-0a4c-4c6e-b843-cd465364ee76" />
 
16.	Usamos el comando mvn spring-boot:run. a veces la primera ves fallara porque tendra que intalar todas las dependencias, si es el caso se coloca nuevamente y si todo sale la API debería estar activa y enviando los datos a nuestra página.
    <img width="940" height="395" alt="image" src="https://github.com/user-attachments/assets/405166e3-ad5a-4cd2-803f-cd83bec41cbc" />
    
17. Ya con todo esto nuestra pagina deberia estar recibiendo los datos de la API.

 
