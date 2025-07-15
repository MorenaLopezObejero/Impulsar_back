import db from "../db/db.js";

export const getProductosService = async () => {
  const query = "SELECT * FROM productos;";
  const result = await db.query(query);
  return result.rows;
};
