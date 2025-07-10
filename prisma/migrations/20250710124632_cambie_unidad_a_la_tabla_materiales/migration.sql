/*
  Warnings:

  - You are about to drop the column `Unidades` on the `Productos` table. All the data in the column will be lost.
  - Added the required column `Unidades` to the `Materiales` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Materiales" ADD COLUMN     "Unidades" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "Productos" DROP COLUMN "Unidades";
