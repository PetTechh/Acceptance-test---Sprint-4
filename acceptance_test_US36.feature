Feature: Ver reseñas y evaluación
  Como propietario/a de mascota autenticado y suscrito a un plan,
  Quiero poder ver y filtrar las reseñas y valoraciones de cada veterinaria,
  Para facilitar el proceso de selección de la atención que mejor se ajuste a mis necesidades.

  Escenario: Visualización de reseñas y evaluación
    Dado que el propietario/a de mascota está autenticado y suscrito a un plan
    Cuando selecciona la opción para ver las reseñas y valoraciones de una veterinaria,
    Entonces la aplicación mostrará una lista de reseñas y valoraciones dejadas por otros usuarios.

  Escenario: Ver reseñas y evaluaciones con preferencias de búsqueda
    Dado que el propietario/a de mascota está autenticado y busca información con preferencias específicas
    Cuando desea visualizar las reseñas y evaluaciones de una veterinaria con filtros de búsqueda
    Entonces la aplicación permite al usuario aplicar filtros de búsqueda para ver solo la información que cumpla con sus criterios específicos, como la puntuación dada por otros usuarios.

  Escenario: Selección de la información a visualizar
    Dado que el propietario/a de mascota no tiene preferencias específicas,
    Cuando el usuario no selecciona información para visualizar,
    Entonces la aplicación muestra información general, como la descripción de una veterinaria y su información básica.

  Ejemplos: Tipos de valoración
    | valoración |
    | 1 estrella |
    | 2 estrellas |
    | 3 estrellas |
    | 4 estrellas |
    | 5 estrellas |

  Ejemplos: Planes de suscripción
    | plan          |
    | Plan Básico   |
    | Plan Familiar |
    | Plan Premium  |