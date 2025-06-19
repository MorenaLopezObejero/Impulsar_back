/*
  Warnings:

  - You are about to drop the column `nombre` on the `Emprendimiento` table. All the data in the column will be lost.
  - Added the required column `producto_foto` to the `Emprendimiento` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Emprendimiento" DROP COLUMN "nombre",
ADD COLUMN     "producto_foto" INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE "Emprendimiento" ADD CONSTRAINT "Emprendimiento_producto_foto_fkey" FOREIGN KEY ("producto_foto") REFERENCES "Productos_foto"("Id_productos_foto") ON DELETE RESTRICT ON UPDATE CASCADE;
