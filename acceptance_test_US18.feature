Feature: Recordatorio de cita
 Como propietario/a de mascota,
 Quiero poder confirmar una cita veterinaria previamente agendada,
 Para asegurarme de que la cita está programada y evitar confusiones.

 Scenario: Recepción de recordatorio de cita
   Given el propietario/a tiene la función de recibir recordatorios de citas activada
   When se acerca la fecha y hora de la cita veterinaria
   Then la aplicación envía un recordatorio al propietario/a, incluyendo la fecha, hora y lugar de la cita, así como cualquier otra información relevante

 Scenario: Configuración de preferencias de recordatorio
   Given el propietario/a tiene la función de recibir recordatorios de citas activada
   When el propietario/a desea configurar sus preferencias de recordatorio, como la cantidad de tiempo antes de la cita en la que desea recibir el recordatorio
   Then la aplicación permite al propietario/a configurar sus preferencias según sus necesidades

 Scenario: No interés en recibir recordatorios de cita
   Given el propietario/a tiene la función de recibir recordatorios de citas activada
   When el propietario/a decide desactivar la función de recibir recordatorios de citas
   Then la aplicación deja de enviar recordatorios sobre citas al propietario/a

 Examples: Elegir fecha y hora
   | fecha_cita | hora_cita |
   | 2021-10-15 | 10:00     |
   | 2021-10-20 | 15:30     |
   | 2021-10-25 | 09:00     |  

 Examples: Preferencias de recordatorio
   | tiempo_antes_cita |
   | 1 día             |
   | 2 días            |
   | 1 semana          |