import { getAllProductosService } from "../services/productos.services.js";

export const getAllProductos = async (req, res) => {
  try {
    const productos = await getAllProductosService();
    res.json(productos);
  } catch (error) {
    res.status(500).json({ error: "Error al obtener los productos" });
  }
};
