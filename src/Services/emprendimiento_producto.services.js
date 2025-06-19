import { PrismaClient } from '../generated/prisma/client.js';
const prisma = new PrismaClient();

export const getemprendimiento_productoService = async () => {
    return await prisma.emprendimiento_producto.findAll();
  };

