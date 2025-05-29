-- CreateTable
CREATE TABLE "Usuario" (
    "email" TEXT NOT NULL,
    "contra" TEXT NOT NULL,
    "nombre" TEXT NOT NULL,
    "foto_perfil" INTEGER NOT NULL,
    "typo_id" TEXT NOT NULL,
    "contacto" INTEGER NOT NULL,

    CONSTRAINT "Usuario_pkey" PRIMARY KEY ("email")
);

-- CreateTable
CREATE TABLE "Foto_Usuario" (
    "Id_fotousu" SERIAL NOT NULL,
    "foto_perfil" TEXT NOT NULL,

    CONSTRAINT "Foto_Usuario_pkey" PRIMARY KEY ("Id_fotousu")
);

-- CreateTable
CREATE TABLE "Contactos" (
    "Id_contactos" SERIAL NOT NULL,
    "telefono" INTEGER NOT NULL,
    "nombre" TEXT NOT NULL,
    "redes_soc" TEXT NOT NULL,
    "pref_com" TEXT NOT NULL,
    "notas_perz" TEXT NOT NULL,
    "email_contactos" TEXT NOT NULL,
    "foto_contacto" INTEGER NOT NULL,

    CONSTRAINT "Contactos_pkey" PRIMARY KEY ("Id_contactos")
);

-- CreateTable
CREATE TABLE "Emprendimiento" (
    "typo" TEXT NOT NULL,
    "descripcion" TEXT NOT NULL,
    "nombre" TEXT NOT NULL,
    "logotipo" TEXT NOT NULL,
    "nom_color" TEXT NOT NULL,
    "producto" TEXT NOT NULL,

    CONSTRAINT "Emprendimiento_pkey" PRIMARY KEY ("typo")
);

-- CreateTable
CREATE TABLE "Logotipo" (
    "link_plantilla" TEXT NOT NULL,
    "descripcion_logotipo" TEXT NOT NULL,
    "foto" INTEGER NOT NULL,

    CONSTRAINT "Logotipo_pkey" PRIMARY KEY ("link_plantilla")
);

-- CreateTable
CREATE TABLE "Foto_logotipo" (
    "Id_foto_logotipo" SERIAL NOT NULL,
    "foto_logotipo" TEXT NOT NULL,

    CONSTRAINT "Foto_logotipo_pkey" PRIMARY KEY ("Id_foto_logotipo")
);

-- CreateTable
CREATE TABLE "Colores_marca" (
    "nom_colores" TEXT NOT NULL,
    "foto" TEXT NOT NULL,

    CONSTRAINT "Colores_marca_pkey" PRIMARY KEY ("nom_colores")
);

-- CreateTable
CREATE TABLE "Marketing_emprendimiento" (
    "Id_marketing_emprendimiento" SERIAL NOT NULL,
    "typo_emp" TEXT NOT NULL,
    "Id_mark" INTEGER NOT NULL,

    CONSTRAINT "Marketing_emprendimiento_pkey" PRIMARY KEY ("Id_marketing_emprendimiento")
);

-- CreateTable
CREATE TABLE "Marketing" (
    "Id_marketing" SERIAL NOT NULL,
    "costo" DOUBLE PRECISION NOT NULL,
    "stock" INTEGER NOT NULL,
    "aplicacion" TEXT NOT NULL,
    "publicacion" TEXT NOT NULL,

    CONSTRAINT "Marketing_pkey" PRIMARY KEY ("Id_marketing")
);

-- CreateTable
CREATE TABLE "Aplicaciones" (
    "nombre" TEXT NOT NULL,
    "desc_uso" TEXT NOT NULL,
    "link_tuto" TEXT NOT NULL,
    "link_uso" TEXT NOT NULL,
    "foto_aplicacion" INTEGER NOT NULL,

    CONSTRAINT "Aplicaciones_pkey" PRIMARY KEY ("nombre")
);

-- CreateTable
CREATE TABLE "Aplicaciones_foto" (
    "Id_aplicaciones_foto" SERIAL NOT NULL,
    "foto" TEXT NOT NULL,

    CONSTRAINT "Aplicaciones_foto_pkey" PRIMARY KEY ("Id_aplicaciones_foto")
);

-- CreateTable
CREATE TABLE "Publicaciones" (
    "link_plantilla" TEXT NOT NULL,
    "desc" TEXT NOT NULL,
    "nombre" TEXT NOT NULL,
    "foto" INTEGER NOT NULL,

    CONSTRAINT "Publicaciones_pkey" PRIMARY KEY ("link_plantilla")
);

-- CreateTable
CREATE TABLE "Publicaciones_foto" (
    "Id_publicaciones_foto" SERIAL NOT NULL,
    "foto" TEXT NOT NULL,

    CONSTRAINT "Publicaciones_foto_pkey" PRIMARY KEY ("Id_publicaciones_foto")
);

-- CreateTable
CREATE TABLE "Productos" (
    "nombre_producto" TEXT NOT NULL,
    "pasos" TEXT NOT NULL,
    "descripcion" TEXT NOT NULL,
    "stock" INTEGER NOT NULL,
    "costo" DOUBLE PRECISION NOT NULL,
    "foto" INTEGER NOT NULL,

    CONSTRAINT "Productos_pkey" PRIMARY KEY ("nombre_producto")
);

-- CreateTable
CREATE TABLE "Productos_foto" (
    "Id_productos_foto" SERIAL NOT NULL,
    "foto" TEXT NOT NULL,

    CONSTRAINT "Productos_foto_pkey" PRIMARY KEY ("Id_productos_foto")
);

-- CreateTable
CREATE TABLE "Materiales_producto" (
    "Id_materiales_producto" SERIAL NOT NULL,
    "nom_prod" TEXT NOT NULL,
    "nom_mat" TEXT NOT NULL,

    CONSTRAINT "Materiales_producto_pkey" PRIMARY KEY ("Id_materiales_producto")
);

-- CreateTable
CREATE TABLE "Materiales" (
    "nombre" TEXT NOT NULL,
    "costo" DOUBLE PRECISION NOT NULL,
    "stock" INTEGER NOT NULL,
    "foto_materiales" INTEGER NOT NULL,

    CONSTRAINT "Materiales_pkey" PRIMARY KEY ("nombre")
);

-- CreateTable
CREATE TABLE "Materiales_foto" (
    "Id_materiales_foto" SERIAL NOT NULL,
    "foto" TEXT NOT NULL,

    CONSTRAINT "Materiales_foto_pkey" PRIMARY KEY ("Id_materiales_foto")
);

-- AddForeignKey
ALTER TABLE "Usuario" ADD CONSTRAINT "Usuario_foto_perfil_fkey" FOREIGN KEY ("foto_perfil") REFERENCES "Foto_Usuario"("Id_fotousu") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Usuario" ADD CONSTRAINT "Usuario_typo_id_fkey" FOREIGN KEY ("typo_id") REFERENCES "Emprendimiento"("typo") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Usuario" ADD CONSTRAINT "Usuario_contacto_fkey" FOREIGN KEY ("contacto") REFERENCES "Contactos"("Id_contactos") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Contactos" ADD CONSTRAINT "Contactos_foto_contacto_fkey" FOREIGN KEY ("foto_contacto") REFERENCES "Foto_Usuario"("Id_fotousu") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Emprendimiento" ADD CONSTRAINT "Emprendimiento_logotipo_fkey" FOREIGN KEY ("logotipo") REFERENCES "Logotipo"("link_plantilla") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Emprendimiento" ADD CONSTRAINT "Emprendimiento_nom_color_fkey" FOREIGN KEY ("nom_color") REFERENCES "Colores_marca"("nom_colores") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Emprendimiento" ADD CONSTRAINT "Emprendimiento_producto_fkey" FOREIGN KEY ("producto") REFERENCES "Productos"("nombre_producto") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Logotipo" ADD CONSTRAINT "Logotipo_foto_fkey" FOREIGN KEY ("foto") REFERENCES "Foto_logotipo"("Id_foto_logotipo") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Marketing_emprendimiento" ADD CONSTRAINT "Marketing_emprendimiento_typo_emp_fkey" FOREIGN KEY ("typo_emp") REFERENCES "Emprendimiento"("typo") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Marketing_emprendimiento" ADD CONSTRAINT "Marketing_emprendimiento_Id_mark_fkey" FOREIGN KEY ("Id_mark") REFERENCES "Marketing"("Id_marketing") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Marketing" ADD CONSTRAINT "Marketing_aplicacion_fkey" FOREIGN KEY ("aplicacion") REFERENCES "Aplicaciones"("nombre") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Marketing" ADD CONSTRAINT "Marketing_publicacion_fkey" FOREIGN KEY ("publicacion") REFERENCES "Publicaciones"("link_plantilla") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Aplicaciones" ADD CONSTRAINT "Aplicaciones_foto_aplicacion_fkey" FOREIGN KEY ("foto_aplicacion") REFERENCES "Aplicaciones_foto"("Id_aplicaciones_foto") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Publicaciones" ADD CONSTRAINT "Publicaciones_foto_fkey" FOREIGN KEY ("foto") REFERENCES "Publicaciones_foto"("Id_publicaciones_foto") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Productos" ADD CONSTRAINT "Productos_foto_fkey" FOREIGN KEY ("foto") REFERENCES "Productos_foto"("Id_productos_foto") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Materiales_producto" ADD CONSTRAINT "Materiales_producto_nom_prod_fkey" FOREIGN KEY ("nom_prod") REFERENCES "Productos"("nombre_producto") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Materiales_producto" ADD CONSTRAINT "Materiales_producto_nom_mat_fkey" FOREIGN KEY ("nom_mat") REFERENCES "Materiales"("nombre") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Materiales" ADD CONSTRAINT "Materiales_foto_materiales_fkey" FOREIGN KEY ("foto_materiales") REFERENCES "Materiales_foto"("Id_materiales_foto") ON DELETE RESTRICT ON UPDATE CASCADE;
