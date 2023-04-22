# Taller 5
## Jesus Dario Villamizar Bohada - 2191960


## 1. Compare las diferencias entre la planeación a corto plazo y largo plazo.

RTA: *  La principal diferencia entre la planeación a corto y largo plazo es el horizonte temporal. La planeación a corto plazo se enfoca en el futuro inmediato, por lo general de un año o menos, mientras que la planeación a largo plazo abarca varios años, incluso décadas.

* La planeación a largo plazo tiene un enfoque estratégico que se enfoca en los objetivos de largo plazo de la organización. La planeación a corto plazo tiene un enfoque más táctico que se centra en la ejecución de planes y objetivos inmediatos.

* La planeación a largo plazo tiene un alcance más amplio que la planeación a corto plazo. La planeación a largo plazo implica una revisión completa de los objetivos de la organización, la estrategia y los recursos necesarios para alcanzar esos objetivos. En cambio, la planeación a corto plazo se enfoca en la realización de tareas específicas.

## 2. Caracterice dos procesos que se puedan considerar a mediano plazo.

RTA: 1) El desarrollo de nuevos productos es un proceso que implica la investigación, el diseño, la producción y la comercialización de nuevos productos. Este proceso suele durar varios meses o incluso años y se considera de mediano plazo.

2) La expansión de la capacidad de producción es otro proceso que se puede considerar a mediano plazo. Este proceso implica aumentar la capacidad de producción de una empresa para satisfacer la creciente demanda de sus productos o servicios.

## 3. Describa las acciones que toma el kernel para el cambio de contexto entre procesos.

1) Guardar el contexto del proceso actual
2) Elegir el siguiente proceso a ejecutar
3) Restaurar el contexto del nuevo proceso
4) Actualizar la tabla de procesos
5) Realizar la transición del modo usuario al modo kerne
6) Realizar la transición del modo kernel al modo usuario

## 4. Defina las ventajas y desventajas desde el punto de vista del programador para comunicación síncrona y asíncrona.

RTA: Ventajas

* Control de flujo: La comunicación síncrona permite un mayor control de flujo entre los procesos, ya que el proceso emisor espera a que el proceso receptor complete su tarea antes de continuar.

* Comunicación confiable: La comunicación síncrona es más confiable que la comunicación asíncrona, ya que el proceso emisor recibe una confirmación de que el proceso receptor ha recibido el mensaje.

* Fácil de implementar: La comunicación síncrona es más fácil de implementar que la comunicación asíncrona, ya que no requiere el uso de mecanismos de sincronización adicionales.

Desventajas

+ Bloqueo: La comunicación síncrona puede bloquear la ejecución del proceso emisor si el proceso receptor no está listo para recibir el mensaje.

+ Retardo: La comunicación síncrona puede introducir un retardo en la ejecución del proceso emisor, ya que debe esperar a que el proceso receptor complete su tarea antes de continuar.

## 5. Defina las ventajas y desventajas desde el punto de vista del OS para envío por copia y envío por referencia.

- Enviio por copia.

Ventajas:

* El envío por copia es seguro, ya que evita que un proceso modifique accidentalmente o intencionalmente los datos de otro proceso.
*  El envío por copia permite que cada proceso tenga su propia copia de los datos, lo que evita problemas de sincronización y garantiza que los cambios realizados por un proceso no afecten a otros procesos.

Desventajas:

+  El envío por copia puede ser ineficiente si los datos que se envían son grandes o si se realizan muchas copias.
+  El envío por copia puede sobrecargar el sistema si se realizan muchas copias de datos grandes.

- Envio por referencia.

Ventajas:

* El envío por referencia es eficiente, ya que no se copian los datos.
* El envío por referencia permite que varios procesos compartan los mismos datos, lo que puede ser útil en algunas aplicaciones.

Desventajas:

+ El envío por referencia puede ser inseguro, ya que un proceso puede modificar accidentalmente o intencionalmente los datos de otro proceso.
+ El envío por referencia puede ser propenso a problemas de sincronización, ya que los cambios realizados por un proceso pueden afectar a otros procesos que comparten los mismos datos.

## 6. Defina las ventajas y desventajas desde el punto de vista del OS para mensajes de tamaño fijo y de tamaño variable.

- Mensajes de tamaño fijo.

Ventajas: 
 
 * Los mensajes de tamaño fijo son eficientes, ya que el sistema operativo sabe exactamente cuántos bytes se enviarán y puede reservar la cantidad adecuada de memoria de antemano.
 * Los mensajes de tamaño fijo son más fáciles de implementar que los mensajes de tamaño variable, ya que no se necesita ninguna lógica adicional para determinar el tamaño del mensaje.

Desventaja:

+ Los mensajes de tamaño fijo son inflexibles, ya que no pueden adaptarse a cambios en la cantidad de datos que se envían.
+ Los mensajes de tamaño fijo pueden desperdiciar espacio si se envían menos datos de los que se ha reservado. 

- Mensajes de tamañano variable.

Ventajas:

* Los mensajes de tamaño variable son flexibles y pueden adaptarse a cambios en la cantidad de datos que se envían.
* Los mensajes de tamaño variable pueden ahorrar espacio si se envían menos datos de lo que se ha reservado.

Desventajas:

+ Los mensajes de tamaño variable son menos eficientes que los mensajes de tamaño fijo, ya que el sistema operativo necesita reservar suficiente memoria para el mensaje completo, incluso si el mensaje es más pequeño que el tamaño reservado.
+ Los mensajes de tamaño variable son más complejos de implementar que los mensajes de tamaño fijo, ya que se necesita lógica adicional para determinar el tamaño del mensaje y reservar la cantidad adecuada de memoria.

## 7. Describa los estados de un proceso.

1) Nuevo: El proceso acaba de ser creado y aún no se ha inicializado. En este estado, el sistema operativo reserva la memoria necesaria para el proceso y realiza otras tareas de configuración necesarias.

2) Listo: El proceso está configurado y listo para ejecutarse, pero aún no se le ha asignado ningún tiempo de CPU. En este estado, el proceso está esperando en una cola de procesos listos, junto con otros procesos que están esperando para ser ejecutados.

3) En ejecución: El proceso está actualmente siendo ejecutado en la CPU. Solo puede haber un proceso en este estado en cualquier momento dado, ya que la CPU solo puede ejecutar una instrucción a la vez.

4) Bloqueado: El proceso está temporalmente inactivo debido a una espera, como la espera de entrada/salida o la espera de un recurso. En este estado, el proceso no está utilizando la CPU, pero aún no está listo para ser ejecutado.

5) Terminado: El proceso ha finalizado su ejecución y está siendo eliminado del sistema. En este estado, se liberan los recursos utilizados por el proceso y se registra información relevante sobre el proceso para futuras referencias.

## 8. Que datos se encuentran en un PCB.

RTA: * Identificación del proceso
* Información de estado
* Contador de programa
* Registro de la CPU
* Informacion de la memoria
* Informacion de los recursos 
* Informacion de la programacion

## 9. Describa un modelo de comunicación Cliente-Servidor.

RTA: Primero el cliente inicia una solicitud enviando una solicitud valga la redundancia al servidor, que puede incluir datos especificos que el servidor necesita para procesar dicha solicitud, luego de que el servidor recibe la solicitud la procesa, esto puede incluir la recuperacion de datos de una DB, relaizacion de calculos o la ejecucion de una accion en especifico. Despues de esto el servidor envia la respuesta al cliente, que puede ser los datos que el cliente solicito o la confirmacion de que alguna accion se a completado, luego de esto se repite el proceso.


