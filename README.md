# QA Lead Challenge -  Petstore

Este repositorio contiene los tests diseñados para evaluar el endpoint `/pet` de la API pública 

---

## Herramientas utilizadas

- Postman
- Colección exportada en formato `.json`
- Propuesta de integración con CI/CD usando Newman

---

## Archivos entregables

- `plan_pruebas_petstore.md` → Detalle del plan de pruebas manuales
- `plan_pruebas_petstore.pdf` → Versión en PDF
- `swagger_petstore_postman_collection_full.json` → Colección completa con pruebas de POST, GET, PUT, DELETE

---

## Instrucciones para correr los tests

1. Importar la colección en Postman.
2. Ejecutar cada request por separado o como una colección completa.
3. (Opcional) Para usar en CI/CD:

```
newman run swagger_petstore_postman_collection_full.json
```

---

## Validaciones automatizadas incluidas

- Status codes
- Validaciones de campos esperados
- Casos positivos y negativos
- Verificación de actualizaciones
- Manejo de errores

---

## Autor

Brenda  
QA Manager & Tester  
