# Taller 6
## Jesus Dario Villamizar Bohada - 2191960

1. Describa dos ejemplos en los que los mecanismos multihilo no proporcionen un mejor
rendimiento que el monohilo.
  
  Tareas que son principalmente secuenciales: En algunas tareas, la mayoría del trabajo que se realiza es secuencial y no se puede dividir en subprocesos que se ejecuten simultáneamente. En tales casos, agregar más hilos no mejorará el rendimiento y puede incluso disminuirlo debido a la sobrecarga de comunicación y sincronización entre los hilos. Un ejemplo de este tipo de tarea sería ordenar una lista de elementos. Cualquier algoritmo de ordenación de una lista tiene un límite inferior de tiempo de ejecución que es proporcional al tamaño de la lista, y dividir la lista en subprocesos no acelerará la tarea.

Tareas con limitaciones de recursos: Algunas tareas pueden tener una limitación de recursos que evita que varios hilos trabajen en paralelo, lo que resulta en una disminución del rendimiento. Por ejemplo, si una tarea implica leer datos de un disco duro, es posible que no se puedan leer datos simultáneamente de diferentes partes del disco debido a limitaciones físicas de los cabezales de lectura/escritura. En tales casos, agregar más hilos no mejorará el rendimiento y puede incluso disminuirlo debido a la competencia por los recursos. Otro ejemplo sería si una tarea requiere un acceso intensivo a la memoria y se ejecuta en una CPU con una cantidad limitada de caché. Agregar más hilos puede aumentar la competencia por el caché y hacer que el rendimiento disminuya.
  
2. Describa las acciones que toma una biblioteca de hilos para cambiar el contexto entre hilos de
nivel de usuario.
3. Los valores de los registros son componentes del estado de un programa, se comparten entre los
hilos de un proceso multihilo? Si, no y porqué?
4. Los cúmulos de memoria se comparten entre los hilos de un proceso multihilo? Si, no y porqué?
5. Las variables globales se comparten entre los hilos de un proceso multihilo? Si, no y porqué?
6. La memoria de pila se comparten entre los hilos de un proceso multihilo? Si, no y porqué?
7. En que ocasiones una solución multihilo que usa múltiples hilos del kernel proporciona mejor
rendimiento que un solo hilo sobre un sistema monoprocesador.
8. Puede una solución multihilo que utiliza múltiples hilos de usuario conseguir mejor rendimiento
en un sistema multiprocesador que en un sistema de un solo procesador?
9. Suponga que el numero de hilos del usuario es mayor que el numero de procesadores del
sistema. Explique el impacto sobre el rendimiento cuando el numero de hilos del kernel
asignados al programa es menor que el numero de procesadores.
