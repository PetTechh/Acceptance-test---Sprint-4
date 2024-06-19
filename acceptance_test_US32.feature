Feature: Mostrar veterinarias cercanas
 Como propietario/a de mascota autenticado y suscrito a un plan,
 Quiero visualizar las veterinarias alrededor de mi zona,
 Para elegir una y atender a mi mascota.

 Scenario: Mostrar lista de veterinarias cercanas con éxito
   Given el usuario está autenticado y suscrito a un plan
     And tiene la ubicación activada en su dispositivo
     And hay veterinarias registradas en la zona del usuario
   When abre la aplicación y selecciona la opción "Mostrar veterinarias cercanas"
   Then la aplicación muestra una lista de veterinarias cercanas a la ubicación del usuario

 Scenario: No se encuentran veterinarias cercanas
   Given el usuario está autenticado y suscrito a un plan
     And tiene la ubicación activada en su dispositivo
     And no hay veterinarias registradas en la zona del usuario
   When intenta acceder a la opción "Mostrar veterinarias cercanas"
   Then la aplicación muestra un mensaje de error indicando que no encuentra veterinarias cercanas

 Examples: Información mostrada de veterinarias cercanas
   | Nombre de la veterinaria   | Distancia desde tu ubicación | Dirección   | Horario de atención   | Calificación         |
   | Veterinaria "Mi Mascota"   | 0.5 km                       | Calle 123   | 8:00 am - 6:00 pm     | 4.5 de 5 estrellas   |
   | Veterinaria "Pet Care"     | 1.2 km                       | Av. 456     | 9:00 am - 7:00 pm     | 4.0 de 5 estrellas   |
   | Veterinaria "Animalia"     | 2.0 km                       | Jr. 789     | 10:00 am - 8:00 pm    | 4.2 de 5 estrellas   |
