let facultadesOriginales = [];
document.addEventListener("DOMContentLoaded", iniciarCatalogo);

async function iniciarCatalogo() {
  const contenedor = document.getElementById("faculties-container");
  const estado = document.getElementById("status-message");
  const contador = document.getElementById("faculty-count");

  try {
    const facultades = await obtenerFacultades();
    facultadesOriginales = facultades;
    estado.textContent = "";

    if (!Array.isArray(facultades) || facultades.length === 0) {
      estado.textContent = "No hay facultades disponibles para mostrar.";
      contenedor.innerHTML = "";
      contador.textContent = "0 facultades";
      return;
    }

    contador.textContent = `${facultades.length} facultad${facultades.length === 1 ? "" : "es"}`;
    contenedor.innerHTML = facultades.map(crearTarjetaFacultad).join("");
    configurarBotones();
  } catch (error) {
    console.error(error);
    estado.textContent = "No fue posible cargar el catálogo. Verifica que el backend esté funcionando.";
    estado.classList.add("status-error");
  }
}

// Escapa texto procedente de la API antes de insertarlo en el HTML.
function escapar(valor = "") {
  return String(valor).replace(/[&<>"']/g, caracter => ({
    "&": "&amp;", "<": "&lt;", ">": "&gt;", '"': "&quot;", "'": "&#039;"
  })[caracter]);
}

function crearTarjetaFacultad(facultad) {
  const id = escapar(facultad.id);
  const nombre = escapar(facultad.nombre);
  const color = validarColor(facultad.color);
  const escuelas = Array.isArray(facultad.escuelas) ? facultad.escuelas : [];
  const logo = facultad.logo
    ? `<img class="faculty-logo" src="${escapar(facultad.logo)}" alt="Logo de ${nombre}" onerror="this.remove()">`
    : `<span class="faculty-initial" aria-hidden="true">${nombre.charAt(0)}</span>`;

  return `
    <article class="faculty-card" style="--faculty-color: ${color}">
      <div class="faculty-top">
        <div class="faculty-logo-wrap">${logo}</div>
        <div class="faculty-heading">
          <h3>${nombre}</h3>
          <p>${escapar(facultad.descripcion || "Información de la facultad.")}</p>
        </div>
      </div>
      <div class="faculty-actions">
        <button class="btn btn-primary faculty-toggle" type="button"
                data-target="faculty-${id}" aria-expanded="false">
          Ver detalle <span aria-hidden="true">⌄</span>
        </button>
      </div>

      <div class="faculty-details" id="faculty-${id}" hidden>
        ${crearPanelDecano(facultad.decano)}
        <p class="faculty-description">${escapar(facultad.descripcion || "")}</p>
        <h4 class="schools-heading">Escuelas de esta facultad</h4>
        <div class="schools-list">
          ${escuelas.length
            ? escuelas.map(crearTarjetaEscuela).join("")
            : '<p class="empty-state">Esta facultad todavía no tiene escuelas registradas.</p>'}
        </div>
      </div>
    </article>`;
}

function crearPanelDecano(decano) {
  if (!decano) {
    return `<div class="dean-panel">
      <div class="dean-placeholder" aria-hidden="true">D</div>
      <div><p class="dean-label">Decanato</p><h4 class="dean-name">Información no disponible</h4></div>
    </div>`;
  }

  const nombre = escapar(decano.nombre || "Nombre no disponible");
  const foto = decano.foto
    ? `<img class="dean-photo" src="${escapar(decano.foto)}" alt="Fotografía de ${nombre}" onerror="this.replaceWith(crearMarcadorDecano())">`
    : `<div class="dean-placeholder" aria-hidden="true">D</div>`;

  return `<div class="dean-panel">
    ${foto}
    <div><p class="dean-label">Decano/a de la facultad</p><h4 class="dean-name">${nombre}</h4></div>
  </div>`;
}

// Se utiliza si la fotografía del decano no está disponible.
function crearMarcadorDecano() {
  const marcador = document.createElement("div");
  marcador.className = "dean-placeholder";
  marcador.setAttribute("aria-hidden", "true");
  marcador.textContent = "D";
  return marcador;
}

function crearTarjetaEscuela(escuela) {
  const id = escapar(escuela.id);
  const carreras = Array.isArray(escuela.carreras) ? escuela.carreras : [];

  return `
    <section class="school-card">
      <div class="school-header">
        <div>
          <h4>${escapar(escuela.nombre)}</h4>
          <p class="school-description">${escapar(escuela.descripcion || "")}</p>
        </div>
        <button class="btn btn-outline btn-small school-toggle" type="button"
                data-target="school-${id}" aria-expanded="false">
          Ver carreras <span aria-hidden="true">＋</span>
        </button>
      </div>
      <div class="school-careers" id="school-${id}" hidden>
        <h5 class="careers-heading">Carreras ofertadas</h5>
        <div class="career-list">
          ${carreras.length
            ? carreras.map(crearCarrera).join("")
            : '<p class="empty-state">No hay carreras registradas en esta escuela.</p>'}
        </div>
      </div>
    </section>`;
}

function crearCarrera(carrera) {
  const nombre = escapar(carrera.nombre);
  const pensum = carrera.pensum ? escapar(carrera.pensum) : "";
  const enlace = validarEnlace(carrera.enlace);

  return `
    <div class="career-item">
      <p class="career-name">${nombre}</p>
      <div class="career-actions">
        ${pensum
          ? `<a class="btn btn-outline btn-small" href="${pensum}" download>Descargar pensum</a>`
          : `<span class="btn btn-outline btn-small" aria-disabled="true">Pensum no disponible</span>`}
        ${enlace
          ? `<a class="btn btn-primary btn-small" href="${enlace}" target="_blank" rel="noopener noreferrer">Visitar enlace ↗</a>`
          : ""}
      </div>
    </div>`;
}

function configurarBotones() {
  document.querySelectorAll(".faculty-toggle, .school-toggle").forEach(boton => {
    boton.addEventListener("click", () => {
      const panel = document.getElementById(boton.dataset.target);
      if (!panel) return;

      const abrir = panel.hidden;
      panel.hidden = !abrir;
      boton.setAttribute("aria-expanded", String(abrir));

      if (boton.classList.contains("faculty-toggle")) {
        boton.innerHTML = abrir
          ? 'Ocultar detalle <span aria-hidden="true">⌃</span>'
          : 'Ver detalle <span aria-hidden="true">⌄</span>';
      } else {
        boton.innerHTML = abrir
          ? 'Ocultar carreras <span aria-hidden="true">−</span>'
          : 'Ver carreras <span aria-hidden="true">＋</span>';
      }
    });
  });
}

function validarColor(color) {
  // Acepta códigos hexadecimales; usa azul si el dato no es válido.
  return typeof color === "string" && /^#([0-9a-f]{3}|[0-9a-f]{6})$/i.test(color)
    ? color : "#38658e";
}

function validarEnlace(enlace) {
  if (!enlace) return "";
  try {
    const url = new URL(enlace);
    return ["http:", "https:"].includes(url.protocol) ? escapar(url.href) : "";
  } catch {
    return "";
  }
}

// Normaliza el texto para buscar sin importar mayúsculas ni acentos.
function normalizarTexto(texto) {
  return String(texto || "")
    .toLowerCase()
    .normalize("NFD")
    .replace(/[\u0300-\u036f]/g, "");
}

// Busca facultades, escuelas y carreras.
function buscarCatalogo(termino) {
  const busqueda = normalizarTexto(termino);

  const resultados = facultadesOriginales.filter(facultad => {
    const nombreFacultad = normalizarTexto(facultad.nombre);
    const descripcion = normalizarTexto(facultad.descripcion);

    const coincideFacultad =
      nombreFacultad.includes(busqueda) ||
      descripcion.includes(busqueda);

    const escuelas = Array.isArray(facultad.escuelas)
      ? facultad.escuelas
      : [];

    const coincideEscuela = escuelas.some(escuela => {
      const nombreEscuela = normalizarTexto(escuela.nombre);

      const carreras = Array.isArray(escuela.carreras)
        ? escuela.carreras
        : [];

      const coincideCarrera = carreras.some(carrera =>
        normalizarTexto(carrera.nombre).includes(busqueda)
      );

      return nombreEscuela.includes(busqueda) || coincideCarrera;
    });

    return coincideFacultad || coincideEscuela;
  });

  mostrarResultados(resultados);
}

// Muestra las facultades encontradas.
function mostrarResultados(resultados) {
  const contenedor = document.getElementById("faculties-container");
  const estado = document.getElementById("status-message");
  const contador = document.getElementById("faculty-count");

  contenedor.innerHTML = "";

  contador.textContent =
    `${resultados.length} resultado${resultados.length === 1 ? "" : "s"}`;

  if (resultados.length === 0) {
    estado.textContent = "No se encontraron resultados.";
    return;
  }

  estado.textContent = "";

  contenedor.innerHTML = resultados
    .map(crearTarjetaFacultad)
    .join("");

  configurarBotones();
}

// Configura el botón Buscar y el botón Limpiar.
document.addEventListener("DOMContentLoaded", () => {
  const formulario = document.getElementById("search-form");
  const campoBusqueda = document.getElementById("search-input");
  const botonLimpiar = document.getElementById("clear-search");

  formulario.addEventListener("submit", evento => {
    evento.preventDefault();

    const termino = campoBusqueda.value.trim();

    if (termino === "") {
      mostrarResultados(facultadesOriginales);
      return;
    }

    buscarCatalogo(termino);
  });

  botonLimpiar.addEventListener("click", () => {
    campoBusqueda.value = "";
    mostrarResultados(facultadesOriginales);
    campoBusqueda.focus();
  });
});
