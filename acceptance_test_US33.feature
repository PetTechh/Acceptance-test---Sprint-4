Feature: Ver las valoraciones y comentarios de la veterinaria
 Como veterinario/a o personal autorizado de la clínica veterinaria,
 Quiero poder visualizar las valoraciones y comentarios de mi veterinaria,
 Para mejorar en los aspectos negativos que pueda tener.

 Scenario: Ver valoraciones y comentarios de la veterinaria con éxito
   Given el usuario está autenticado en la aplicación como veterinario/a o personal autorizado
   When accede a la sección de valoraciones y comentarios de la veterinaria en la aplicación
   Then la aplicación muestra una lista de valoraciones y comentarios dejados por los clientes sobre la veterinaria

 Scenario: Comunicación directa con los clientes insatisfechos
   Given el usuario está autenticado en la aplicación como veterinario/a o personal autorizado
   When encuentra un comentario negativo sobre la veterinaria
   Then la aplicación proporciona la opción de responder al comentario
     And la veterinaria aborde directamente el problema para resolver que haya surgido

 Examples: Tipos de valoraciones
   | valoración |
   | 1 estrella |
   | 2 estrellas |
   | 3 estrellas |
   | 4 estrellas |
   | 5 estrellas |

 Examples: Aspectos a mejorar
   | aspecto             |
   | Atención al cliente |
   | Infraestructura     |
   | Puntualidad         |
   | Precios             |
   | Conocimientos       |