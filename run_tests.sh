#!/bin/bash
# Ejecutar colección Postman con Newman

echo "Ejecutando colección de Postman..."
newman run swagger_petstore_postman_collection_full.json
