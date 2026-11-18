
# MoviCibao-BDD

## Práctica 5.2 - Pruebas BDD con Gherkin

**Proyecto:** MoviCibao  
**Metodología:** Behavior Driven Development (BDD)  
**Lenguaje:** Gherkin  
**Asignatura:** Pruebas de Software

---

## 1. Descripción del proyecto

MoviCibao es una aplicación web orientada a facilitar el acceso a información sobre el transporte público. Permite a los usuarios consultar rutas y reportar incidencias relacionadas con el servicio de transporte.

## 2. Funcionalidad principal

La funcionalidad seleccionada para esta práctica es el registro y envío de reportes de incidencias.

El usuario puede seleccionar un tipo de incidencia, escribir una descripción del problema y enviar el reporte para que quede registrado en el sistema.

## 3. ¿Qué es BDD?

BDD (Behavior Driven Development) es una metodología de desarrollo de software que permite describir el comportamiento esperado de una aplicación mediante escenarios comprensibles para desarrolladores, testers y usuarios.

Se utiliza Gherkin para estructurar los escenarios mediante las siguientes palabras clave:

- **Given:** Define las condiciones iniciales.
- **When:** Describe la acción que realiza el usuario.
- **Then:** Establece el resultado esperado.
- **And:** Permite agregar condiciones o acciones adicionales.

## 4. Escenarios de prueba

Se diseñaron seis escenarios utilizando Gherkin:

| Escenario | Resultado esperado |
|---|---|
| Enviar un reporte correctamente | Reporte registrado |
| Enviar un reporte con campos vacíos | Envío rechazado |
| Descripción demasiado corta | Reporte rechazado |
| No seleccionar tipo de incidencia | Envío rechazado |
| Confirmación después del registro | Confirmación y formulario limpio |
| Error de conexión con el servidor | Mensaje de error |

Los escenarios completos se encuentran en el archivo `escenarios.feature`.

## 5. Tipos de pruebas realizadas en el diseño

**Casos exitosos:**
- Registro correcto de una incidencia.
- Confirmación del registro.
- Validación de la respuesta exitosa del servidor.

**Casos de error:**
- Campos obligatorios vacíos.
- Descripción demasiado corta.
- Falta de selección del tipo de incidencia.
- Error de conexión con el servidor.

## 6. Importancia de estas pruebas

La utilización de BDD permite identificar cómo debe comportarse la aplicación ante diferentes situaciones, incluyendo acciones correctas y errores del usuario o del servidor.

Esto ayuda a mejorar la calidad del software, detectar posibles fallos y garantizar una mejor experiencia para los usuarios.

## 7. Estructura del repositorio

```text
MoviCibao-BDD/
│
├── README.md
│
└── escenarios.feature
```

## 8. Conclusión

Mediante esta práctica se aplicó la metodología BDD utilizando Gherkin para documentar el comportamiento esperado de MoviCibao.

Se elaboraron seis escenarios de prueba que contemplan situaciones exitosas y casos de error, permitiendo establecer las respuestas que debe proporcionar el sistema ante diferentes acciones.

**Nota:** Los escenarios fueron documentados utilizando Gherkin. No se ejecutaron mediante un framework de automatización.
