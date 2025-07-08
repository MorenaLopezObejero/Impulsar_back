import fs from 'fs';
import path from 'path';

const carpetas = [
  'controllers',
  'routes',
  'services',
  'models',
  'middlewares',
  'uploads',
  'config',
  'db'
];

const base = './api';

carpetas.forEach(nombre => {
  const ruta = path.join(base, nombre);
  if (!fs.existsSync(ruta)) {
    fs.mkdirSync(ruta, { recursive: true });
    console.log(`📁 Carpeta creada: ${ruta}`);
  } else {
    console.log(`✅ Ya existe: ${ruta}`);
  }
});
