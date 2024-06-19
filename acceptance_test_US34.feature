Feature: Añadir valoraciones y comentarios
 Como propietario/a de mascota autenticado y suscrito a un plan,
 Quiero poder realizar comentarios y valoraciones,
 Para calificar la atención de cada centro de atención.

 Scenario: Comentario añadido con éxito
   Given el usuario está autenticado como propietario/a en la versión gratuita o suscrito en la aplicación
   When selecciona la opción para añadir una valoración y comentario sobre un centro de atención
   Then la aplicación presenta un formulario donde el usuario puede ingresar su valoración en forma de puntuación
     And agregar un comentario opcionalmente

 Scenario: Intento de añadir valoración y comentario sin estar suscrito
   Given el usuario está autenticado como propietario/a pero no está suscrito a un plan
   When intenta añadir una valoración acerca de una veterinaria
   Then la aplicación detecta que el usuario no está suscrito a un plan
     And le muestra un mensaje de error indicando que esta función solo está disponible para usuarios suscritos

 Scenario: Edición de valoración y comentario existente
   Given el usuario está autenticado como propietario/a en la versión gratuita o suscrito en la aplicación
   When desea editar una valoración o comentario que realizó anteriormente
   Then la aplicación permite al usuario editar la valoración y/o comentario existente
     And guarda los cambios realizados

 Examples: Planes de suscripción
   | plan          |
   | Plan Básico   |
   | Plan Familiar |
   | Plan Premium  |

 Examples: Informacion de comentarios y valoraciones
   | comentario | valoración |
   | Excelente  | 5 estrellas |
   | Bueno      | 4 estrellas |
   | Regular    | 3 estrellas |
   | Malo       | 2 estrellas |