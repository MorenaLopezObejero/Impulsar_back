/*
  Warnings:

  - You are about to drop the column `emp_prod` on the `Emprendimiento_producto` table. All the data in the column will be lost.
  - You are about to drop the column `herramientas` on the `Productos` table. All the data in the column will be lost.
  - Added the required column `typo` to the `Emprendimiento_producto` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Cantidades` to the `Materiales_producto` table without a default value. This is not possible if the table is not empty.
  - Changed the type of `nom_prod` on the `Materiales_producto` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- DropForeignKey
ALTER TABLE "Emprendimiento_producto" DROP CONSTRAINT "Emprendimiento_producto_emp_prod_fkey";

-- DropForeignKey
ALTER TABLE "Materiales_producto" DROP CONSTRAINT "Materiales_producto_nom_prod_fkey";

-- AlterTable
ALTER TABLE "Emprendimiento_producto" DROP COLUMN "emp_prod",
ADD COLUMN     "typo" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "Materiales_producto" ADD COLUMN     "Cantidades" TEXT NOT NULL,
DROP COLUMN "nom_prod",
ADD COLUMN     "nom_prod" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "Productos" DROP COLUMN "herramientas";

-- AddForeignKey
ALTER TABLE "Emprendimiento_producto" ADD CONSTRAINT "Emprendimiento_producto_typo_fkey" FOREIGN KEY ("typo") REFERENCES "Usuario_Emprendimiento"("Id_usu_emp") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Materiales_producto" ADD CONSTRAINT "Materiales_producto_nom_prod_fkey" FOREIGN KEY ("nom_prod") REFERENCES "Emprendimiento_producto"("Id_emp_prod") ON DELETE RESTRICT ON UPDATE CASCADE;
