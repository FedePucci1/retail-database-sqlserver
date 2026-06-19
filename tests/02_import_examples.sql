USE Com5600G05;
GO

-- Reemplazar esta ruta por el directorio local que contiene los datasets.
-- Los archivos originales de la cursada no se incluyen en el portfolio.
DECLARE @DataDir NVARCHAR(4000) = N'C:\replace\with\sample-data';
DECLARE @RutaArchivo NVARCHAR(4000);

-- Empresa ficticia utilizada por la demostración.
IF NOT EXISTS (SELECT 1 FROM gestion_sucursal.Empresa WHERE razon_social = 'Demo Retail S.A.')
BEGIN
    INSERT INTO gestion_sucursal.Empresa(cuit, razon_social, telefono)
    VALUES ('30-00000000-0', 'Demo Retail S.A.', '11-0000-0000');
END;

SET @RutaArchivo = CONCAT(@DataDir, N'\Informacion_complementaria.xlsx');
EXEC gestion_sucursal.Importar_Sucursales @RutaArchivo;
EXEC gestion_sucursal.Importar_Empleados @RutaArchivo;
EXEC gestion_producto.Importar_TipoProducto_Categoria @RutaArchivo;
EXEC gestion_venta.Importar_Medios_de_Pago @RutaArchivo;

SET @RutaArchivo = CONCAT(@DataDir, N'\Productos\Productos_importados.xlsx');
EXEC gestion_producto.Importar_Productos_Importados @RutaArchivo;

SET @RutaArchivo = CONCAT(@DataDir, N'\Productos\catalogo.csv');
EXEC gestion_producto.Importar_catalogo_csv @RutaArchivo;

SET @RutaArchivo = CONCAT(@DataDir, N'\Productos\Electronic accessories.xlsx');
EXEC gestion_producto.Importar_Electronicos @RutaArchivo;

SET @RutaArchivo = CONCAT(@DataDir, N'\Ventas_registradas.csv');
EXEC gestion_venta.Importar_ventas_csv @RutaArchivo;
GO

