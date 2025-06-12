/*
  Warnings:

  - You are about to drop the column `pref_com` on the `Contactos` table. All the data in the column will be lost.
  - You are about to alter the column `costo` on the `Materiales` table. The data in that column could be lost. The data in that column will be cast from `DoublePrecision` to `Integer`.
  - You are about to alter the column `costo` on the `Productos` table. The data in that column could be lost. The data in that column will be cast from `DoublePrecision` to `Integer`.

*/
-- AlterTable
ALTER TABLE "Contactos" DROP COLUMN "pref_com";

-- AlterTable
ALTER TABLE "Materiales" ALTER COLUMN "costo" SET DATA TYPE INTEGER;

-- AlterTable
ALTER TABLE "Productos" ALTER COLUMN "costo" SET DATA TYPE INTEGER;

-- CreateTable
CREATE TABLE "Emprendimiento_producto" (
    "Id_emp_prod" SERIAL NOT NULL,
    "emp_prod" TEXT NOT NULL,
    "prod_emp" TEXT NOT NULL,

    CONSTRAINT "Emprendimiento_producto_pkey" PRIMARY KEY ("Id_emp_prod")
);

-- CreateTable
CREATE TABLE "Productos_costo" (
    "Id_productos_costo" SERIAL NOT NULL,
    "costo" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "Productos_costo_pkey" PRIMARY KEY ("Id_productos_costo")
);

-- CreateTable
CREATE TABLE "Productos_stock" (
    "Id_productos_stock" SERIAL NOT NULL,
    "stock" INTEGER NOT NULL,

    CONSTRAINT "Productos_stock_pkey" PRIMARY KEY ("Id_productos_stock")
);

-- CreateTable
CREATE TABLE "Materiales_costo" (
    "Id_materiales_costo" SERIAL NOT NULL,
    "costo" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "Materiales_costo_pkey" PRIMARY KEY ("Id_materiales_costo")
);

-- CreateTable
CREATE TABLE "Materiales_stock" (
    "Id_materiales_stock" SERIAL NOT NULL,
    "stock" INTEGER NOT NULL,

    CONSTRAINT "Materiales_stock_pkey" PRIMARY KEY ("Id_materiales_stock")
);

-- AddForeignKey
ALTER TABLE "Emprendimiento_producto" ADD CONSTRAINT "Emprendimiento_producto_emp_prod_fkey" FOREIGN KEY ("emp_prod") REFERENCES "Emprendimiento"("typo") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Emprendimiento_producto" ADD CONSTRAINT "Emprendimiento_producto_prod_emp_fkey" FOREIGN KEY ("prod_emp") REFERENCES "Productos"("nombre_producto") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Productos" ADD CONSTRAINT "Productos_costo_fkey" FOREIGN KEY ("costo") REFERENCES "Productos_costo"("Id_productos_costo") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Productos" ADD CONSTRAINT "Productos_stock_fkey" FOREIGN KEY ("stock") REFERENCES "Productos_stock"("Id_productos_stock") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Materiales" ADD CONSTRAINT "Materiales_costo_fkey" FOREIGN KEY ("costo") REFERENCES "Materiales_costo"("Id_materiales_costo") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Materiales" ADD CONSTRAINT "Materiales_stock_fkey" FOREIGN KEY ("stock") REFERENCES "Materiales_stock"("Id_materiales_stock") ON DELETE RESTRICT ON UPDATE CASCADE;
