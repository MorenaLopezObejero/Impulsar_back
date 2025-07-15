import { Router } from "express";
import { getAllProductos } from "../controllers/productos.controllers.js";

const router = Router();

router.get("/", getAllProductos);

export default router;
