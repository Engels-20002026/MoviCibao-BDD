
Feature: Registro de incidencias en MoviCibao
  Como usuario de MoviCibao
  Quiero reportar incidencias del transporte público
  Para informar sobre problemas en las rutas de transporte

  Scenario: Enviar un reporte correctamente
    Given que el usuario se encuentra en el formulario de incidencias
    When selecciona un tipo de incidencia
    And escribe una descripción válida
    And presiona el botón de enviar
    Then el sistema debe registrar el reporte
    And mostrar un mensaje de confirmación

  Scenario: Intentar enviar un reporte con campos vacíos
    Given que el usuario se encuentra en el formulario de incidencias
    When presiona el botón de enviar sin completar los campos obligatorios
    Then el sistema debe impedir el envío
    And mostrar un mensaje indicando que los campos son obligatorios

  Scenario: Enviar una descripción demasiado corta
    Given que el usuario se encuentra en el formulario de incidencias
    When selecciona un tipo de incidencia
    And escribe una descripción demasiado corta
    And presiona el botón de enviar
    Then el sistema debe rechazar el reporte
    And mostrar un mensaje indicando que la descripción no es válida

  Scenario: No seleccionar un tipo de incidencia
    Given que el usuario se encuentra en el formulario de incidencias
    When escribe una descripción válida
    And no selecciona ningún tipo de incidencia
    And presiona el botón de enviar
    Then el sistema debe impedir el envío
    And solicitar que seleccione un tipo de incidencia

  Scenario: Mostrar confirmación después de registrar una incidencia
    Given que el usuario ha completado correctamente el formulario
    When envía el reporte
    And el servidor responde que el registro fue exitoso
    Then el sistema debe mostrar una confirmación
    And limpiar los campos del formulario

  Scenario: Error al conectar con el servidor
    Given que el usuario ha completado correctamente el formulario
    When intenta enviar el reporte
    And el servidor no está disponible
    Then el sistema debe mostrar un mensaje de error
    And informar que no fue posible registrar la incidencia
