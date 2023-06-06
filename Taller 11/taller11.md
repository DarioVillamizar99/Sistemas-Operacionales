# Taller 11

## Jesus Dario Villamizar Bohada - 2191960

## 1. Explique la diferencia entre los conceptos de fragmentación interna y externa.

Fragmentación interna:

* Ocurre dentro de un bloque de memoria asignado.

* Se produce cuando el tamaño del bloque es mayor que el tamaño real necesario para almacenar los datos.

* Resulta en un desperdicio de espacio dentro del bloque de memoria.

* Puede ocurrir tanto en la asignación de bloques como en el almacenamiento dentro de una unidad.

* Reduce la eficiencia del sistema y la cantidad de memoria utilizable.


Fragmentación externa:

* Ocurre en el almacenamiento total del sistema.

* Se produce cuando hay suficiente espacio total disponible, pero no se puede utilizar debido a la falta de bloques de memoria contiguos lo suficientemente grandes.

* Resulta en un desperdicio de espacio disperso en el almacenamiento.

* Puede ocurrir tanto en la asignación de bloques como en el almacenamiento debido a la liberación de bloques en momentos diferentes.

* Limita la capacidad de asignar memoria a procesos o archivos que lo necesiten y afecta la eficiencia del sistema.

## 2. ¿En que forma el editor de montaje cambia el acoplamiento de las instrucciones y los datos a direcciones de memoria?

1. Reserva de espacio: El editor de montaje asigna direcciones de memoria para almacenar las instrucciones y los datos del programa. Esto implica reservar bloques de memoria adecuados para cada instrucción y dato en el programa.

2. Alineación de memoria: El editor de montaje también se encarga de alinear las instrucciones y los datos en direcciones de memoria específicas. La alineación de memoria se refiere a la colocación de instrucciones y datos en direcciones que cumplen con los requisitos de alineación de la arquitectura del procesador. Esto puede implicar asegurarse de que las instrucciones estén alineadas en límites de direcciones específicos, lo que puede mejorar el rendimiento del programa.

3. Resolución de referencias: En el proceso de montaje, el editor de montaje también resuelve las referencias entre instrucciones y datos. Cuando el código hace referencia a una etiqueta o símbolo, el editor de montaje asigna la dirección de memoria correspondiente a esa etiqueta o símbolo, permitiendo que las instrucciones hagan referencia correctamente a los datos o a otras instrucciones.

## 3. ¿Que información debe pasar el compilador al editor de montaje para facilitar el acoplamiento de memoria de éste?

1. Tamaño y tipo de datos: El compilador debe proporcionar información sobre el tamaño y el tipo de datos utilizados en el programa. Esto incluye el tamaño de los diferentes tipos de datos (enteros, caracteres, etc.) y las estructuras de datos definidas por el programador. Esta información es esencial para que el editor de montaje pueda reservar el espacio de memoria adecuado y asignar direcciones apropiadas a los datos.

2. Tablas de símbolos: El compilador crea tablas de símbolos que contienen información sobre las variables, funciones y etiquetas definidas en el programa. Estas tablas de símbolos deben incluir detalles como los nombres de los símbolos y sus ubicaciones en la memoria. Al pasar esta información al editor de montaje, se facilita la resolución de referencias y la asignación de direcciones a los símbolos utilizados en el programa.

3. Información de alineación: El compilador puede proporcionar información sobre los requisitos de alineación de la arquitectura del procesador utilizado. Esto incluye detalles como los límites de alineación para diferentes tipos de datos y estructuras. Al conocer estos requisitos, el editor de montaje puede organizar las instrucciones y los datos en direcciones de memoria que cumplan con los criterios de alineación, lo que puede mejorar el rendimiento del programa.

4. Información de instrucciones y optimización: El compilador también puede proporcionar información sobre las instrucciones utilizadas en el programa y posibles optimizaciones. Esto puede incluir detalles sobre las instrucciones específicas de la arquitectura objetivo y su formato, así como sugerencias de optimización para mejorar el rendimiento o reducir el tamaño del código. Esta información es útil para que el editor de montaje realice las transformaciones necesarias y genere el código de máquina adecuado.

## 4. En el siguiente orden, se tienen cinco particiones de memoria de 100 KB, 500 KB, 200 KB, 300 KB, y 600 KB. ¿Como situarían en memoria una serie de procesos de 212 KB, 417 KB, 112 KB y 426 KB en ese orden con los algoritmos de primer ajuste, mejor ajuste y peor ajuste? ¿Que algoritmo hace el uso más eficiente de la memoria?

Algoritmo de primer ajuste:

* Primero, se intenta situar el proceso de 212 KB en la primera partición que tenga al menos 212 KB de espacio disponible. Si se encuentra una partición adecuada, se coloca el proceso allí y se registra la fragmentación interna.

* Luego, se intenta situar el proceso de 417 KB en la primera partición que tenga al menos 417 KB de espacio disponible. Si se encuentra una partición adecuada, se coloca el proceso allí y se registra la fragmentación interna.

* A continuación, se intenta situar el proceso de 112 KB en la primera partición que tenga al menos 112 KB de espacio disponible. Si se encuentra una partición adecuada, se coloca el proceso allí y se registra la fragmentación interna.

* Por último, se intenta situar el proceso de 426 KB en la primera partición que tenga al menos 426 KB de espacio disponible. Si se encuentra una partición adecuada, se coloca el proceso allí y se registra la fragmentación interna.

Algoritmo de mejor ajuste:

* Se busca la partición con el tamaño más cercano al del proceso de 212 KB y se coloca allí. Se registra la fragmentación interna.
* Se busca la partición con el tamaño más cercano al del proceso de 417 KB y se coloca allí. Se registra la fragmentación interna.
* Se busca la partición con el tamaño más cercano al del proceso de 112 KB y se coloca allí. Se registra la fragmentación interna.
* Se busca la partición con el tamaño más cercano al del proceso de 426 KB y se coloca allí. Se registra la fragmentación interna.

Algoritmo de peor ajuste:

* Se busca la partición con el tamaño más grande y se coloca el proceso de 212 KB allí. Se registra la fragmentación interna.
* Se busca la partición con el tamaño más grande y se coloca el proceso de 417 KB allí. Se registra la fragmentación interna.
* Se busca la partición con el tamaño más grande y se coloca el proceso de 112 KB allí. Se registra la fragmentación interna.
* Se busca la partición con el tamaño más grande y se coloca el proceso de 426 KB allí. Se registra la fragmentación interna.

Para determinar cuál de los algoritmos hace un uso más eficiente de la memoria, debemos considerar la fragmentación interna generada en cada caso. El algoritmo de primer ajuste tiende a generar más fragmentación interna, ya que asigna el primer espacio disponible que cumpla con los requisitos, sin considerar si hay espacios más pequeños que podrían ajustarse mejor.

El algoritmo de mejor ajuste tiende a generar menos fragmentación interna, ya que selecciona la partición más cercana en tamaño al proceso, lo que reduce el desperdicio de espacio.

El algoritmo de peor ajuste también puede generar cierta fragmentación interna, ya que asigna el espacio más grande disponible, dejando espacios más pequeños que podrían haber sido utilizados para otros procesos. Sin embargo, en algunos casos, el algoritmo de peor ajuste puede ser beneficioso si se espera que lleguen procesos más grandes en el futuro.

El algoritmo de mejor ajuste suele ser el más eficiente en términos de utilización de memoria, ya que minimiza la fragmentación interna y aprovecha al máximo el espacio disponible.

## 5. La mayoría de OS permiten a los programas asignar más memoria a su espacio de direcciones durante la ejecución. ¿Que se necesitaría para soportar la asignación dinámica de memoria en los siguientes esquemas?

### 1. Asignación contigua de memoria.

* Un mecanismo de asignación y liberación de bloques de memoria de manera dinámica. Esto implica mantener un seguimiento de los bloques de memoria disponibles y su ocupación.
* Un algoritmo de asignación que pueda encontrar y reservar bloques de memoria contiguos adecuados para los programas en tiempo de ejecución.
* Un mecanismo de reubicación para ajustar las direcciones de memoria de los programas cuando se asignan nuevos bloques o se liberan bloques existentes.
* Gestión de fragmentación interna y externa, ya que la asignación dinámica puede generar fragmentación que debe ser gestionada para maximizar la eficiencia del sistema.

### 2. Segmentación pura.

* Un mecanismo para asignar y liberar segmentos de memoria de manera dinámica durante la ejecución.
* Un sistema de gestión de tablas de segmentos que lleve un seguimiento de los segmentos asignados y sus tamaños.
* Un algoritmo de asignación de segmentos que encuentre segmentos disponibles y los asigne a los programas según sea necesario.
* Un mecanismo de protección de segmentos para garantizar que un programa no acceda a la memoria de otros segmentos sin autorización.
* Una gestión adecuada de los límites y desplazamientos de los segmentos asignados para asegurar que los programas no accedan a áreas de memoria no autorizadas.

### 3. Paginación pura.

* Un mecanismo para asignar y liberar páginas de memoria de manera dinámica durante la ejecución.
* Un sistema de tablas de páginas que realice un seguimiento de las páginas asignadas a cada programa y su ubicación física en la memoria.
* Un algoritmo de asignación de páginas que encuentre páginas disponibles y las asigne a los programas según sea necesario.
* Un mecanismo de reubicación de direcciones virtuales a direcciones físicas mediante la traducción de las direcciones de página.
* Un sistema de gestión de memoria virtual para manejar el intercambio de páginas entre la memoria principal y el almacenamiento secundario cuando sea necesario.

## 6. Compare los esquemas de organización de la memoria principal basados en una asignación continua de memoria, en una segmentación pura y una paginación pura con respecto a:

### 1. Fragmentación externa.

* Asignación continua de memoria: Tiende a generar fragmentación externa, ya que se pueden formar espacios vacíos entre bloques de memoria asignados a programas, lo que puede resultar en un desperdicio de memoria.
* Segmentación pura: No sufre de fragmentación externa, ya que cada segmento se asigna de manera independiente, sin necesidad de espacios contiguos en la memoria.
* Paginación pura: Tampoco sufre de fragmentación externa, ya que las páginas se asignan de forma independiente y no requieren bloques contiguos.

### 2. Fragmentación interna.

* Asignación continua de memoria: Puede generar fragmentación interna, ya que los programas deben ajustarse a los bloques de memoria disponibles, lo que puede resultar en un desperdicio de espacio cuando el tamaño de los programas es menor que el tamaño de los bloques asignados.
* Segmentación pura: No sufre de fragmentación interna, ya que los segmentos se asignan según las necesidades de cada programa, sin espacios no utilizados dentro de los segmentos.
* Paginación pura: También puede sufrir de fragmentación interna, ya que los programas se dividen en páginas de tamaño fijo y es posible que las páginas no se utilicen completamente.

### 3. Capacidad de compartir código.

* Asignación continua de memoria: No permite compartir código fácilmente, ya que los programas se asignan en bloques continuos sin posibilidad de compartir memoria entre ellos.
* Segmentación pura: Facilita el compartir código, ya que los segmentos pueden ser compartidos por múltiples programas, permitiendo el uso compartido de bibliotecas o código común.
* Paginación pura: También permite compartir código de manera eficiente, ya que las páginas pueden ser compartidas entre diferentes programas cuando se encuentran en memoria, permitiendo el uso compartido de código y recursos.

## 7. En un OS con paginación, un proceso no puede acceder a una zona de memoria que no sea de su propiedad.

### 1. ¿Por qué?

En un sistema operativo con paginación, un proceso no puede acceder a una zona de memoria que no sea de su propiedad debido a que la paginación utiliza el mecanismo de traducción de direcciones virtuales a direcciones físicas mediante tablas de páginas. Cada proceso tiene su propia tabla de páginas, que se utiliza para realizar esta traducción. La tabla de páginas de un proceso solo contiene las entradas correspondientes a las páginas que le han sido asignadas al proceso. Por lo tanto, si un proceso intenta acceder a una dirección de memoria que no está en su tabla de páginas, se generará una excepción de violación de página, indicando que se está intentando acceder a una zona de memoria no válida para ese proceso.

### 2. ¿Como podía el OS permitir el acceso a otras zonas de memoria?

Si el sistema operativo desea permitir que un proceso acceda a otras zonas de memoria que no sean de su propiedad, podría utilizar mecanismos de protección de memoria, como permisos de página. Esto implicaría que, además de las tablas de páginas individuales de cada proceso, habría una tabla de permisos de página global que indicaría los permisos de acceso para cada página en memoria. El sistema operativo podría modificar dinámicamente los permisos de página según sea necesario para permitir el acceso controlado a otras zonas de memoria.

### 3. ¿Por qué debería o por qué no debería?

Permitir o no permitir el acceso de un proceso a otras zonas de memoria que no sean de su propiedad es una decisión que depende de los requisitos de seguridad y aislamiento del sistema. Hay situaciones en las que es necesario permitir el acceso controlado a otras zonas de memoria, como cuando un proceso necesita compartir datos o recursos con otro proceso de confianza. Sin embargo, permitir el acceso descontrolado a otras zonas de memoria puede ser un riesgo de seguridad, ya que un proceso malicioso podría intentar acceder y modificar datos sensibles de otros procesos.

## 8. Compare el mecanismo de paginación con el de segmentación con respecto a la cantidad de memoria requerida por las estructuras de producción de direcciones para convertir las direcciones virtuales en direcciones físicas.

Mecanismo de paginación:

* En la paginación, la memoria se divide en bloques de tamaño fijo llamados "páginas" tanto en la memoria virtual (direcciones virtuales) como en la memoria física (direcciones físicas).

* Para convertir una dirección virtual en una dirección física, se utiliza una tabla de páginas. Esta tabla contiene entradas que mapean las páginas virtuales a las páginas físicas correspondientes. Cada entrada de la tabla de páginas contiene información sobre la página física correspondiente y otros bits de control (como bits de protección y bits de presencia/ausencia).

* La tabla de páginas es una estructura de datos que se utiliza para llevar un seguimiento de todas las páginas virtuales utilizadas por un proceso y sus correspondientes ubicaciones físicas en la memoria.

* La tabla de páginas suele ser una estructura jerárquica (por ejemplo, con tablas de páginas y tablas de páginas secundarias) para manejar grandes espacios de direcciones virtuales de manera eficiente.

* La cantidad de memoria requerida para la tabla de páginas en paginación es proporcional al tamaño del espacio de direcciones virtuales del proceso y el tamaño de las páginas.


Mecanismo de segmentación:

* En la segmentación, el espacio de direcciones virtuales se divide en segmentos lógicos, que son bloques lógicos de tamaño variable.

* Para convertir una dirección virtual en una dirección física, se utiliza una tabla de segmentos. Esta tabla contiene entradas que mapean los segmentos lógicos a las ubicaciones físicas correspondientes en la memoria.

* La tabla de segmentos es una estructura de datos que mantiene información sobre los segmentos utilizados por un proceso, como su tamaño y ubicación física.

* A diferencia de la paginación, la tabla de segmentos no es jerárquica y, por lo tanto, puede requerir una mayor cantidad de memoria para almacenar información sobre todos los segmentos de un proceso.

* La cantidad de memoria requerida para la tabla de segmentos en segmentación es proporcional al número de segmentos utilizados por el proceso y el tamaño de cada entrada de la tabla de segmentos.

## 9. Considere la siguiente tabla de segmento: ¿Cuales son las direcciones físicas para las siguientes direcciones lógicas?

![image](https://github.com/DarioVillamizar99/Sistemas-Operacionales/assets/129220874/f5eefa9b-cb9a-4b90-a2f7-e468dd9135de)

### 1. 0. 430

0 + 430 = 430.

### 2. 1. 10

2300 + 10 = 2310.

### 3. 2. 500

90 + 500 = 590.

### 4. 3. 400

1327 + 400 = 1727.

### 5. 4. 112

1952 + 112 = 2064.
