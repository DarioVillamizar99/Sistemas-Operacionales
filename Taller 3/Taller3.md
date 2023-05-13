# Taller 3
# Jesús Darío Villamizar Bohada.

## 1. En entornos compartidos, los usuarios comparten el sistema. Esto puede dar lugar a varios problemas de seguridad.

## ◦ Mencione dos problemas y expliquelos.

RTA: Falta de privacidad: cuando se tienen entornos compartidos la informacion tambien es compartida por lo tanto se tiene el riesgo de que otro usuario accesa a informacion confidencial, entonces la privacidad se ve comprometida.

Dificultades de rendimiento: como el entorno es compartido, tanto el software como el hardware los comparten varios usuarios hace que el sistema pueda sufrir problemas de rendimiento, como lentitud y retrasos, sobre todo si el sistema esta sobrecargado o esta mal configurado.

## ◦ Es posible asegurar el mismo grado de seguridad en un sistema compartido que en un sistema dedicado. Explique su respuesta.

RTA: Basicamente la diferencia de estos dos sistemas radica en que el sistema compartido como su nombre lo dice, comparte sus recursos con multiples usuarios, mientras que el sistema dedicado, esta dedicado valga la redundancia hacia un solo sistema o aplicacion o usuario, por lo tanto es posible asegurar el mismo nivel de seguridad en ambos, claro que esto depende de muchos factores, por ejemplo en el caso del sistema compartido depende de la calidad del servidor donde este alojado, la seguridad del servidor entre otros, el sistema dedicado tambien depende de estas caracteristicas pero como el servidor no se comparte con otros usuarios, por lo tanto es mas facil de defender de ataques que cuenado hay multiples usuario accediendo al servidor.

## 2. Un problema común en los OS es la utilización de recursos. Enumere los recursos que deben gestionarse en las siguientes maquina (explique porqué):

## ◦ Sistemas embebidos

RTA: 1) Memoria: como los sistemas embebidos tienen limitaciones de memoria es importante saber administrarlos para que el sistema funcione sin problemas
2) Procesador: los sistemas embebidos necesitan los procesadores para ejecutar las instrucciones que se le den, tambien es importante saber administrarlo debido a que es limitado.
3) Entrada y Salida: es comun contar con una variedad de dispositivos de entrada y salida, como sensores, actuadores y pantallas. Si no se administran de forma correcta puede generar errores en el sistema
4) Energia: es fundamental gestionar el consumo de energia apra garantizar una autonomia adecuada y evitar problemas de sobrecalentamiento.
5) Red: en algunos sistemas embebidos puede ser importante el uso de la red como por ejemplo en un sistema IoT.

## ◦ Mainframe

RTA: 1) Procesador: Un mainframe cuenta con un procesador muy potente que puede manejar una gran cantidad de tareas simultáneamente.

2) Memoria: cuenta con una gran cantidad de memoria disponible para ejecutar múltiples aplicaciones simultáneamente y manejar grandes cantidades de datos. La gestión de memoria es crucial para garantizar un rendimiento óptimo del sistema y evitar cuellos de botella que puedan ralentizar el rendimiento.
 
3) en un frame cuenta con una gran cantidad de almacenamiento en disco de alta velocidad para almacenar grandes cantidades de datos. La gestión del almacenamiento implica garantizar un acceso rápido a los datos necesarios y asegurar que el almacenamiento esté optimizado y no esté fragmentado.

4) mainframe cuenta con una gran cantidad de almacenamiento en disco de alta velocidad para almacenar grandes cantidades de datos. La gestión del almacenamiento implica garantizar un acceso rápido a los datos necesarios y asegurar que el almacenamiento esté optimizado y no esté fragmentado.

5) Dispositivos de entrada/salida: Un mainframe puede estar conectado a una gran cantidad de dispositivos de entrada/salida, como impresoras, terminales, dispositivos de almacenamiento externos, etc.

## ◦ Workstation

RTA: 1) Memoria: en una workstation se puede encontrar un acantidad significativa de memoria RAM para ejecutar multiples aplicaciones simultaneamente.

2) Procesador: estos sistemas suelen contar con un procesador de alta capacidad para poder manejar una gran cantidad de tareas simultaneamente, gestionar este recurso implica distribuir eficientemente las cargas de trabajo en los distintos nucleos y procesadores.

3) Almacenamiento: una workstation suele contar con una gran cantidad de almacenamiento de alta velocidad para almacenar grandes cantidades de datos, esto implica garantizar acceso rapido a los datos necesarios y asegurar que el almacenamietno no este optimizado.

4) Entrada y Salida: estos sistemas suelen tener muchos dispositivos de entrada y salida, como monitores, teclados, ratones, impresoras, etc. La gestión de estos dispositivos implica garantizar un acceso rápido y fluido a los datos de entrada y salida, y asegurar que los controladores estén actualizados y funcionen correctamente.

5) Red:la mayor parte de las veces se necesita que estos sistemas esten conectados a una red para garantizar conectividad y seguridad

## ◦ Server

RTA: 1) Procesador: Un servidor suele contar con un procesador de alta capacidad que puede manejar una gran cantidad de solicitudes simultáneamente. La gestión del procesador implica distribuir eficientemente las cargas de trabajo en los distintos núcleos y procesadores, para evitar sobrecarga y garantizar un rendimiento óptimo.

2) Memoria: Un servidor suele contar con una cantidad significativa de memoria RAM disponible para ejecutar múltiples aplicaciones y manejar grandes cantidades de datos. La gestión de memoria es crucial para garantizar un rendimiento óptimo del sistema y evitar cuellos de botella que puedan ralentizar el rendimiento.

3) Almacenamiento: Un servidor suele contar con una gran cantidad de almacenamiento en disco de alta velocidad para almacenar datos y archivos de múltiples clientes. La gestión del almacenamiento implica garantizar un acceso rápido a los datos necesarios y asegurar que el almacenamiento esté optimizado y no esté fragmentado.

4) Red: Un servidor suele estar diseñado para soportar una gran cantidad de conexiones de red y gestionar grandes flujos de datos de manera eficiente. La gestión de la red implica garantizar la conectividad y la seguridad, y gestionar eficientemente los flujos de datos para evitar cuellos de botella.

5) Energía: Un servidor consume una gran cantidad de energía, por lo que la gestión de la energía es importante para garantizar una eficiencia energética óptima y reducir costos.

## ◦ Mobile

RTA: 1) Procesador: Los dispositivos móviles suelen contar con procesadores de menor capacidad que los ordenadores de escritorio o los servidores, por lo que es importante gestionar eficientemente el procesador para evitar sobrecarga y garantizar un rendimiento óptimo.

Memoria: La cantidad de memoria disponible en un dispositivo móvil puede variar significativamente según el modelo y el fabricante, por lo que es importante gestionarla de manera eficiente para evitar cuellos de botella que puedan ralentizar el rendimiento.

Almacenamiento: Los dispositivos móviles suelen contar con almacenamiento interno y/o externo para almacenar aplicaciones, datos y archivos multimedia. La gestión del almacenamiento implica garantizar un acceso rápido a los datos necesarios y asegurar que el almacenamiento esté optimizado y no esté fragmentado.

Batería: La gestión de la batería es crucial en dispositivos móviles, ya que suelen tener una duración limitada de la batería. Es importante optimizar el consumo de energía del dispositivo y gestionar eficientemente los recursos para garantizar una mayor duración de la batería.

Red: Los dispositivos móviles suelen estar conectados a redes móviles o Wi-Fi, por lo que es importante gestionar eficientemente las conexiones de red para garantizar la conectividad y la seguridad, y gestionar eficientemente los flujos de datos para evitar cuellos de botella.

## 3. Caracterice dos casos de uso para implementar un OS para servidor y PC.

RTA: para el primer caso hablamos del entorno empresarial, los servidores suelen ser utilizados para alojar aplicaciones empresariales criticas, almacenar y procesar grandes cantidades de dtos y gestionar el acceso a recursos compartidos. En este caso, se requiere un OS que garantice la seguridad, la estabilidad y el rendimiento del sistema, asi como l adisponibilidad de los servivios en todo momento. Por otro loado las PC para uso diario suelen utilizarse para una variedad de tareas cotidianas como navegacion por internet, procesamiento de texto, gestion de correo electronico, entre otras. Asi estos dos ejemplos son los mas claros para la implementacion de un OS tanto pa un servidor como un PC

## 4.Compare las diferencias entre multiprocesamiento simétrico y asimétrico

RTA: en la arquitectura de hardware se manejan diferentes modelos, por ejemeplo el SMP y el AMP, a continuacion se especifican sus principales diferencias:

Distribución de tareas: En un sistema SMP, todas las CPU comparten las tareas de manera uniforme, lo que significa que cualquier CPU puede realizar cualquier tarea. En cambio, en un sistema AMP, cada CPU está diseñada para manejar tareas específicas y no puede asumir las tareas asignadas a otra CPU.

Escalabilidad: En un sistema SMP, es fácil agregar más CPUs al sistema para aumentar el rendimiento, ya que todas las CPUs son iguales. En cambio, en un sistema AMP, agregar más CPUs puede ser más difícil, ya que cada CPU está diseñada para tareas específicas y no puede manejar tareas diferentes.

Flexibilidad: En un sistema SMP, cualquier CPU puede manejar cualquier tarea, lo que significa que se puede asignar cualquier tarea a cualquier CPU. Esto hace que el sistema sea más flexible y adaptable a los cambios en la carga de trabajo. En cambio, en un sistema AMP, la asignación de tareas es menos flexible, ya que cada CPU está diseñada para tareas específicas.

Coordinación: En un sistema SMP, todas las CPUs comparten la misma memoria y los mismos buses de entrada/salida, lo que significa que las CPUs deben coordinarse entre sí para acceder a estos recursos compartidos. En cambio, en un sistema AMP, cada CPU tiene su propia memoria y bus de entrada/salida, lo que significa que las CPUs no necesitan coordinarse entre sí para acceder a los recursos.

## 5. Enumere los requerimientos para que dos maquinas se junten en un cluster y provean un servicio de alta disponibilidad (HA).

RTA: 1) Conexión de red confiable: Es necesario que las máquinas del clúster estén conectadas a una red confiable y de alta velocidad para poder comunicarse y coordinar sus actividades. La red también debe tener redundancia y tolerancia a fallos para garantizar que el clúster pueda continuar funcionando incluso si se produce una falla de red.

2) Hardware y software compatibles: Es importante que todas las máquinas en el clúster tengan hardware y software compatibles para garantizar que puedan trabajar juntas sin problemas. Esto incluye sistemas operativos, aplicaciones y controladores de dispositivos.

3) Almacenamiento compartido: Las máquinas en el clúster deben tener acceso a un almacenamiento compartido, como un almacenamiento de red o un almacenamiento de área de almacenamiento conectada (SAN), para que puedan compartir datos y aplicaciones sin problemas.

4) Software de clúster: Se requiere software especializado de clúster para coordinar las actividades de las máquinas en el clúster. Este software debe ser capaz de detectar y manejar automáticamente las fallas de hardware o software en las máquinas del clúster y redirigir el tráfico de la aplicación a las máquinas restantes para garantizar una alta disponibilidad.

5) Fuentes de alimentación redundantes: Las máquinas del clúster deben tener fuentes de alimentación redundantes para garantizar que puedan seguir funcionando incluso si una fuente de alimentación falla.

6) Plan de recuperación de desastres: Es importante tener un plan de recuperación de desastres para el clúster en caso de un fallo catastrófico que afecte a todas las máquinas en el clúster. El plan debe incluir procedimientos para la recuperación de datos, la restauración de sistemas y la configuración de la red.

7) Administración y monitoreo: Finalmente, se requiere una buena administración y monitoreo del clúster para garantizar su correcto funcionamiento. Esto incluye la monitorización del uso de recursos, la detección y resolución de problemas, la aplicación de actualizaciones y parches de seguridad y la realización de copias de seguridad de datos.

## 6. Compare las diferencias entre una excepción y una interrupción.

RTA: Tanto las excepciones como las interrupciones son eventos que ocurren en un sistema informático y que requieren una respuesta por parte del sistema operativo. Sin embargo, existen algunas diferencias clave entre ellas:

Causa: La causa de una excepción es un error o condición anormal en la ejecución de un programa, como una división por cero o un acceso a una ubicación de memoria no válida. Por otro lado, la causa de una interrupción es un evento externo al programa, como la llegada de un dato en un puerto de entrada/salida o una señal enviada por un dispositivo hardware.

Fuente: Las excepciones se generan internamente en el procesador o en la memoria y son causadas por errores en el código de programa. Las interrupciones, por otro lado, son generadas externamente al procesador, generalmente por dispositivos de entrada/salida o por relojes del sistema.

Tiempo de ocurrencia: Las excepciones ocurren en tiempo de ejecución, es decir, durante la ejecución del programa. Las interrupciones pueden ocurrir en cualquier momento, incluso cuando el procesador está esperando a que lleguen datos o cuando está realizando una tarea diferente.

Manejo: Las excepciones se manejan dentro del programa que las genera, generalmente con una estructura try-catch en el código. Las interrupciones son manejadas por el sistema operativo, que decide qué tarea debe ejecutarse a continuación y cómo responder a la interrupción.

Prioridad: Las interrupciones tienen una prioridad más alta que las excepciones, ya que necesitan una respuesta inmediata del sistema operativo para que los dispositivos externos puedan seguir funcionando correctamente. Las excepciones tienen una prioridad más baja y se pueden manejar más tarde, una vez que se ha resuelto el problema actual.

## 7. El DMA (acceso directo a memoria) se usa en dispositivos I/O para evitar uso innecesario de la CPU.

## ◦ ¿Como interactuá la CPU con el dispositivo para coordinar la transferencia?

RTA: Cuando un dispositivo de entrada/salida necesita transferir datos a la memoria del sistema, se inicia una solicitud de DMA en el controlador del dispositivo. El controlador DMA establece una conexión directa con la memoria y comienza a transferir los datos sin la intervención de la CPU.

Para coordinar la transferencia, la CPU y el controlador DMA establecen una serie de parámetros que definen la dirección de memoria de origen y destino, la cantidad de datos que se van a transferir y la velocidad a la que se realizará la transferencia. Estos parámetros se configuran mediante el registro de control DMA. Una vez que se ha establecido la configuración, el controlador DMA se encarga de realizar la transferencia de datos mientras la CPU continúa con otras tareas.

## ◦ ¿Como sabe la CPU que las operaciones de memoria se han completado?

RTA:La CPU sabe que la operación de DMA se ha completado mediante una interrupción del controlador DMA. Una vez que se ha completado la transferencia, el controlador DMA envía una señal de interrupción a la CPU. La CPU puede entonces leer el resultado de la operación de DMA para verificar que se ha transferido la cantidad correcta de datos. Si hay un error en la transferencia, la CPU puede tomar las medidas necesarias para solucionar el problema y reiniciar la transferencia.

## 8. Identifique dos razones por las que la cache es útil. ¿Que problemas resuelve y causa?.

RTA: La memoria caché es útil porque resuelve el problema de la velocidad de acceso a la memoria principal del sistema. Los procesadores pueden acceder a la memoria caché mucho más rápido que a la memoria principal, lo que significa que el rendimiento general del sistema puede mejorarse significativamente mediante el uso de caché.

Algunas razones por las que la cache es útil son las siguientes

- Aprovechamiento de la localidad temporal y espacial: Muchas aplicaciones acceden repetidamente a los mismos datos o a datos que están cerca unos de otros en la memoria. La caché almacena estos datos en una ubicación cercana al procesador, lo que aprovecha la localidad temporal y espacial y reduce la necesidad de acceder a la memoria principal.

- Reducción del tiempo de acceso a la memoria: Cuando el procesador necesita acceder a un dato, primero busca en la memoria caché. Si el dato está presente en la caché, se puede acceder mucho más rápido que si se tuviera que acceder a la memoria principal.

Pero tambien pueden causar problemas, los mas comunes pueden ser:

+ Consistencia de la caché: Si varias unidades de procesamiento (como núcleos de CPU) comparten una caché, deben garantizar que los datos almacenados en la caché sean consistentes entre ellos. Esto puede requerir la implementación de protocolos de coherencia de caché, lo que añade complejidad al sistema.

+ Costo y complejidad: La caché puede requerir una cantidad significativa de recursos, incluyendo espacio en el chip, energía y lógica de control. Además, la gestión de la caché puede ser compleja y puede requerir un software y hardware específico.

+Fallas de caché: La caché puede sufrir fallas, como la corrupción de datos o la pérdida de integridad debido a errores en la memoria caché. La implementación de estrategias de recuperación y redundancia puede ayudar a mitigar estos problemas, pero también añade costos y complejidad al sistema.


## 9. Explique con un ejemplo, como se manifiesta el problema de mantener la coherencia de losdatos de cache en los siguientes entornos:

## ◦ Sistema distribuido

RTA:En un sistema distribuido, el problema de la coherencia de caché se manifiesta cuando varios procesadores acceden a los mismos datos almacenados en caché en diferentes nodos de la red. Cuando un procesador modifica un dato en su caché local, es posible que otros procesadores que tienen una copia en sus cachés locales no estén al tanto de la actualización.

Por ejemplo, suponga que un sistema distribuido tiene tres nodos: A, B y C. Cada nodo tiene su propia memoria caché y comparten un recurso común, como una base de datos. Si un procesador en el nodo A modifica un registro en la base de datos y lo guarda en su caché local, los otros procesadores en los nodos B y C que tienen copias de la misma registro en sus cachés locales, no saben que el registro ha sido modificado.

Para mantener la coherencia de caché en este entorno, se utilizan protocolos de coherencia de caché, como el protocolo MESI. En este protocolo, cada caché mantiene un estado para cada línea de caché que indica si la línea es compartida, exclusiva o inválida. Cuando un procesador modifica un dato en su caché local, envía una señal a los otros procesadores para que invaliden sus copias de la misma línea de caché. De esta manera, se garantiza que todos los procesadores tengan una vista consistente de los datos almacenados en caché.

## ◦ Sistema multiprocesador

RTA: En un sistema multiprocesador, el problema de la coherencia de caché se manifiesta cuando dos o más procesadores comparten una misma línea de caché que contiene los mismos datos. Si un procesador modifica un dato en su caché local, es posible que otros procesadores que tienen una copia en su caché local no estén al tanto de la actualización.

Por ejemplo, suponga que un sistema multiprocesador tiene dos procesadores: A y B. Ambos procesadores comparten una misma línea de caché que contiene un dato X. Si el procesador A modifica el dato X y lo guarda en su caché local, el procesador B que tiene una copia de la misma línea de caché no sabrá que el dato ha sido modificado.

Para mantener la coherencia de caché en este entorno, se utilizan protocolos de coherencia de caché, como el protocolo MESI. En este protocolo, cada caché mantiene un estado para cada línea de caché que indica si la línea es compartida, exclusiva o inválida. Cuando un procesador modifica un dato en su caché local, envía una señal a los otros procesadores para que invaliden sus copias de la misma línea de caché. De esta manera, se garantiza que todos los procesadores tengan una vista consistente de los datos almacenados en caché.

## ◦ Sistema de un solo procesador

RTA: En un sistema de un solo procesador, la coherencia de caché no es un problema, ya que no hay otras cachés que puedan tener copias de los mismos datos. En este caso, el procesador siempre tendrá acceso a la versión más reciente de los datos almacenados en su caché local.

Sin embargo, en algunos casos, la coherencia de caché puede ser un problema incluso en sistemas de un solo procesador. Por ejemplo, si un programa modifica un dato en la memoria principal y, a continuación, intenta leer el mismo dato desde su caché local, puede obtener una versión obsoleta del dato almacenado en la caché. Esto se debe a que el procesador no sabe que la versión almacenada en su caché local ha quedado obsoleta.

Para resolver este problema en sistemas de un solo procesador, se utilizan técnicas como la invalidación de caché por escritura (write-back cache invalidation), en la que la caché local es invalidada automáticamente cuando se modifica el dato correspondiente en la memoria principal. De esta manera, se garantiza que la caché siempre tenga la versión más reciente de los datos almacenado
