/*
  Warnings:

  - Added the required column `Herramientas` to the `Productos` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Unidades` to the `Productos` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Productos" ADD COLUMN     "Herramientas" TEXT NOT NULL,
ADD COLUMN     "Unidades" TEXT NOT NULL;
