# Taller 9

## Jesus Dario Villamizar Bohada


## 1. Cual es significado del termino espera activa?

La espera activa se refiere a una técnica de programación utilizada para optimizar el rendimiento de un programa o proceso. En lugar de realizar una espera pasiva o inactiva mientras se espera a que ocurra un evento o se complete una operación, la espera activa implica que el programa realice ciertas acciones o verificaciones periódicas mientras está esperando.

La espera activa puede mejorar la eficiencia y el rendimiento de los programas al reducir el tiempo de espera y evitar la latencia innecesaria. Sin embargo, debe ser utilizada con cuidado, ya que puede consumir recursos de manera intensiva si no se implementa correctamente. Además, es importante evitar la espera activa en situaciones donde se puede utilizar una espera pasiva más eficiente, como esperar a que un evento se desencadene mediante interrupciones o señales del sistema operativo.

## 2. De que manera se puede evitar la espera activa?

* Uso de interrupciones y eventos: En lugar de esperar activamente a que ocurra un evento o se complete una operación, se puede utilizar el mecanismo de interrupciones o eventos proporcionado por el sistema operativo o el lenguaje de programación. Esto permite que el programa se suspenda y sea notificado automáticamente cuando el evento o la operación se complete, evitando la necesidad de una espera activa.

* Programación basada en callbacks: En lugar de tener un bucle de espera activa, se puede utilizar la programación basada en callbacks o devoluciones de llamada. En este enfoque, se define una función de callback que se ejecutará cuando se complete el evento o la operación. El programa continúa ejecutando otras tareas mientras tanto, y cuando el evento ocurre, se invoca el callback.

* Uso de hilos y concurrencia: En lugar de tener un solo hilo de ejecución que espere activamente, se pueden utilizar hilos adicionales para realizar tareas en paralelo. De esta manera, mientras un hilo está esperando pasivamente, otros hilos pueden ejecutar diferentes tareas y aprovechar el tiempo de manera más eficiente.

* Utilización de mecanismos de sincronización: En situaciones donde múltiples hilos o procesos compiten por recursos o eventos, se pueden utilizar mecanismos de sincronización, como semáforos, mutex o variables de condición. Estos mecanismos permiten una coordinación adecuada entre los hilos, evitando así la necesidad de esperas activas y la competencia desordenada por recursos compartidos.

* Implementación de temporizadores: En lugar de realizar una espera activa, se pueden utilizar temporizadores para programar la ejecución de una tarea después de un cierto período de tiempo. Esto evita la necesidad de mantener un bucle de espera activa y permite al programa realizar otras tareas mientras tanto.

## 3. Explique por qué los bloqueos mediante bucle sin fin no son apropiados para sistemas monoprocesador, pero se usan con frecuencia en los sistemas multiprocesador.

Los bloqueos mediante bucle sin fin, también conocidos como "busy waiting" o "spin locks", son técnicas de sincronización en las que un hilo o proceso se queda en un bucle activo, verificando constantemente si un recurso o condición está disponible. Si el recurso aún no está disponible, el hilo sigue ejecutando el bucle hasta que lo esté.

En un sistema monoprocesador, donde solo hay un único procesador o núcleo de procesamiento, el uso de bloqueos mediante bucle sin fin no es apropiado y generalmente se considera ineficiente. Esto se debe a que el bucle activo consume tiempo de CPU de manera constante sin realizar una tarea útil, lo que puede llevar a un uso ineficiente de los recursos del sistema. En un sistema multiprocesador, donde hay múltiples procesadores o núcleos de procesamiento, el uso de bloqueos mediante bucle sin fin es más frecuente y tiene ciertas ventajas. En estos sistemas, cuando un hilo se bloquea esperando un recurso, otros hilos pueden aprovechar el tiempo de CPU disponible ejecutando tareas útiles en otros procesadores. Los bucles sin fin en estos casos pueden ser más eficientes, ya que el hilo en espera activa puede tener más posibilidades de obtener el recurso rápidamente, ya que hay otros procesadores ejecutando tareas.

Sin embargo, incluso en sistemas multiprocesador, el uso excesivo de bloqueos mediante bucle sin fin puede generar problemas de rendimiento. Si hay una alta competencia por el recurso o si el tiempo de espera es largo, los bucles activos pueden consumir recursos de manera significativa y afectar el rendimiento general del sistema. Por lo tanto, es importante utilizar mecanismos de sincronización adecuados y considerar alternativas como el uso de mecanismos de espera pasiva o programación basada en eventos para minimizar la espera activa y mejorar la eficiencia en sistemas multiprocesador.

## 4. Explique por qué las interrupciones no son apropiadas para implementar primitivas de sincronización en los sistemas multiprocesador.

Las interrupciones son eventos asincrónicos que ocurren en un sistema computacional cuando se produce un evento específico, como una interacción de hardware o una condición especial del sistema. Las interrupciones son utilizadas por los sistemas operativos para gestionar eventos de manera eficiente y proporcionar una forma de respuesta rápida a eventos externos. Y se puede dar a alguna de las siguientes rezones

1) Problemas de sincronización

2) Inequidad y falta de control

3) Complejidad y depuración

## 5. Describa como se puede utilizar la instrucción swap() para proporcionar un mecanismo de exclusión mutua que satisfaga el requisito de espera limitada.

La instrucción swap() se puede utilizar para proporcionar un mecanismo de exclusión mutua que cumpla con el requisito de espera limitada. La idea básica es utilizar una variable compartida que actúa como una bandera o semáforo para indicar si un recurso está en uso o disponible.

    #include <stdbool.h>

    bool locked = false;

    void lock()
    {
        while (swap(&locked, true) == true)
        {
            // La instrucción swap() intercambia el valor de locked con true y devuelve el valor anterior.
            // Si el valor anterior era true, significa que el recurso está en uso y se debe esperar.
            // La espera activa se realiza en este bucle hasta que el recurso esté disponible.
        }
    }

    void unlock()
    {
        locked = false;
    }


## 6. Los servidores pueden diseñarse de modo que limiten el numero de conexiones abiertas. Explique cómo puede utilizar un servidor los semáforos para limitar el numero de conexiones concurrentes.

1) DEFINIR VARIABLES Y SEMAFOROS

        int conexiones_actuales = 0; // Contador para llevar el registro de las conexiones actuales
        int max_conexiones = 10; // Número máximo de conexiones permitidas

        sem_t semaforo; // Semáforo para controlar el acceso al contador de conexiones
        
2) INICIALIZAR EL SEMAFORO

         sem_init(&semaforo, 0, 1); // Inicializar el semáforo con un valor inicial de 1
         
3) ANTES DE ACEPTAR UNA NUEVA CONEXION, AQUIERE EL SEMAFORO:

          sem_wait(&semaforo); // Adquirir el semáforo

4) VERIFICA EL CONTADOR DE CONEXIONES Y DECIDE SI ACEPTAR O RECHAZAR

          if (conexiones_actuales < max_conexiones) {
              // Se acepta la conexión
              conexiones_actuales++;
              sem_post(&semaforo); // Liberar el semáforo para permitir a otros hilos acceder al contador
              // Realizar las operaciones necesarias para manejar la conexión
          } else {
              // Se rechaza la conexión
              sem_post(&semaforo); // Liberar el semáforo sin aumentar el contador
              // Realizar acciones adecuadas para rechazar la conexión
          }

5) FINALIZA UNA CONEXION, ADQUIERE EL SEMAFORO NUEVAMENTE Y DISMINUYE EL CONTADOR DE CONEXIONES

          sem_wait(&semaforo); // Adquirir el semáforo
          conexiones_actuales--;
          sem_post(&semaforo); // Liberar el semáforo para permitir a otros hilos acceder al contador


## 7. Demuestre que los monitores y semáforos son equivalentes, en cuanto a que se pueden emplear para implementar los mismos tipos de problemas de sincronización.

1.	Problema del productor-consumidor:

•	Con monitores: Se puede utilizar un monitor para encapsular el buffer compartido y proporcionar métodos para que el productor y el consumidor interactúen con él. El monitor puede tener procedimientos de inserción y extracción, así como una variable de condición para esperar a que el buffer esté lleno o vacío según corresponda.

•	Con semáforos: Se pueden utilizar dos semáforos: uno para contar el número de espacios vacíos en el buffer y otro para contar el número de elementos presentes en el buffer. El productor y el consumidor utilizan operaciones de semáforo para controlar el acceso al buffer y esperar si es necesario.

2.	Problema de los lectores-escritores:

•	Con monitores: Se puede utilizar un monitor que proporcione métodos para que los lectores y escritores interactúen con la sección crítica compartida. El monitor puede tener procedimientos de inicio_lectura, fin_lectura, inicio_escritura y fin_escritura. También se pueden utilizar variables de condición para que los lectores esperen si hay escritores activos.

•	Con semáforos: Se pueden utilizar un semáforo para controlar el acceso a la sección crítica y un contador para realizar el seguimiento del número de lectores activos. Los semáforos se utilizan para permitir el acceso a la sección crítica según las reglas del problema de lectores-escritores.


## 8. La exclusión mutua estricta en un monitor hace que el monitor de búfer limitado sea adecuado para porciones pequeñas. Explique por qué es cierto esto.

La exclusión mutua estricta en un monitor significa que solo un hilo o proceso puede estar dentro del monitor en un momento dado. Esto se logra mediante el uso de bloqueos o semáforos internos dentro del monitor para garantizar que solo una operación pueda ejecutarse a la vez.

Cuando se trata de un monitor de búfer limitado, donde se almacenan elementos en una estructura de datos de tamaño fijo, la exclusión mutua estricta puede hacer que el monitor sea adecuado para porciones pequeñas.

## 9. Por qué Windows y Linux utilizan bloqueos mediante bucle sin fin como mecanismo de sincronización solo en los sistemas multiprocesador y no en los sistemas monoprocesador?

Windows y Linux utilizan bloqueos mediante bucle sin fin, como el llamado "bloqueo ocupado" o "spin lock", como mecanismo de sincronización en sistemas multiprocesador y no en sistemas monoprocesador debido a las diferencias en el manejo de la concurrencia y las características de los procesadores en estos sistemas.

En un sistema monoprocesador, solo hay un núcleo de procesador disponible para ejecutar instrucciones de forma secuencial. En este caso, si un hilo está en espera activa utilizando un bloqueo mediante bucle sin fin, consume recursos de CPU innecesariamente. Como no hay otros hilos o núcleos compitiendo por los recursos del procesador, la espera activa no es eficiente y puede bloquear o retrasar otras operaciones del sistema.

En sistemas multiprocesador, hay varios núcleos de procesador disponibles para ejecutar hilos concurrentemente. En este escenario, el bloqueo mediante bucle sin fin puede ser más eficiente. Cuando un hilo adquiere un bloqueo, si el bloqueo ya está en uso, en lugar de ponerse en espera pasiva, el hilo realiza un bucle de espera activa donde sigue verificando periódicamente si el bloqueo se libera. Durante este tiempo, el hilo continúa utilizando el núcleo de procesador y evita cambios de contexto costosos. Esto puede ser más eficiente en sistemas multiprocesador donde otros hilos pueden continuar ejecutándose en otros núcleos sin verse afectados por el bucle de espera activa.
