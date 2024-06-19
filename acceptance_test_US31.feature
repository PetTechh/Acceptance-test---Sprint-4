Feature: Mostrar tu ubicación actual
 Como propietario/a de mascota autenticado y suscrito a un plan,
 Quiero poder visualizar mi ubicación,
 Para buscar centros de atención veterinaria cerca.

 Scenario: Mostrar ubicación actual del usuario con éxito
   Given el usuario está autenticado como propietario/a en la versión gratuita o suscrito en la aplicación
   When selecciona la opción para mostrar su ubicación actual con el propósito de buscar centros
   Then la aplicación accede a la ubicación actual del usuario
     And la muestra en el mapa de manera precisa

 Scenario: Imposibilidad de obtener la ubicación actual del usuario
   Given el usuario está autenticado como propietario/a en la versión gratuita o suscrito en la aplicación
   When intenta acceder a la opción mostrar su ubicación actual
   Then la aplicación intenta obtener la ubicación actual del usuario
   But hay una falla en el dispositivo o el usuario ha desactivado su GPS
   And la aplicación muestra un mensaje de error indicando que no se pudo obtener la ubicación
   And sugiere que active la función de ubicación en su dispositivo

  Examples: Tipos de centros de atención
    | tipo_centro                |
    | Clínica veterinaria        |
    | Hospital veterinario       |
    | Centro de emergencias 24/7 |

 Examples: Informacion de la ubicación actual
    | latitud | longitud |
    | 19.4326 | -99.1332 |
    | 20.6596 | -103.3496 |
    | 25.6866 | -100.3161 |

