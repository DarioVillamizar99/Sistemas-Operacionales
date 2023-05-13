# Taller 8
## Jesus Dario Villamizar Bohada - 2191960 

## 1. Por qué es importante para un planificador diferenciar entre un programa limitado por I/O y por CPU?

Un programa limitado por I/O significa que gran parte del tiempo de ejecución del programa se gasta esperando que se realicen operaciones de entrada/salida (I/O). Estos programas suelen requerir una gran cantidad de recursos de entrada/salida, como acceso a la red o al disco duro, y la ejecución de estas operaciones puede ser relativamente lenta en comparación con el tiempo de procesamiento de la CPU. En este caso, el planificador del sistema operativo puede priorizar los procesos que no estén esperando operaciones de entrada/salida para maximizar el uso de la CPU, y así evitar que se desperdicien ciclos de procesamiento.

Por otro lado, un programa limitado por CPU significa que el programa requiere una gran cantidad de tiempo de procesamiento de la CPU para completarse. En este caso, el planificador del sistema operativo puede priorizar los procesos que necesiten más tiempo de CPU para minimizar el tiempo de respuesta y maximizar el rendimiento general del sistema.

En resumen, diferenciar entre programas limitados por I/O y por CPU es importante para que el planificador del sistema operativo pueda asignar de manera óptima los recursos del sistema para maximizar el rendimiento y la eficiencia del sistema en general.

## 2. Como entran en conflicto en determinadas configuraciones la utilización de CPU y tiempo de respuesta?

En determinadas configuraciones, la utilización de CPU y el tiempo de respuesta pueden entrar en conflicto porque son dos objetivos a menudo opuestos en la planificación de tareas en un sistema operativo.

La utilización de CPU se refiere al porcentaje de tiempo en que la CPU está ocupada procesando tareas, y un alto nivel de utilización de CPU puede ser beneficioso para mejorar el rendimiento del sistema al procesar tareas más rápidamente. Sin embargo, si se asigna demasiada CPU a un proceso, otros procesos pueden sufrir una disminución en su rendimiento y retrasarse, lo que puede aumentar el tiempo de respuesta global del sistema.

El tiempo de respuesta se refiere al tiempo que tarda un proceso en recibir una respuesta a una solicitud o acción. Un tiempo de respuesta rápido es deseable para la mayoría de las aplicaciones, especialmente las interactivas, ya que una respuesta más rápida hace que el sistema sea más usable. Pero, si se da prioridad a un tiempo de respuesta rápido para un proceso, se puede retrasar el rendimiento de otros procesos y reducir la utilización de CPU global.

## 3. Como entran en conflicto en determinadas configuraciones el tiempo medio de procesamiento y tiempo máximo de espera?

El tiempo medio de procesamiento se refiere al promedio de tiempo que tardan las tareas en procesarse. Por lo general, es deseable minimizar el tiempo medio de procesamiento, ya que esto significa que las tareas se están procesando de manera más eficiente y rápida.

El tiempo máximo de espera se refiere al tiempo máximo que un proceso puede esperar en la cola de procesamiento antes de ser procesado. Este tiempo máximo se establece para garantizar que los procesos no se queden en la cola de espera indefinidamente y para garantizar que los procesos críticos se procesen antes que los menos críticos. Sin embargo, si se establece un tiempo máximo de espera demasiado corto, los procesos críticos pueden tardar más en procesarse, lo que puede aumentar el tiempo medio de procesamiento.

Estos dos procesos pueden llegar a entrar en conflicto debido a que son dos obejtivos opuestos en la planificacion de tareas en el SO

## 4. Como entran en conflicto en determinadas configuraciones la utilización de los dispositivos I/O y la utilización de la CPU?

La utilización de los dispositivos I/O, como el disco duro o la red, se refiere a la cantidad de tiempo en que se están realizando operaciones de entrada/salida. En muchos casos, los procesos requieren operaciones de entrada/salida para acceder a archivos o enviar y recibir datos a través de la red, y la utilización de los dispositivos I/O puede limitar el rendimiento del sistema.

Sin embargo, la utilización de la CPU se refiere a la cantidad de tiempo en que la CPU está procesando tareas. Si un proceso utiliza demasiado tiempo de la CPU, puede restringir la capacidad de otros procesos para acceder a los dispositivos I/O, lo que puede aumentar el tiempo de espera para las operaciones de entrada/salida y disminuir el rendimiento del sistema.

Ya que ambos recursos son limitados y a menudo necesarios par ale rendimiento del sistema pueden entrar en conflicto, por esot es importante encontrar un equliibrio adecuado para poder maximizar el rendimiento general del sistema

## 5. Considere el siguiente conjunto de procesos, todos llegan al mismo tiempo en el orden del subíndice:

![image](https://github.com/DarioVillamizar99/Sistemas-Operacionales/assets/129220874/89bbcbbf-ae61-41b6-b460-3a814ebb4b18)

Dibuje el diagrama de Gantt para FCFS, SJF, por prioridades (# de prioridad baja = a alta
prioridad) y RR (cuanto = 1).


| Proceso | FCFS | SJF | Prioridades | RR (quantum=1) |
|---------|------|-----|------------|----------------|
| P1      | 0-10 | 0-10| 10-20      | 0-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20 |
| P2      | 10-11| 10-11| 0-1        | 1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-0 |
| P3      | 11-13| 11-13| 2-4        | 13-14-15-16-17-18-19-20-0-1-2 |
| P4      | 13-14| 13-14| 1-3        | 14-15-16-17-18-19-20-0-1 |
| P5      | 14-19| 14-19| 4-5        | 19-0-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18 |


## 6. Cual es el tiempo de ejecución de cada proceso para cada algoritmo?

Para el algoritmo FCFS:
•	Proceso 1: 10 unidades de tiempo

•	Proceso 2: 1 unidad de tiempo

•	Proceso 3: 2 unidades de tiempo

•	Proceso 4: 1 unidad de tiempo

•	Proceso 5: 5 unidades de tiempo

Para el algoritmo SJF:
•	Proceso 2: 1 unidad de tiempo

•	Proceso 4: 1 unidad de tiempo

•	Proceso 3: 2 unidades de tiempo

•	Proceso 5: 5 unidades de tiempo

•	Proceso 1: 10 unidades de tiempo

Para el algoritmo de prioridades:
•	Proceso 2: 1 unidad de tiempo

•	Proceso 5: 5 unidades de tiempo

•	Proceso 1: 10 unidades de tiempo

•	Proceso 3: 2 unidades de tiempo

•	Proceso 4: 1 unidad de tiempo

Para el algoritmo RR (cuanto = 1):
•	Proceso 1: 9 unidades de tiempo

•	Proceso 2: 1 unidad de tiempo

•	Proceso 3: 7 unidades de tiempo

•	Proceso 4: 1 unidad de tiempo

•	Proceso 5: 7 unidades de tiempo


## 7. Cual es el tiempo de espera de cada proceso para cada algoritmo?

Para el algoritmo FCFS:
•	Proceso 1: 0 unidades de tiempo

•	Proceso 2: 10 unidades de tiempo

•	Proceso 3: 11 unidades de tiempo

•	Proceso 4: 13 unidades de tiempo

•	Proceso 5: 14 unidades de tiempo

Para el algoritmo SJF:
•	Proceso 2: 0 unidades de tiempo

•	Proceso 4: 2 unidades de tiempo

•	Proceso 3: 3 unidades de tiempo

•	Proceso 5: 5 unidades de tiempo

•	Proceso 1: 8 unidades de tiempo

Para el algoritmo de prioridades:
•	Proceso 2: 0 unidades de tiempo

•	Proceso 5: 1 unidad de tiempo

•	Proceso 1: 12 unidades de tiempo

•	Proceso 3: 13 unidades de tiempo

•	Proceso 4: 14 unidades de tiempo

Para el algoritmo RR (cuanto = 1):
•	Proceso 1: 14 unidades de tiempo

•	Proceso 2: 0 unidades de tiempo

•	Proceso 3: 15 unidades de tiempo

•	Proceso 4: 2 unidades de tiempo

•	Proceso 5: 11 unidades de tiempo


## 8. Que algoritmo puede dar lugar a bloqueos indefinidos?

Se trata del algoritmo de planificacion por prioridades, ya que este algoritmo, si un proceso con una prioridad baja está en ejecución y hay procesos con una prioridad alta esperando en la cola de listos, entonces es posible que estos procesos de alta prioridad nunca lleguen a ejecutarse si continuamente llegan procesos de baja prioridad. Esto se conoce como el problema de inanición o starvation.

En el peor de los casos, si hay un gran número de procesos con prioridades bajas y solo uno o unos pocos con prioridades altas, estos últimos pueden quedar bloqueados indefinidamente, ya que nunca se les dará la oportunidad de ejecutarse.

## 9. Considere un sistema que implementa una planificación por colas multinivel. Que estrategia puede utilizar una computadora para maximizar la cantidad de tiempo de CPU asignada al proceso del usuario?

Una estrategia que una computadora puede utilizar para maximizar la cantidad de tiempo de CPU asignada al proceso del usuario en un sistema que implementa una planificación por colas multinivel es la técnica de retroalimentación de colas (feedback queue).

En esta técnica, se utilizan varias colas con diferentes prioridades para los procesos. Cuando un proceso llega al sistema, se coloca en la cola de nivel más alto. Si un proceso no se completa en su ronda de asignación de tiempo, se mueve a la siguiente cola de nivel inferior y así sucesivamente. De esta manera, los procesos que requieren más tiempo de CPU pueden recibir más tiempo de ejecución.

Además, se puede implementar un mecanismo de envejecimiento para garantizar que los procesos de baja prioridad no se queden en espera indefinidamente. Con este mecanismo, la prioridad de los procesos que han estado esperando en la cola más baja se aumenta gradualmente a medida que el tiempo de espera aumenta.

Al utilizar esta técnica de retroalimentación de colas y el mecanismo de envejecimiento, se puede maximizar la cantidad de tiempo de CPU asignada al proceso del usuario, al mismo tiempo que se evita el problema de inanición.
