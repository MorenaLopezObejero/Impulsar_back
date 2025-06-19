/*
  Warnings:

  - You are about to drop the column `nom_color` on the `Emprendimiento` table. All the data in the column will be lost.
  - You are about to drop the column `aplicacion` on the `Marketing` table. All the data in the column will be lost.
  - You are about to drop the column `costo` on the `Marketing` table. All the data in the column will be lost.
  - You are about to drop the column `stock` on the `Marketing` table. All the data in the column will be lost.
  - You are about to drop the column `costo` on the `Productos` table. All the data in the column will be lost.
  - You are about to drop the column `stock` on the `Productos` table. All the data in the column will be lost.
  - You are about to drop the `Aplicaciones` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Aplicaciones_foto` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Productos_costo` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Productos_stock` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `costo` to the `Emprendimiento_producto` table without a default value. This is not possible if the table is not empty.
  - Added the required column `stock` to the `Emprendimiento_producto` table without a default value. This is not possible if the table is not empty.
  - Added the required column `costo` to the `Materiales_producto` table without a default value. This is not possible if the table is not empty.
  - Added the required column `stock` to the `Materiales_producto` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Aplicaciones" DROP CONSTRAINT "Aplicaciones_foto_aplicacion_fkey";

-- DropForeignKey
ALTER TABLE "Emprendimiento" DROP CONSTRAINT "Emprendimiento_nom_color_fkey";

-- DropForeignKey
ALTER TABLE "Marketing" DROP CONSTRAINT "Marketing_aplicacion_fkey";

-- DropForeignKey
ALTER TABLE "Productos" DROP CONSTRAINT "Productos_costo_fkey";

-- DropForeignKey
ALTER TABLE "Productos" DROP CONSTRAINT "Productos_stock_fkey";

-- AlterTable
ALTER TABLE "Emprendimiento" DROP COLUMN "nom_color";

-- AlterTable
ALTER TABLE "Emprendimiento_producto" ADD COLUMN     "costo" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "stock" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "Marketing" DROP COLUMN "aplicacion",
DROP COLUMN "costo",
DROP COLUMN "stock";

-- AlterTable
ALTER TABLE "Materiales_producto" ADD COLUMN     "costo" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "stock" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "Productos" DROP COLUMN "costo",
DROP COLUMN "stock";

-- DropTable
DROP TABLE "Aplicaciones";

-- DropTable
DROP TABLE "Aplicaciones_foto";

-- DropTable
DROP TABLE "Productos_costo";

-- DropTable
DROP TABLE "Productos_stock";

-- CreateTable
CREATE TABLE "Usuario_Emprendimiento" (
    "Id_usu_emp" SERIAL NOT NULL,
    "nom_color" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "typo" TEXT NOT NULL,

    CONSTRAINT "Usuario_Emprendimiento_pkey" PRIMARY KEY ("Id_usu_emp")
);

-- AddForeignKey
ALTER TABLE "Usuario_Emprendimiento" ADD CONSTRAINT "Usuario_Emprendimiento_nom_color_fkey" FOREIGN KEY ("nom_color") REFERENCES "Colores_marca"("nom_colores") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Usuario_Emprendimiento" ADD CONSTRAINT "Usuario_Emprendimiento_email_fkey" FOREIGN KEY ("email") REFERENCES "Usuario"("email") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Usuario_Emprendimiento" ADD CONSTRAINT "Usuario_Emprendimiento_typo_fkey" FOREIGN KEY ("typo") REFERENCES "Emprendimiento"("typo") ON DELETE RESTRICT ON UPDATE CASCADE;
