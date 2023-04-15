# Taller 4

## Jesus Dario Villamizar Bohada - 2191960

# 1. Las funciones y servicios proporcionados por el OS pueden dividirse en dos categorías, descríbalas.

RTA: 1) Funciones del sistema operativo: son funciones esecnciales del sistema operativo que son necesarias para su funcionamiento. Como lo son gestion de memoria, gestion de procesos, entre otros.
2) Servicios del sistema operativo: estos son los servicios que el sistema operativo proporciona a las aplicaciones y usuarios que se ejecutan en el. Como lo son gestion de redes, impresiones, genstion de ventanas, entre otros.

# 2. Enumere cinco servicios proporcionados por el OS diseñados para facilitar la comodidad delusuario.

* Interfaz Grafica
* Gestion de Energia
* Asistente virtual
* Integracion de Aplicaciones
* Accesibilidad


# 3. Describa como se puede generar un informe estadístico de la cantidad de tiempo y recursos consumidos por un programa.

1) Se debe utilizar un software de seguimiento de rendimiento que nos permita monitorear en tiempo real y registrar los datos de uso de los recursos que se tienen.
2) Luego se establecen los parametros de registro, osea hay que empezar por configurar la herramienta que se escogio para que nos registre solo los paremetros que sean relevantes para nostros. Como por ejemplo el timepo que gasta un programa en ejecutarse o cuanta CPU consume.
3) Abra que ejecutar el programa para poder monitorearlo.
4) Mientras el programa se ejecuta debemos empezar a regustrar los datos que queremos guardar, de esto se encarga la herramienta que hayamos escogido, hay que tener en cuenta que se debe dejar un tiempo razonable para que el software pueda tener buenos registros.
5) Despues de haber obtenido los datos habra que analizarlos, se puede utlizar herramientas de analisis estadistico para esto, estos datos puede deteminar la cantdiad promedio de recursos que se utilizan en la ejecucion de un programa.
6) Finalmente se le da una interpretacion a los resultados para asi generar el reporte estadicstico. De esta forma se determina si el programa esta consumiendo muchos recursos o no.



# 4. Enumere y describa cinco actividades de un OS enfocadas a la administración de archivos.

1) Cracion de archivos: el OS permite a los usuarios crear nuevos archivos en su sistema, ya sea mediante una interfaz o por medio de un lenguaje de programacion.
2) Organizacion de archivos: el OS organiza los archovos en una jerarquia de carpetas asi se le hace mas facil a usuario navegar.
3) Acceso a los archivos: el OS permite a los usuarios acceder a los archivos almacenados en el sistema, aveces estos archivos pueden tener restricciones de usuario.
4) Copia de archivos: el OS permite a los usuarios copiar archivos de una ubiacion a otra.
5) Eliminar archivos: el OS permite a los usuarios  eliminar archibos que ya no sean necesarios, esto tambien ayuda al OS ya que libera espacion en memora, tambien proporciona una papeleta de reciclaje donde se pueden recuperar archivos en caso de eliminarlos por accidente.

# 5. Compare las ventajas y desventajas de usar la misma interfaz de llamadas al sistema para la manipulación de archivos como de dispositivos.

Ventajas.
1) Simplificación del sistema: al usar la misma interfaz de llamadas al sistema para archivos y dispositivos, se simplifica el sistema operativo y se reduce la complejidad. Esto puede hacer que el OS sea más fácil de entender y de programar.

2) Flexibilidad: al usar la misma interfaz de llamadas al sistema, los programadores pueden usar las mismas técnicas y herramientas para manipular archivos y dispositivos. Esto proporciona una mayor flexibilidad y puede permitir una programación más eficiente.

3) Uniformidad: la misma interfaz de llamadas al sistema para archivos y dispositivos puede proporcionar una mayor uniformidad en el uso del OS. Esto puede hacer que sea más fácil para los usuarios entender y usar el OS.

Desventajas:

1) Rendimiento: usar la misma interfaz de llamadas al sistema para archivos y dispositivos puede tener un impacto en el rendimiento. Algunas operaciones de dispositivos pueden requerir una latencia más baja que las operaciones de archivo, y al usar la misma interfaz de llamadas al sistema, el rendimiento de ambos puede ser afectado.

2)Complejidad: si bien la simplificación del sistema es una ventaja, la complejidad de la manipulación de archivos y dispositivos puede aumentar si se usan las mismas llamadas al sistema para ambos. Por ejemplo, las operaciones de archivo y dispositivo pueden requerir diferentes parámetros y opciones, lo que puede aumentar la complejidad del código.

3) Mantenimiento: usar la misma interfaz de llamadas al sistema para archivos y dispositivos puede dificultar el mantenimiento y la solución de problemas. Si una llamada al sistema falla, puede ser difícil determinar si el problema está relacionado con un archivo o un dispositivo.

# 6. Conteste las siguientes preguntas:
# ◦ Cual es el propósito del interprete de comandos?

El proposito del interprete de comandos es proporcionar una interfaz entre el usuario y el OS, el interprete de comandos es un programa que lee los comandos escritospor el usuario y los traduce en instrucciones que el sistema operativo puede entender y ejecutar. Este interprete permite al usuario realizar varias tareas, como la gestion de archivos, configuracion del sistema, entre otros.

# ◦ Por qué esta separado del kernel?

El interprete esta separado del kernel por varias razones, como son seguridad, modulariada, flexibilidad y depuracion.
El kernel es el núcleo del sistema operativo y controla todos los recursos del sistema. Si se permitiera que los usuarios accedan directamente al kernel, podrían dañar el sistema o acceder a recursos que no deberían tener acceso. Al separar el intérprete de comandos del kernel, se limita el acceso del usuario y se mejora la seguridad del sistema, la separación del intérprete de comandos del kernel permite que ambos componentes se desarrollen y actualicen de forma independiente. Esto facilita la actualización y el mantenimiento del sistema operativo en su conjunto.
Al separar el intérprete de comandos del kernel, se permite la posibilidad de utilizar diferentes intérpretes de comandos con el mismo kernel. Esto proporciona más opciones y flexibilidad para los usuarios, si el intérprete de comandos se ejecuta en el espacio del kernel, los errores y fallos en el intérprete de comandos pueden afectar el funcionamiento del kernel y todo el sistema operativo. Al mantener el intérprete de comandos fuera del kernel, se limita el impacto de los errores y fallos en el sistema operativo y se facilita la depuración de problemas.

# ◦ Liste los requisitos para desarrollar un interprete de comandos.

Requisitos funcionales:

* El interprete de comandos debe ser capaz de procesar o ejecutar comandos basicos
* El interprete deber ser capaz de resntringir la entrada y salida de comandos y soportar tuberias
* El interprede de comandos deber ser capaz de manejar variables y ejecutar scripts.
* El interprete de comandos deber ser capas de crear alias y funciones personalizadas  para simplificarla entrada de comandos
* El interprete debe ser capaz de proporcionar sugerencias de autocompletado para los comandos
* El interprete dber ser capaz de mantener un historial de comandos para facilitar la recuperacion de comandos previamente utilizados.

Requisitos no funcionales:

* El interprete de comados deber ser facil de usar y entender para el usuario.
* El interprete deber ser rapido y eficiente para proporcionar una respuesta rapida al usuario
* El interprete debe ser compatible con diferentes plataformas y OS
* El interprete debe ser seguro y evitar la ejecucion de comandos pellgrosos o maliciosos
* El inteprete de comandos deber ser facilmente extensible para permitir adicion de nuevos comandos o funcionalidades.


# 7. Compare las ventajas y desventajas de los modelos de intercomunicación.

Modelo basado en mensajes.

Ventajas:

1) La comunicación es más flexible, donde los procesos pueden comunicarse entre sí de manera asíncrona y con mayor granularidad.
2)Puede manejar mejor el procesamiento distribuido.
3)Puede ser más fácil de depurar que otros modelos de intercomunicación.

Desventajas:

1) La implementación puede ser más compleja que otros modelos de intercomunicación.
2)Puede ser menos eficiente que otros modelos en algunos casos de uso.

Modelo basado en memoria compartida.

Ventajas:

1) La comunicación es rápida y eficiente.
2) Puede compartir grandes cantidades de datos entre procesos.
3) Puede ser utilizado para la sincronización de procesos y la coordinación de tareas.


Desventajas:

1) El control de acceso a la memoria compartida debe ser cuidadosamente gestionado para evitar problemas de concurrencia.
2) Puede ser más difícil de depurar que otros modelos de intercomunicación.


# 8. Conteste las siguientes preguntas:
# ◦ Cual es la principal ventaja de usar microkernel en el diseño del OS?

La principal ventaja de usar un microkernel en el diseño de un sistema operativo es que permite una mayor modularidad y flexibilidad en la implementación del sistema. Un microkernel es una arquitectura de sistema operativo en la que el núcleo del sistema (kernel) solo proporciona los servicios más esenciales, como la gestión de memoria y la planificación de procesos. Todos los demás servicios, como el sistema de archivos y la red, se implementan como procesos que se ejecutan fuera del núcleo del sistema.

# ◦ Como interactúan los programas de usuario y los servicios del OS en una arquitectura basada en microkernel?

En una arquitectura basada en microkernel, los programas de usuario y los servicios del sistema operativo interactúan a través de llamadas al sistema (system calls). Los programas de usuario no pueden acceder directamente al kernel del sistema operativo, sino que deben realizar solicitudes a través de las llamadas al sistema.

Cuando un programa de usuario necesita un servicio del sistema operativo, envía una solicitud a través de una llamada al sistema al microkernel. El microkernel luego coordina la respuesta de los servicios de sistema correspondientes, que se ejecutan como procesos fuera del kernel.

# ◦ Cuales son las desventajas de usar la arquitectura de microkernel?

1) Mayor sobrecarga: Debido a que los servicios adicionales se ejecutan como procesos separados, se necesita una comunicación frecuente entre el kernel y los servicios, lo que puede resultar en una mayor sobrecarga.

2)Rendimiento más lento: Debido a la mayor sobrecarga y a la necesidad de comunicación frecuente, la arquitectura de microkernel puede tener un rendimiento más lento que otras arquitecturas.

3) Complejidad de diseño: La arquitectura de microkernel es más compleja de diseñar y desarrollar que otras arquitecturas, ya que requiere una separación clara de funciones entre el kernel y los servicios adicionales.

4) Mayor costo de desarrollo: Debido a la complejidad de diseño, el desarrollo de sistemas operativos basados en la arquitectura de microkernel puede ser más costoso que el desarrollo de otros sistemas operativos.

# 9. Compare las ventajas y desventajas de usar VM.

Ventajas:

* Aislamiento: Las VM proporcionan un alto grado de aislamiento entre el sistema operativo de la máquina virtual y el sistema operativo del host. Esto permite que diferentes sistemas operativos se ejecuten en la misma máquina física sin interferir entre sí.

* Escalabilidad: Las VM son altamente escalables y se pueden agregar o eliminar fácilmente, lo que permite una mayor flexibilidad en la asignación de recursos a diferentes sistemas operativos.

* Consistencia del entorno: Las VM pueden crear entornos de desarrollo y pruebas consistentes, lo que puede mejorar la calidad del software.

* Seguridad: Las VM pueden proporcionar un mayor nivel de seguridad, ya que los sistemas operativos se ejecutan en un entorno virtualizado y no pueden acceder directamente a los recursos físicos.

* Flexibilidad: Las VM permiten a los administradores de sistemas crear entornos virtuales específicos para las necesidades de una aplicación en particular, lo que puede mejorar la eficiencia y la escalabilidad del sistema.

Desventajas:

* Sobrecarga: Las VM añaden una sobrecarga adicional al sistema debido al uso de la capa de virtualización, lo que puede afectar negativamente al rendimiento.

* Costo: El uso de VM puede ser costoso en términos de hardware y software, ya que se necesitan recursos adicionales para crear y mantener las máquinas virtuales.

* Complejidad: Las VM añaden una capa adicional de complejidad al entorno de TI, lo que puede requerir una mayor capacitación y conocimiento para administrar y mantener el sistema.

* Dependencia de hardware: Las VM dependen del hardware subyacente, lo que puede limitar la portabilidad del sistema.

* Pérdida de rendimiento: Debido a la sobrecarga de virtualización, las aplicaciones que requieren un alto rendimiento pueden experimentar una pérdida de rendimiento en comparación con la ejecución en un hardware dedicado.


