/*
  Warnings:

  - You are about to drop the column `logotipo` on the `Emprendimiento` table. All the data in the column will be lost.
  - You are about to drop the `Foto_logotipo` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Logotipo` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Emprendimiento" DROP CONSTRAINT "Emprendimiento_logotipo_fkey";

-- DropForeignKey
ALTER TABLE "Logotipo" DROP CONSTRAINT "Logotipo_foto_fkey";

-- AlterTable
ALTER TABLE "Emprendimiento" DROP COLUMN "logotipo";

-- DropTable
DROP TABLE "Foto_logotipo";

-- DropTable
DROP TABLE "Logotipo";
