# Taller 8
## Jesus Dario Villamizar Bohada - 2191960 

## 1. Por qué es importante para un planificador diferenciar entre un programa limitado por I/O y por CPU?

Un programa limitado por I/O significa que gran parte del tiempo de ejecución del programa se gasta esperando que se realicen operaciones de entrada/salida (I/O). Estos programas suelen requerir una gran cantidad de recursos de entrada/salida, como acceso a la red o al disco duro, y la ejecución de estas operaciones puede ser relativamente lenta en comparación con el tiempo de procesamiento de la CPU. En este caso, el planificador del sistema operativo puede priorizar los procesos que no estén esperando operaciones de entrada/salida para maximizar el uso de la CPU, y así evitar que se desperdicien ciclos de procesamiento.

Por otro lado, un programa limitado por CPU significa que el programa requiere una gran cantidad de tiempo de procesamiento de la CPU para completarse. En este caso, el planificador del sistema operativo puede priorizar los procesos que necesiten más tiempo de CPU para minimizar el tiempo de respuesta y maximizar el rendimiento general del sistema.

En resumen, diferenciar entre programas limitados por I/O y por CPU es importante para que el planificador del sistema operativo pueda asignar de manera óptima los recursos del sistema para maximizar el rendimiento y la eficiencia del sistema en general.








2. Como entran en conflicto en determinadas configuraciones la utilización de CPU y tiempo de
respuesta?
3. Como entran en conflicto en determinadas configuraciones el tiempo medio de procesamiento y
tiempo máximo de espera?
4. Como entran en conflicto en determinadas configuraciones la utilización de los dispositivos I/O
y la utilización de la CPU?
5. Considere el siguiente conjunto de procesos, todos llegan al mismo tiempo en el orden del
subíndice:
![image](https://github.com/DarioVillamizar99/Sistemas-Operacionales/assets/129220874/89bbcbbf-ae61-41b6-b460-3a814ebb4b18)

Dibuje el diagrama de Gantt para FCFS, SJF, por prioridades (# de prioridad baja = a alta
prioridad) y RR (cuanto = 1).

6. Cual es el tiempo de ejecución de cada proceso para cada algoritmo?
7. Cual es el tiempo de espera de cada proceso para cada algoritmo?
8. Que algoritmo puede dar lugar a bloqueos indefinidos?
9. Considere un sistema que implementa una planificación por colas multinivel. Que estrategia
puede utilizar una computadora para maximizar la cantidad de tiempo de CPU asignada al
proceso del usuario?
