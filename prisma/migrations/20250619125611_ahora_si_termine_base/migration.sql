/*
  Warnings:

  - You are about to drop the column `costo` on the `Materiales` table. All the data in the column will be lost.
  - You are about to drop the column `stock` on the `Materiales` table. All the data in the column will be lost.
  - You are about to drop the `Materiales_costo` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Materiales_stock` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Materiales" DROP CONSTRAINT "Materiales_costo_fkey";

-- DropForeignKey
ALTER TABLE "Materiales" DROP CONSTRAINT "Materiales_stock_fkey";

-- AlterTable
ALTER TABLE "Materiales" DROP COLUMN "costo",
DROP COLUMN "stock";

-- DropTable
DROP TABLE "Materiales_costo";

-- DropTable
DROP TABLE "Materiales_stock";
