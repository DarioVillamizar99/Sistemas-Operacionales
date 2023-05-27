# Taller 10

## Jesus Dario Villamizar Bohada - 2191960


![image](https://github.com/DarioVillamizar99/Sistemas-Operacionales/assets/129220874/ed80d0bd-9f79-4a7f-98b5-9849665aaf9e)


## 1. Considere la imagen, demuestre que las cuatro condiciones necesarias para que se produzca un interbloqueo se cumplen.

1) Exlusion mutua: Como se observa en la imagen uno de los procesos tiene acceso al recurso pero como no lo utilia y tampoco lo libera entonces todos se quedan esperando a que sea liberado.
2) Espera circular: En este caso todos los procesos estan esperando que alguno libere un recurso para poder ser procesado, pero como ninguno quiere liberar el recurso que tiene se quedan en el interbloqeo.
3) Retencion y espera: en la imagen se puede ver como uno de los recursos tiene un recurso retenido y no lo libera debido que necesita otro recurso para poder procesar, pero como los demas recursos estan ocupados, se quedara en espera.
4) No liberacion anticipada: como uno de los procesos no ha terminado su objetivo, no va a liberar el recurso, por lo tanto todos se quedaran en el interbloqueo

## 2. Considere la imagen, enuncie una regla simple para evitar los interbloqueos en este sistema.

Para evitar interbloqueos en este sistema se podria hacer uso de un semaforo, esta regla establece que los procesos deben solicitar y adquirir los recursos compartidos en un orden predefinido y consistente.

## 3. Explique como se cumplen las condiciones básicas de interbloqueo en el problema de la cena de los filósofos.


* Exclusión mutua: Cada filósofo requiere dos tenedores para comer los fideos. Si todos los filósofos intentan tomar el tenedor a su izquierda al mismo tiempo, cada uno solo podrá tomar un tenedor y quedará esperando al otro tenedor. Esto crea una condición de exclusión mutua, ya que los filósofos compiten por los recursos (tenedores) necesarios para continuar su tarea.

* Espera circular: Si cada filósofo toma el tenedor a su izquierda y espera a que el tenedor a su derecha esté disponible, se forma un ciclo de espera circular. El primer filósofo está esperando al segundo filósofo para liberar el tenedor que necesita, el segundo filósofo está esperando al tercero, y así sucesivamente hasta que el último filósofo está esperando al primer filósofo. Como resultado, todos los filósofos quedan bloqueados y ninguno puede comer.

* Retención y espera: En este problema, los filósofos retienen los tenedores que han adquirido mientras esperan el tenedor adicional. Si un filósofo ya tiene un tenedor y está esperando el otro, no puede liberar el tenedor que ya posee para que otro filósofo lo use. Esta retención de recursos necesarios para otros filósofos contribuye a la formación del interbloqueo.

* No liberación anticipada: En algunas soluciones incorrectas al problema de la cena de los filósofos, los filósofos podrían liberar un tenedor antes de adquirir el segundo, lo que puede resultar en que otro filósofo tome ese tenedor y cause un interbloqueo. La no liberación anticipada implica que los filósofos deben adquirir ambos tenedores antes de comenzar a comer y liberar ambos tenedores cuando hayan terminado.

## 4. Explique como podría evitarse los interbloqueos impidiendo que se cumpla una de las condiciones en el problema de la cena de los filósofos.

En el problema de la cena de los filósofos, la espera circular ocurre cuando cada filósofo toma el tenedor a su izquierda y espera a que el tenedor a su derecha esté disponible. Para romper esta condición, se puede modificar la forma en que los filósofos adquieren los tenedores. En lugar de permitir que todos los filósofos tomen el tenedor a su izquierda al mismo tiempo, se puede establecer un protocolo o regla que garantice que solo un subconjunto de filósofos adquiera los tenedores al mismo tiempo.

Por ejemplo, si se aplica la regla de filósofos pares primero, los filósofos pares adquirirían sus tenedores primero, mientras que los filósofos impares esperarían. Una vez que los filósofos pares hayan terminado de comer, liberarían sus tenedores y permitirían que los filósofos impares los adquieran. Esta alternancia en la adquisición de tenedores rompe la espera circular y evita el interbloqueo.

## 5. Compare el esquema de espera circular con los distintos esquemas de evasión de interbloqueos en lo que respecta a tiempo de ejecución adicional necesario.

1.	Espera Circular:

•	Tiempo de ejecución adicional necesario: En el esquema de espera circular, el tiempo de ejecución adicional puede ser significativo, ya que los procesos quedan bloqueados en un ciclo de espera. Pueden pasar largos períodos de tiempo hasta que se resuelva el interbloqueo y los procesos puedan continuar.

•	Detección de interbloqueos: El esquema de espera circular no ofrece detección activa de interbloqueos. Los procesos simplemente quedan bloqueados y no hay mecanismos incorporados para identificar y resolver automáticamente el interbloqueo.


2.	Evasión de Interbloqueos:

•	Tiempo de ejecución adicional necesario: Los esquemas de evasión de interbloqueos están diseñados para minimizar el tiempo adicional necesario en comparación con el esquema de espera circular. Estos esquemas implementan algoritmos y estrategias que intentan prevenir o detectar y resolver los interbloqueos antes de que ocurran. El tiempo adicional necesario depende de la frecuencia y complejidad de los algoritmos utilizados para detectar y evitar los interbloqueos.

•	Detección y recuperación de interbloqueos: Los esquemas de evasión de interbloqueos ofrecen detección activa de interbloqueos. Se utilizan algoritmos de detección que analizan el estado del sistema y pueden tomar medidas para recuperarse del interbloqueo, como liberar recursos o abortar procesos específicos. Esto ayuda a minimizar el tiempo de ejecución adicional al resolver el interbloqueo lo antes posible.

•	Asignación segura de recursos: Los esquemas de evasión de interbloqueos, como el algoritmo del banquero, aseguran que la asignación de recursos a los procesos no pueda provocar interbloqueos. Evalúan las solicitudes de recursos y verifican si se puede realizar la asignación de manera segura. Si una solicitud puede conducir a un interbloqueo potencial, se rechaza o pospone. El tiempo adicional necesario depende de la complejidad del algoritmo y las decisiones de asignación que se deben realizar.


## 6. Compare el esquema de espera circular con los distintos esquemas de evasión de interbloqueos en lo que respecta a tasa de procesamiento del sistema.

1.	Espera Circular:

•	Tasa de procesamiento del sistema: En el esquema de espera circular, la tasa de procesamiento del sistema puede ser baja o incluso nula durante un interbloqueo. Los procesos quedan bloqueados en un ciclo de espera y no pueden realizar ninguna tarea útil. Esto resulta en una disminución significativa de la tasa de procesamiento del sistema.

2.	Evasión de Interbloqueos:

•	Tasa de procesamiento del sistema: Los esquemas de evasión de interbloqueos están diseñados para maximizar la tasa de procesamiento del sistema al prevenir o resolver los interbloqueos de manera eficiente. Estos esquemas implementan algoritmos y estrategias para evitar situaciones de interbloqueo y garantizar que los procesos puedan ejecutarse de manera continua y sin interrupciones.

•	Detección y recuperación de interbloqueos: Los esquemas de evasión de interbloqueos ofrecen detección activa de interbloqueos. Los algoritmos de detección analizan el estado del sistema de forma regular o periódica para identificar posibles interbloqueos. Una vez que se detecta un interbloqueo, se toman medidas para resolverlo y restaurar la continuidad del sistema. Esto permite mantener una alta tasa de procesamiento del sistema al abordar rápidamente los interbloque


## 7. Considere un sistema que tiene cuatro recursos del mismo tipo, compartidos entre tres procesos; cada proceso necesita como máximo dos recursos. Demuestre que el sistema esta libre de interbloqueos.

1.	Asignación inicial de recursos:

•	P1 tiene asignados 2 recursos.

•	P2 tiene asignados 0 recursos.

•	P3 tiene asignados 0 recursos

2.	Solicitudes de recursos:

•	P1 solicita 1 recurso adicional.

•	P2 solicita 2 recursos adicionales.

•	P3 solicita 2 recursos adicionales.

Vemos que no se forma ningún ciclo. No hay un camino que permita que un proceso solicite un recurso que esté asignado a otro proceso. Cada proceso puede obtener los recursos que necesita sin esperar a que otros procesos liberen recursos. Por lo tanto, podemos concluir que el sistema está libre de interbloqueos.    


## 8. Considere el problema de los filósofos, los palillos se colocan en el centro de la mesa y cualquier filósofo puede usar dos palillos, la solicitud de los palillos se hace de una en una. Describa una regla simple para determinar si una solicitud podría ser satisfecha sin dar lugar a interbloqueos, dada la asignación actual de palillos a los filósofos.

* Mantén un seguimiento de la asignación actual de palillos a los filósofos y las solicitudes pendientes de palillos.

* Antes de asignar un palillo a un filósofo, verifica si la asignación y las solicitudes pendientes cumplen la siguiente condición: para cada filósofo, la cantidad de palillos disponibles más las solicitudes pendientes de ese filósofo deben ser suficientes para que el filósofo pueda obtener ambos palillos necesarios.

* Si la condición del paso anterior se cumple para todos los filósofos, la solicitud puede ser satisfecha sin interbloqueos. En ese caso, se asigna el palillo solicitado al filósofo correspondiente.

* Si la condición no se cumple para al menos uno de los filósofos, la solicitud no puede ser satisfecha sin interbloqueos. En ese caso, se debe denegar la solicitud o ponerla en espera hasta que se cumplan las condiciones necesarias.

## 9. Cual es la suposición optimista realizada en el algoritmo de detección de interbloqueos y como podría violarse esta suposición?

La suposición optimista realizada en el algoritmo de detección de interbloqueos, como el algoritmo del banquero, es que cada proceso solicita todos los recursos que necesita de una vez y los libera todos al finalizar su ejecución.

Esta suposición optimista implica que los procesos declaran de antemano la cantidad máxima de recursos que necesitarán durante su ejecución y solo solicitan esos recursos al sistema. Además, se asume que los procesos liberarán todos los recursos asignados al finalizar su ejecución.

Para violar dicha suposicion optimista basta de tres cosas, las cueles son:

1) Solicitudes incrementales: Un proceso puede solicitar inicialmente una cantidad menor de recursos y luego realizar solicitudes adicionales a medida que avanza en su ejecución. Esto viola la suposición optimista de que los procesos declaran todos los recursos necesarios de una vez.

2) Retención de recursos: Un proceso puede retener recursos asignados y no liberarlos al finalizar su ejecución. Esto viola la suposición optimista de que los procesos liberarán todos los recursos asignados.

3) Solicitud de recursos adicionales: Un proceso puede solicitar recursos adicionales durante su ejecución, superando la cantidad máxima declarada inicialmente. Esto viola la suposición optimista de que los procesos no solicitarán más recursos de los declarados inicialmente.
