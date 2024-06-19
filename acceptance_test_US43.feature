Feature: Endpoint Medical History
 Como desarrollador front-end,
 Quiero acceder a un endpoint en el backend,
 Para gestionar el historial médico de las mascotas, incluyendo el registro de enfermedades y vacunaciones asociadas.

 Scenario: Crear una nueva enfermedad
   Given acceso a la API de gestión del historial médico y permisos para crear enfermedades
   When se envía una solicitud POST con los detalles de la nueva enfermedad
   Then el sistema crea la enfermedad y responde con un código 201 si es exitoso
   And si la enfermedad ya existe, devuelve un código 400 con un mensaje de error

 Scenario: Asociar una enfermedad a un historial médico
   Given acceso a la API de gestión del historial médico y permisos para asociar enfermedades
   When se envía una solicitud POST con los detalles de la asociación de enfermedad
   Then el sistema crea la asociación y responde con un código 201 si es exitoso
   And si el historial médico o la enfermedad no existen, devuelve un código 404 con un mensaje de error

 Scenario: Crear una nueva vacuna
   Given acceso a la API de gestión del historial médico y permisos para crear vacunas
   When se envía una solicitud POST con los detalles de la nueva vacuna
   Then el sistema crea la vacuna y responde con un código 201 si es exitoso
   And si la vacuna ya existe, devuelve un código 400 con un mensaje de error

 Examples: Datos de enfermedad
   | nombre_enfermedad | descripcion                       | tratamiento    |
   | Dermatitis        | Inflamación de la piel            | Crema tópica   |
   | Gastroenteritis   | Inflamación del estómago/intestino| Antidiarreicos |

 Examples: Datos de vacuna
   | nombre_vacuna | tipo_vacuna | fabricante |
   | Antirrábica   | Virus       | VacunaLab  |
   | Polivalente   | Bacteriana  | InmunoBio  |