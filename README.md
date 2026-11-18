# UASD — Catálogo de facultades, escuelas y carreras

Proyecto con:

- **backend/**: API REST con Java + Spring Boot (Maven), conectada a MySQL.
- **frontend/**: página estática (HTML, CSS y JavaScript) que consume la API.
- **backend/database/catalogo_carreras.sql**: script con la base de datos y los datos del catálogo.

## Requisitos

- **JDK 17 o superior** (probado con JDK 21). Verifica con `java -version`.
- No hace falta instalar Maven: el proyecto incluye **Maven Wrapper** (`mvnw.cmd` / `mvnw`).
- Para usar MySQL: XAMPP, WAMP o MySQL Server.

---

## Opción 1: correr el backend sin MySQL (modo demo)

Sirve para probar rápido que todo funciona. Usa una base H2 en memoria con los mismos datos del catálogo.

```bat
cd backend
mvnw.cmd spring-boot:run -Dspring-boot.run.profiles=demo
```

En Linux / macOS:

```bash
cd backend
./mvnw spring-boot:run -Dspring-boot.run.profiles=demo
```

Luego abre en el navegador:

- http://localhost:8080/api/facultades
- http://localhost:8080/api/facultades/1

> Cada vez que reinicies en modo demo, la base se vuelve a crear con los datos del script.

---

## Opción 2: correr el backend con MySQL (XAMPP)

### 1. Iniciar MySQL

Abre XAMPP y pulsa **Start** en el módulo **MySQL** (no hace falta Apache).

### 2. Importar la base de datos

1. Entra a http://localhost/phpmyadmin
2. Pestaña **Importar** (arriba a la derecha).
3. Selecciona el archivo `backend/database/catalogo_carreras.sql`.
4. Pulsa **Importar** / **Continuar**. Debe crearse la base `catalogo_carreras`.

> También puedes importarlo desde la consola:
> `mysql -u root -p < backend/database/catalogo_carreras.sql`

### 3. Revisar la conexión

El archivo `backend/src/main/resources/application.properties` ya trae los valores por defecto de XAMPP:

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/catalogo_carreras
spring.datasource.username=root
spring.datasource.password=
```

Si tu MySQL tiene contraseña, escríbela en `spring.datasource.password`.

También puedes usar variables de entorno sin tocar el archivo:

```bat
set DB_USERNAME=root
set DB_PASSWORD=tu_clave
```

### 4. Arrancar la API

```bat
cd backend
mvnw.cmd spring-boot:run
```

Debe aparecer en consola algo como `Started CatalogoApplication` y `Tomcat started on port 8080`.

Comprueba en el navegador: http://localhost:8080/api/facultades

---

## Frontend

1. Instala la extensión **Live Server** en VS Code.
2. Abre `frontend/index.html` y pulsa **Go Live** (abajo a la derecha).
3. El catálogo se carga desde la API; si el backend no está corriendo verás el mensaje de error en pantalla.

La API permite peticiones desde cualquier puerto local (`localhost` / `127.0.0.1`), así que Live Server puede usar 5500, 5501, etc.

---

## Endpoints

| Método | Ruta                  | Descripción                                        |
| ------ | --------------------- | -------------------------------------------------- |
| GET    | `/api/facultades`     | Lista de facultades con sus escuelas y carreras.   |
| GET    | `/api/facultades/{id}`| Una facultad por ID (404 si no existe).            |

Ejemplo de respuesta (`/api/facultades/1`):

```json
{
  "id": 1,
  "nombre": "Facultad de Ingeniería y Arquitectura",
  "descripcion": "Forma profesionales capaces de diseñar...",
  "color": "#17349d",
  "logo": "assets/facultades/ingenieria.png",
  "decano": { "nombre": "Ing. Mayra Sanchez", "foto": "assets/decanos/ingenieria.jpg" },
  "escuelas": [
    {
      "id": 11,
      "nombre": "Escuela de Agrimensura",
      "descripcion": "Forma en la medición...",
      "carreras": [
        {
          "id": 111,
          "nombre": "Agrimensura",
          "pensum": "https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-AGRI&plan=000012&nivel=GR",
          "enlace": "https://uasd.edu.do/facultad-ingenieria/escuelas/escuela-de-agrimensura/"
        }
      ]
    }
  ]
}
```

---

## Estructura del backend

```
backend/
├── database/catalogo_carreras.sql          Script de MySQL
├── pom.xml                                 Dependencias Maven
├── mvnw / mvnw.cmd                         Maven Wrapper
└── src/main/
    ├── java/com/universidad/catalogo/
    │   ├── CatalogoApplication.java         Clase principal
    │   ├── config/CorsConfig.java           Configuración CORS
    │   ├── controller/FacultadController.java
    │   ├── dto/                             DTOs de respuesta
    │   ├── model/                           Entidades JPA
    │   ├── repository/FacultadRepository.java
    │   └── service/FacultadService.java
    └── resources/
        ├── application.properties           Configuración MySQL
        ├── application-demo.properties      Configuración del modo demo (H2)
        └── data.sql                         Datos para el modo demo
```

---

## Problemas comunes

| Problema | Solución |
| -------- | -------- |
| `Communications link failure` | MySQL no está iniciado. Enciéndelo desde XAMPP. |
| `Access denied for user 'root'@'localhost'` | La contraseña de MySQL no coincide con `application.properties`. |
| `Unknown database 'catalogo_carreras'` | No has importado `backend/database/catalogo_carreras.sql`. |
| `Port 8080 was already in use` | Cierra el otro proceso o arranca con `set SERVER_PORT=8081` (y ajusta `API_BASE_URL` en `frontend/js/api.js`). |
| `mvn` no se reconoce | Usa el wrapper: `mvnw.cmd` (Windows) o `./mvnw` (Linux/macOS). |
| La página dice que el backend no responde | Abre http://localhost:8080/api/facultades para confirmar que la API está activa y revisa la consola. |
| `mvnw.cmd` no descarga Maven | Necesita internet la primera vez (descarga Maven y las dependencias). |
