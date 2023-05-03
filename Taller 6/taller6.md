# Taller 6
## Jesus Dario Villamizar Bohada - 2191960

## 1. Describa dos ejemplos en los que los mecanismos multihilo no proporcionen un mejor rendimiento que el monohilo.
  
* Tareas que son principalmente secuenciales: En algunas tareas, la mayoría del trabajo que se realiza es secuencial y no se puede dividir en subprocesos que se ejecuten simultáneamente. En tales casos, agregar más hilos no mejorará el rendimiento y puede incluso disminuirlo debido a la sobrecarga de comunicación y sincronización entre los hilos. Un ejemplo de este tipo de tarea sería ordenar una lista de elementos. Cualquier algoritmo de ordenación de una lista tiene un límite inferior de tiempo de ejecución que es proporcional al tamaño de la lista, y dividir la lista en subprocesos no acelerará la tarea.

* Tareas con limitaciones de recursos: Algunas tareas pueden tener una limitación de recursos que evita que varios hilos trabajen en paralelo, lo que resulta en una disminución del rendimiento. Por ejemplo, si una tarea implica leer datos de un disco duro, es posible que no se puedan leer datos simultáneamente de diferentes partes del disco debido a limitaciones físicas de los cabezales de lectura/escritura. En tales casos, agregar más hilos no mejorará el rendimiento y puede incluso disminuirlo debido a la competencia por los recursos. Otro ejemplo sería si una tarea requiere un acceso intensivo a la memoria y se ejecuta en una CPU con una cantidad limitada de caché. Agregar más hilos puede aumentar la competencia por el caché y hacer que el rendimiento disminuya.
  
## 2. Describa las acciones que toma una biblioteca de hilos para cambiar el contexto entre hilos de nivel de usuario.

* Suspende el hilo actual: La biblioteca de hilos primero suspende la ejecución del hilo actual y lo retiene en su estado actual.

 * Almacena el contexto del hilo actual: La biblioteca de hilos almacena el contexto del hilo actual, que incluye información como el valor del contador de programa, los registros de la CPU, la pila y otros datos relevantes para la ejecución del hilo.

* Selecciona el siguiente hilo a ejecutar: La biblioteca de hilos utiliza un algoritmo de programación de planificación para seleccionar el siguiente hilo que debe ejecutarse. El algoritmo puede basarse en diferentes criterios, como prioridades, tiempo de espera o algún otro criterio definido por el usuario.

* Restaura el contexto del siguiente hilo: La biblioteca de hilos luego restaura el contexto del hilo seleccionado, lo que implica establecer los registros de la CPU, el contador de programa, la pila y cualquier otra información que se haya guardado previamente.

* Continúa la ejecución del siguiente hilo: Finalmente, la biblioteca de hilos reanuda la ejecución del siguiente hilo.

## 3. Los valores de los registros son componentes del estado de un programa, se comparten entre los hilos de un proceso multihilo? Si, no y porqué?

En un proceso multihilo, los registros de la CPU son componentes del estado de un programa y se comparten entre los hilos que pertenecen a ese proceso. Esto significa que los registros de la CPU pueden ser leídos y escritos por cualquiera de los hilos que están ejecutándose en ese momento.

Cada hilo tiene su propia pila de llamadas, donde se almacenan las variables locales y los valores de retorno de las funciones que se han llamado. Sin embargo, los registros de la CPU no se almacenan en la pila y, por lo tanto, son compartidos por todos los hilos del proceso.

## 4. Los cúmulos de memoria se comparten entre los hilos de un proceso multihilo? Si, no y porqué?

Si, por que todos los hilos pueden acceder a la misma zona de memoria compartida, lo que les permite compartir información y coordinar sus actividades. Es importante tener en cuenta que el acceso a la memoria compartida puede ser más lento que el acceso a la memoria privada debido a la competencia por los recursos de memoria y los posibles conflictos de caché. Por lo tanto, es necesario tener en cuenta la gestión de la memoria compartida al diseñar y optimizar programas multihilo.

## 5. Las variables globales se comparten entre los hilos de un proceso multihilo? Si, no y porqué?

Si, las variables globales se comparten entre los hilos de un proceso multihilo, lo que les permite coordinar sus actividades y compartir información. Sin embargo, es necesario que los hilos sincronicen adecuadamente el acceso a las variables globales para evitar problemas de concurrencia y tener en cuenta la gestión de las variables globales al diseñar y optimizar programas multihilo.

## 6. La memoria de pila se comparten entre los hilos de un proceso multihilo? Si, no y porqué?

La memoria de pila no se comparte entre los hilos de un proceso multihilo. Cada hilo tiene su propia pila de llamadas y su propia memoria de pila separada, lo que permite trabajar de manera independiente y evitar problemas de concurrencia.

## 7. En que ocasiones una solución multihilo que usa múltiples hilos del kernel proporciona mejor rendimiento que un solo hilo sobre un sistema monoprocesador.

Cuando el programa tiene tareas que pueden ejecutarse simultáneamente: Si el programa tiene tareas independientes que pueden ejecutarse simultáneamente, el uso de múltiples hilos puede mejorar significativamente el rendimiento. Por ejemplo, en un programa de procesamiento de imágenes, se pueden utilizar varios hilos para procesar diferentes partes de la imagen simultáneamente. Tambien cuando el programa está diseñado para aprovechar la concurrencia: Si el programa está diseñado específicamente para aprovechar la concurrencia y utiliza mecanismos de sincronización adecuados para coordinar el acceso a los recursos compartidos, el uso de múltiples hilos puede proporcionar un mejor rendimiento. Por ejemplo, un programa que utiliza el modelo de productor-consumidor para procesar datos puede beneficiarse del uso de múltiples hilos.

O cuando el sistema tiene múltiples núcleos de procesador: Si el sistema tiene múltiples núcleos de procesador, el uso de múltiples hilos puede aprovechar mejor los recursos de procesamiento disponibles y proporcionar un mejor rendimiento. Cada hilo puede ejecutarse en un núcleo de procesador diferente, lo que permite una mayor utilización de los recursos del sistema.

## 8. Puede una solución multihilo que utiliza múltiples hilos de usuario conseguir mejor rendimiento en un sistema multiprocesador que en un sistema de un solo procesador?

En general, una solución multihilo que utiliza múltiples hilos de usuario puede obtener mejor rendimiento en un sistema multiprocesador que en un sistema de un solo procesador. Esto se debe a que en un sistema multiprocesador, cada núcleo de procesador puede ejecutar un hilo de usuario de forma independiente, lo que permite una mayor utilización de los recursos de procesamiento disponibles.

Cuando se utiliza un sistema de un solo procesador, todos los hilos de usuario compiten por los mismos recursos de procesamiento, lo que puede limitar el rendimiento. En cambio, en un sistema multiprocesador, cada hilo de usuario puede ejecutarse en un núcleo de procesador diferente, lo que permite una mayor utilización de los recursos y un mejor rendimiento.

## 9. Suponga que el numero de hilos del usuario es mayor que el numero de procesadores del sistema. Explique el impacto sobre el rendimiento cuando el numero de hilos del kernel asignados al programa es menor que el numero de procesadores.


Si el número de hilos del usuario es mayor que el número de procesadores del sistema, entonces algunos de los hilos del usuario tendrán que compartir un procesador. En este caso, el rendimiento del programa puede verse afectado por la competencia por los recursos del procesador.

Si el número de hilos del kernel asignados al programa es menor que el número de procesadores, entonces algunos de los procesadores estarán inactivos mientras los hilos del usuario compiten por los recursos del procesador disponibles. Esto puede dar lugar a un subutilización de los recursos de procesamiento disponibles y a una disminución del rendimiento.

Por lo tanto, en este caso, el rendimiento del programa puede verse comprometido debido a la competencia por los recursos del procesador. Para obtener un mejor rendimiento, es recomendable ajustar el número de hilos del usuario y del kernel asignados al programa en función del número de procesadores disponibles. Es importante tener en cuenta que la calidad del diseño y la implementación del programa también es esencial para obtener el máximo rendimiento y evitar problemas de concurrencia.
