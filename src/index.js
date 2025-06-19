import express from "express";
import cors from 'cors';

// Configuración express
const app = express()
const PORT = 8000

// Middlewares
const corsOptions = {
    origin: '*', // permitir acceso desde cualquier origen
    methods: ['GET', 'POST', 'PUT', 'DELETE'], // permitir métodos HTTP
    allowedHeaders: ['Content-Type', 'Authorization'], // permitir headers
  };
app.use(cors(corsOptions));
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.listen(PORT, () => {
    console.log(`✅ Server is running on port ${PORT}`);
})

app.get("/", (req, res) => {
  res.json({ message: "Funca" });
});