import { Router } from "express";
import productosRoutes from "./productos.routes.js";

const router = Router();

router.use("/productos", productosRoutes); // será accesible en /api/productos

export default router;
