# Taller 13

## Jesus Dario Villamizar Bohada - 2191960

## 1. Explique el soporte por hardware requerido para implementar la paginación bajo demanda.

La paginación bajo demanda es una técnica utilizada en sistemas operativos y sistemas de gestión de memoria para optimizar el uso de recursos. En lugar de cargar todo el contenido en la memoria principal desde el principio, la paginación bajo demanda permite cargar y descargar páginas de datos según sea necesario, lo que ayuda a reducir la cantidad de memoria necesaria y mejora el rendimiento del sistema.

Para implementar la paginación bajo demanda, se requiere el soporte adecuado tanto a nivel de hardware como de software

1. Unidad de gestión de memoria (MMU): El MMU es una parte esencial del hardware que se encarga de realizar la traducción de direcciones virtuales a direcciones físicas. Permite que el sistema operativo maneje la paginación y la gestión de memoria de manera transparente para las aplicaciones. El MMU debe ser capaz de realizar el mapeo y desmapeo de páginas bajo demanda.

2. Tabla de páginas: La tabla de páginas es una estructura de datos utilizada por el sistema operativo para realizar el seguimiento de las páginas en memoria. Debe almacenar información sobre qué páginas están actualmente en memoria y cuáles están en el almacenamiento secundario. Además, debe proporcionar un mecanismo eficiente para buscar y actualizar la información de las páginas.

3. Almacenamiento secundario: La paginación bajo demanda implica cargar y descargar páginas según sea necesario entre la memoria principal y el almacenamiento secundario, como un disco duro. Por lo tanto, se requiere un sistema de almacenamiento secundario lo suficientemente rápido para leer y escribir las páginas de manera eficiente.

4. Algoritmo de reemplazo de páginas: Cuando la memoria principal está llena y se necesita espacio para cargar una nueva página, se debe utilizar un algoritmo de reemplazo de páginas para seleccionar qué página debe ser descargada al almacenamiento secundario. Algunos ejemplos de algoritmos de reemplazo comunes son el algoritmo de reemplazo de página menos recientemente utilizada (LRU) o el algoritmo de reemplazo de página más antigua (FIFO). Este algoritmo debe estar implementado tanto en hardware como en software.

## 2. ¿Qué es la característica de copia durante la escritura y en que circunstancias es ventajoso usar estas características?

La característica de copia durante la escritura, también conocida como "copy-on-write" en inglés, es una técnica utilizada en sistemas operativos y sistemas de gestión de memoria para optimizar el rendimiento y la eficiencia en el manejo de recursos. La característica de copia durante la escritura permite compartir datos entre procesos o hilos sin tener que realizar copias innecesarias de los mismos. En lugar de copiar todo el contenido de un recurso compartido cuando se realiza una escritura, se crea una copia solo cuando se realiza una modificación en los datos.

Las circunstancias en las que es ventajoso usar la característica de copia durante la escritura son las siguientes:

1. Eficiencia en el uso de memoria: Cuando múltiples procesos o hilos necesitan acceder a los mismos datos, la copia durante la escritura permite compartir la memoria sin duplicar todo el contenido. Esto es especialmente útil cuando los datos compartidos son grandes y rara vez se modifican. En lugar de mantener múltiplas copias de los mismos datos en memoria, se comparte una única copia y se crea una copia solo cuando se realice una escritura.

2. Eficiencia en el rendimiento: La copia durante la escritura evita los costos asociados con la copia de grandes bloques de datos cada vez que se realice una escritura. En lugar de copiar todo el contenido, se crea una nueva copia solo de la porción que ha sido modificada, minimizando así el tiempo y los recursos necesarios para realizar la operación.

3. Concurrente y paralelismo: La copia durante la escritura permite que múltiples procesos o hilos accedan y modifiquen datos compartidos de forma concurrente sin preocuparse por posibles inconsistencias o conflictos. Cada proceso o hilo mantiene su propia copia modificada de los datos, lo que evita problemas de sincronización y mejora el rendimiento en escenarios de concurrencia.

4. Respuesta rápida y baja latencia: Al evitar las copias innecesarias de datos, la característica de copia durante la escritura permite una respuesta más rápida y una menor latencia en operaciones que involucran recursos compartidos. Esto es especialmente importante en aplicaciones sensibles al rendimiento, como sistemas de bases de datos, sistemas de archivos distribuidos o sistemas en tiempo real.

## 3. ¿Cual es el soporte de hardware requerido para implementar las características de copia durante escritura?

1. Protección de memoria: El hardware debe proporcionar mecanismos de protección de memoria para garantizar que los procesos o hilos accedan solo a las áreas de memoria a las que tienen permiso. Esto evita que un proceso modifique accidentalmente los datos de otro proceso.

2. Tablas de páginas o tablas de mapeo: Las tablas de páginas son estructuras de datos utilizadas por el hardware para realizar la traducción de direcciones virtuales a direcciones físicas de memoria. Para la implementación de copia durante la escritura, estas tablas deben tener la capacidad de realizar mapeos de páginas compartidas, donde varios procesos o hilos pueden compartir la misma página física de memoria.

3. Bits de control en las tablas de páginas: Las tablas de páginas deben tener bits de control adicionales para indicar si una página está siendo compartida o si ha sido modificada por un proceso. Estos bits permiten que el hardware realice el seguimiento de qué páginas han sido modificadas y cuáles se pueden compartir sin necesidad de copiarlas.

4. Detección de escrituras: El hardware debe ser capaz de detectar cuando un proceso realiza una escritura en una página compartida. Esto se puede lograr mediante el uso de mecanismos como trampas de hardware o bits especiales en las tablas de páginas que se activan cuando se realiza una escritura.

## 4. Indique una situación en la que el algoritmo de sustitución de las páginas menos frecuentes utilizadas genere menos fallos de pagina que el algoritmo de sustitución de las paginas más recientemente utilizadas.

Una situación en la que el algoritmo de sustitución de páginas menos frecuentemente utilizadas (LFU, por sus siglas en inglés) genera menos fallos de página que el algoritmo de sustitución de páginas más recientemente utilizadas (LRU, por sus siglas en inglés) es cuando hay un conjunto de páginas que son accedidas raramente pero que aún son importantes en el contexto del sistema.

Por ejemplo un sistema en el que la mayoría de las páginas son accedidas con bastante frecuencia, pero hay un conjunto de páginas que son referenciadas muy ocasionalmente. Estas páginas raramente se utilizan, pero cuando son accedidas, su contenido es vital para el correcto funcionamiento del sistema. En este caso, el algoritmo LFU sería más efectivo que el algoritmo LRU.

La razón detrás de esto es que el algoritmo LFU se basa en el recuento de la frecuencia de acceso a cada página, es decir, cuántas veces una página ha sido referenciada desde su carga en memoria. Si una página se accede raramente, su contador de frecuencia será bajo. Como resultado, el algoritmo LFU elegirá mantener en memoria aquellas páginas que son importantes pero raramente utilizadas, ya que su frecuencia de acceso es baja y es menos probable que sean reemplazadas.

En contraste, el algoritmo LRU se basa en el tiempo de último acceso a una página. Cuando se necesita reemplazar una página, se elige aquella que ha sido accedida por última vez hace más tiempo. Si el conjunto de páginas raramente utilizadas no ha sido accedido en un tiempo largo, pero sigue siendo importante cuando se accede, el algoritmo LRU puede eliminar esas páginas, generando fallos de página innecesarios.

## 5. Indique una situación en la que el algoritmo de sustitución de las páginas mas frecuentemente utilizadas genere menos fallos de página que el algoritmo de sustitución de las páginas menos recientemente utilizadas.

Imaginemos un escenario en el que ciertas páginas son muy importantes y se acceden con mucha frecuencia en un sistema. Estas páginas contienen información crítica o código esencial para el funcionamiento del sistema.

En este caso, el algoritmo de sustitución de páginas más frecuentemente utilizadas (MFU) sería más efectivo que el algoritmo de sustitución de páginas menos recientemente utilizadas (LRU).

El algoritmo MFU se basa en cuántas veces se ha accedido a cada página desde que se cargó en memoria. Si una página se accede con frecuencia, su contador de acceso será alto. Esto significa que el algoritmo MFU elegirá mantener en memoria las páginas que se acceden con más frecuencia, evitando así reemplazarlas y reduciendo la posibilidad de fallos de página.

Por otro lado, el algoritmo LRU se basa en cuándo se accedió por última vez a una página. Cuando es necesario reemplazar una página, se elige aquella que no se ha accedido recientemente. Si una página importante se accede con alta frecuencia pero no se ha accedido en un tiempo, el algoritmo LRU podría eliminarla, lo que generaría fallos de página y afectaría negativamente el rendimiento.

## 6. Un sistema utiliza un algoritmo de sustitución FIFO para las paginas resientes y un conjunto compartido de marcos libres compuesto por páginas recientemente utilizadas. Si el conjunto compartido de marcos libres se gestiona utilizando la política de sustitución menos recientemente utilizadas. De una respuesta a los siguientes casos:

## ◦ Si se produce un fallo de página y la página se encuentra en el conjunto compartidos de marcos libres, ¿cómo puede generarse espacio libre para la nueva página solicitada?

Si se produce un fallo de página y la página solicitada se encuentra en el conjunto compartido de marcos libres, se puede generar espacio libre para la nueva página de la siguiente manera:

a) Si el conjunto compartido de marcos libres está lleno, es necesario seleccionar una página dentro de ese conjunto para liberar espacio. Para ello, se aplicaría la política de sustitución menos recientemente utilizadas (LRU) dentro del conjunto compartido. La página menos recientemente utilizada se liberaría y se asignaría a la nueva página solicitada.

b) Una vez liberado el marco de página, la nueva página se cargaría en ese marco y se actualizarían las estructuras de datos relevantes para reflejar el cambio.

## ◦ Si se produce un fallo de página y la página se encuentra en el conjunto compartido de marcos libres, ¿cómo se activa la página residente y cómo se gestiona el conjunto compartido de marcos libres para hacer sitio para la página solicitada?

Si se produce un fallo de página y la página solicitada se encuentra en el conjunto compartido de marcos libres, el proceso de activación de la página residente y la gestión del conjunto compartido sería el siguiente:

a) La página residente se activaría, lo que implica moverla desde el conjunto compartido de marcos libres a la memoria principal. Esto se lograría asignando un marco de página libre en la memoria principal a la página residente.

b) Para hacer espacio en el conjunto compartido de marcos libres, se aplicaría la política de sustitución menos recientemente utilizadas (LRU). La página menos recientemente utilizada dentro del conjunto compartido se seleccionaría y se liberaría para dejar espacio disponible.

c) Una vez que se ha realizado la activación de la página residente y se ha liberado el marco de página en el conjunto compartido, la nueva página solicitada se cargaría en el marco de página recién liberado y se actualizarían las estructuras de datos pertinentes.

## 7. Considere un sistema de paginación bajo demanda con las siguientes tasas de utilización:

## ◦ Uso de CPU 20%

## ◦ Paginación de disco 97,7%

## ◦ Otros dispositivos de I/O 5%

## Para las siguientes afirmaciones, indique si permitirá o es probable que permita mejorar las tasas de utilización de la CPU. De razones para su respuesta.

## ◦ Instalar una CPU más rápida.

Sí, instalar una CPU más rápida puede permitir mejorar la tasa de utilización de la CPU. Una CPU más rápida puede procesar instrucciones más rápidamente, lo que reduce el tiempo de ejecución de los procesos y permite que más procesos se ejecuten en un período de tiempo determinado. Esto puede aumentar la tasa de utilización de la CPU al permitir que se realice más trabajo en menos tiempo.

## ◦ Instalar un disco de paginación de mayor tamaño.

No, instalar un disco de paginación de mayor tamaño no tiene un impacto directo en la tasa de utilización de la CPU. El tamaño del disco de paginación afecta principalmente la capacidad del sistema para almacenar y acceder a las páginas de memoria en el disco, lo cual influye en la eficiencia de la paginación. Sin embargo, no afecta directamente la tasa de utilización de la CPU.

## ◦ Incrementar el grado de multiprogramación.

Sí, incrementar el grado de multiprogramación puede permitir mejorar la tasa de utilización de la CPU. La multiprogramación se refiere a la capacidad del sistema para ejecutar varios procesos simultáneamente. Al aumentar el grado de multiprogramación, se permite que más procesos se ejecuten en la CPU al mismo tiempo, lo que puede aumentar la tasa de utilización de la CPU.

## ◦ Instalar mas memoria principal.

Sí, instalar más memoria principal puede permitir mejorar la tasa de utilización de la CPU. La memoria principal almacena los datos y las instrucciones que los procesos necesitan para ejecutarse. Al aumentar la cantidad de memoria principal disponible, se reduce la necesidad de realizar operaciones de paginación de disco, lo que a su vez reduce la carga en la CPU y permite un mejor rendimiento general del sistema.

## ◦ Instalar un disco duro mas rápidos.

Sí, instalar un disco duro más rápido puede permitir mejorar la tasa de utilización de la CPU. Un disco duro más rápido puede acceder y transferir datos de manera más rápida, lo que reduce el tiempo de espera de la CPU para obtener los datos necesarios. Esto puede acelerar el tiempo de acceso a la memoria virtual y, en última instancia, mejorar la tasa de utilización de la CPU.
