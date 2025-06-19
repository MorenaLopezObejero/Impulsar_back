import {emprendimiento_producto} from '../controlleres/emprendimiento_producto';

export const getemprendimiento_productoService = async (req, res) => {
    try {
        const productos = await getemprendimiento_productoService();
        res.json(productos)
    } catch (err) {
        res.status(500).json({ error: 'Error al obtener los dispositivos' });
    throw err;
    }
  };