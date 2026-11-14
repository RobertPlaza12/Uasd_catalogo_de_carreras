// Configuración de comunicación con el backend Java con Spring Boot.
const API_BASE_URL = "http://localhost:8080/api";

async function obtenerFacultades() {

  const respuesta = await fetch(`${API_BASE_URL}/facultades`);

  if (!respuesta.ok) {
    throw new Error(`No se pudieron cargar las facultades (HTTP ${respuesta.status}).`);
  }

  return await respuesta.json();
}
