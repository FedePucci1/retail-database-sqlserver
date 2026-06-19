# Retail Database — SQL Server

Proyecto académico de diseño e implementación de una base de datos para una organización de ventas minoristas. Incluye definición del modelo, procedimientos almacenados, importación de datos, reportes, seguridad y pruebas funcionales.

## Contenido

- Modelo entidad-relación en `DER/DER.png`.
- Scripts T-SQL de creación de esquemas y tablas.
- Procedimientos de alta, modificación y baja.
- Procesos de importación para sucursales, empleados, productos y ventas.
- Notas de crédito, devoluciones y cifrado de información sensible.
- Reportes XML y lotes de prueba.

## Requisitos

- Microsoft SQL Server.
- SQL Server Management Studio o `sqlcmd`.

## Ejecución

Ejecutar los archivos de `sql/` en orden numérico, desde `00_schema.sql` hasta `10_employee_encryption.sql`. Luego pueden ejecutarse los archivos de `tests/` sobre una base de prueba.

Las importaciones requieren datasets externos que no se incluyen por privacidad y derechos de uso. `tests/02_import_examples.sql` contiene una ruta configurable para usar datos propios.

## Estructura

```text
DER/       diagrama entidad-relación
sql/       creación, procedimientos, importación, seguridad y reportes
tests/     lotes de prueba y ejemplos de invocación
```

## Estado de la curaduría

Los scripts duplicados de la entrega fueron unificados y normalizados a UTF-8. Queda pendiente validar la instalación completa contra una instancia limpia de SQL Server y preparar un dataset sintético redistribuible.

## Autoría

Trabajo académico grupal de Bases de Datos Aplicadas, UNLaM. Consultar [AUTHORS.md](AUTHORS.md) para ver la atribución completa.

## Licencia

Pendiente de acuerdo entre los integrantes del proyecto. Hasta entonces, el código se publica únicamente con fines de demostración y no concede permiso de reutilización.

