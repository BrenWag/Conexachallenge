# Plan de Pruebas - API Swagger Petstore `/pet`

## Objetivo

Validar las operaciones CRUD del recurso `/pet` de la API pública de Swagger Petstore. Se realizan pruebas manuales y se propone una automatización básica para integrarlo a CI/CD.

---

## Endpoints cubiertos

- POST /pet
- GET /pet/{petId}
- PUT /pet
- DELETE /pet/{petId}

---

## Casos de prueba

### 🔹 POST /pet

| Tipo      | Descripción                          | Entrada                                            | Esperado                         |
|-----------|--------------------------------------|----------------------------------------------------|----------------------------------|
| Positivo  | Crear mascota válida                 | name: BrendaDog, status: available                 | 200/201, JSON con id             |
| Negativo  | Crear sin nombre                     | status: available                                  | 400 o error de validación        |

---

### 🔹 GET /pet/{petId}

| Tipo      | Descripción                          | Entrada                  | Esperado                         |
|-----------|--------------------------------------|--------------------------|----------------------------------|
| Positivo  | Obtener mascota por ID válido        | petId: 123456            | 200, name: BrendaDog             |
| Negativo  | Buscar mascota inexistente           | petId: 999999999         | 404                              |

---

### 🔹 PUT /pet

| Tipo      | Descripción                          | Entrada                                            | Esperado                         |
|-----------|--------------------------------------|----------------------------------------------------|----------------------------------|
| Positivo  | Actualizar status de mascota válida  | id: 123456, name: BrendaDog, status: sold          | 200, status actualizado          |
| Negativo  | Actualizar sin nombre                | id: 123457, status: pending                        | 400 o error de validación        |

---

### 🔹 DELETE /pet/{petId}

| Tipo      | Descripción                          | Entrada                  | Esperado                         |
|-----------|--------------------------------------|--------------------------|----------------------------------|
| Positivo  | Eliminar mascota existente           | petId: 123456            | 200                              |
| Negativo  | Eliminar mascota inexistente         | petId: 999999999         | 404                              |

---

## Propuesta de validación automatizada (CI/CD)

- Validación de status codes esperados.
- Confirmación de contenido esperado en JSON.
- Validación de performance (tiempo de respuesta < 1s).
- Ejecución automática en cada pull request (CI/CD).
- Uso de Postman/Newman para automatización rápida.

---

## Repositorio o colección

Se entrega una colección de Postman con todos los test mencionados. Puede ejecutarse manualmente o integrarse con Newman.

