// crearEstructura.js usando import en vez de require
import fs from "fs";
import path from "path";
import { fileURLToPath } from "url";
import { dirname } from "path";

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

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

carpetas.forEach((carpeta) => {
  const ruta = path.join(__dirname, carpeta);
  if (!fs.existsSync(ruta)) {
    fs.mkdirSync(ruta, { recursive: true });
    console.log(`🟢 Carpeta creada: ${carpeta}`);
  } else {
    console.log(`🟡 Ya existe: ${carpeta}`);
  }
});
