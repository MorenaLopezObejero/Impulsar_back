// crearEstructura.js usando import (ESModules)

import fs from "fs";
import path, { dirname } from "path";
import { fileURLToPath } from "url";

// Obtener __dirname usando ESModules
const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

// Lista de carpetas a crear
const carpetas = [
  "api/controllers",
  "api/routes",
  "api/services",
  "api/models",
  "api/middlewares",
  "api/uploads",
  "api/config",
  "api/db"
];

// Crear cada carpeta si no existe
carpetas.forEach((carpeta) => {
  const ruta = path.join(__dirname, carpeta);
  if (!fs.existsSync(ruta)) {
    fs.mkdirSync(ruta, { recursive: true });
    console.log(`🟢 Carpeta creada: ${carpeta}`);
  } else {
    console.log(`🟡 Ya existe: ${carpeta}`);
  }
});
