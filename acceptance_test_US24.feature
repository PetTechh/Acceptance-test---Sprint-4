Feature: Visualizar resumen del historial médico
 Como veterinario/a o personal autorizado de la clínica veterinaria,
 Quiero poder visualizar el resumen del historial médico de cada mascota,
 Para considerar sus antecedentes en la atención de la cita.

 Scenario: Visualización del resumen del historial médico exitoso
   Given el usuario está autenticado en la aplicación como veterinario/a o personal autorizado
   When el usuario requiere el resumen del historial médico para atender a una mascota
   Then el usuario obtiene la información del historial médico de la mascota, incluyendo vacunas, cirugías, diagnósticos y cualquier otra información relevante

 Scenario: Visualización del resumen del historial médico por orden de fecha exitoso
   Given el usuario está autenticado en la aplicación como veterinario/a o personal autorizado
   When el usuario requiere el resumen del historial médico filtrando por orden de fecha para atender a una mascota
   Then el usuario obtiene la información según la fecha filtrada, del historial médico de la mascota, incluyendo vacunas, cirugías, diagnósticos y cualquier otra información relevante

 Scenario: Validación de la fecha filtrada
   Given el usuario está autenticado en la aplicación como veterinario/a o personal autorizado
   When el usuario requiere el resumen del historial médico filtrando por orden de fecha, pero esta no es válida
   Then la aplicación muestra un mensaje de error indicando que la fecha es errónea
     And no permite obtener el resumen de la mascota

 Examples: Información de vacunas aplicadas
    | vacuna          | fecha       |
    | Triple viral    | 01/01/2020  |
    | Antirrábica     | 01/01/2020  |
    | Parvovirus      | 01/01/2020  |
  
 Examples: Información de cirugías realizadas
    | cirugía         | fecha       |
    | Esterilización  | 01/01/2020  |
    | Extracción      | 01/01/2020  |
    | Amputación      | 01/01/2020  |

 Examples: Información de diagnósticos previos
    | diagnóstico     | fecha       |
    | Parvovirus      | 01/01/2020  |
    | Moquillo        | 01/01/2020  |
    | Leptospirosis   | 01/01/2020  |

 Examples: Información de tratamiento y medicamentos
    | tratamiento     | medicamento  | fecha       |
    | Antibiótico     | Amoxicilina  | 01/01/2020  |
    | Antiparasitario | Ivermectina  | 01/01/2020  | 
    | Antiinflamatorio| Prednisona   | 01/01/2020  |

 Examples: Información de alergias conocidas
    | alergia         | fecha       |
    | Polen           | 01/01/2020  |
    | Polvo           | 01/01/2020  |
    | Alimento        | 01/01/2020  |