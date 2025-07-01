/*
  Warnings:

  - Added the required column `herramientas` to the `Productos` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Productos" ADD COLUMN     "herramientas" TEXT NOT NULL;
