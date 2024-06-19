Feature: Añadir ubicación
 Como veterinaria o personal autorizado de la clínica veterinaria,
 Quiero añadir la ubicación de mi centro de atención,
 Para mostrar la ubicación actual de mi centro de atención.

 Scenario: Registro de ubicación de veterinaria
   Given el usuario está autenticado en la aplicación como veterinario/a o personal autorizado
   When se selecciona la opción añadir ubicación de la veterinaria
   Then la aplicación le mostrará el mapa para poder elegir la ubicación que desea guardar para su veterinaria

 Scenario: Intento de añadir ubicación sin autorización
   Given el usuario no está autenticado en la aplicación como veterinario/a o personal de la clínica
   When intenta añadir la ubicación de un centro de atención
   Then la aplicación detecta que el usuario no tiene los permisos adecuados
     And le muestra un mensaje de error indicando que esta función está disponible solo para personal autorizado

 Scenario: Actualización de ubicación existente
   Given el usuario está autenticado en la aplicación como veterinario/a o personal autorizado
   When necesita actualizar la ubicación de su centro de atención debido a una reubicación
   Then la aplicación permite al usuario editar la ubicación existente del centro de atención
     And guarda los cambios realizados

 Examples: Tipos de ubicación
   | tipo_ubicacion    |
   | Clínica veterinaria |
   | Hospital veterinario |
   | Centro de emergencias |
 
 Examples: Añadir ubicación
   | ubicacion            | latitud | longitud |
   | Av. Panamericana 123 | 19.4326 | -99.1332 |
   | Calle 5 de Mayo 456  | 19.4326 | -99.1332 |
   | Av. Insurgentes 789  | 19.4326 | -99.1332 |