# Taller 14
# Jesus Dario Villamizar Bohada

## Stress-ng
Stress-ng es una herramienta que ayuda a los usuarios a poner a prueba el rendimiento de sus computadoras en situaciones de estrés. Su objetivo principal es simular condiciones extremas para evaluar cómo responde el sistema. Esta herramienta puede ser útil para identificar posibles problemas o debilidades en el hardware, como fallas en la memoria o en la CPU, problemas de refrigeración o configuraciones incorrectas.

Stress-ng ofrece diferentes tipos de pruebas de estrés, como cálculos matemáticos intensos, operaciones de entrada y salida intensivas, y estrés en la memoria. También puede evaluar la capacidad de la memoria caché, la gestión térmica y la tolerancia a fallos del sistema.

Al ejecutar Stress-ng, los usuarios pueden observar el comportamiento de su computadora frente a estas condiciones extremas. Esto les permite obtener información sobre la estabilidad y capacidad de su sistema, así como identificar posibles áreas problemáticas.

## Comandos creados

Se crearon 3 Scripts que al ser ejecutados evaluan la CPU, la memoria y los procesos e hilos, a continuacion se da una explicacion de cada uno de los scripts:

### Script 1

              #!/bin/bash
  
              echo "Iniciando pruebas de CPU"
              echo "Fecha y hora: $(date)" > prueba_CPU.txt
              
              for i in {1..5}
              do
                  echo -e "\n--- Ejecutando prueba $i ---\n" >> prueba_CPU.txt
              
                  echo -e "Información de CPU:\n" >> prueba_CPU.txt
                  lscpu --parse=MODEL,CORES,THREADS,FREQ --parse-format=, >> prueba_CPU.txt
              
                  echo -e "\nResumen de CPU:\n" >> prueba_CPU.txt
                  mpstat --brief >> prueba_CPU.txt
              
                  echo -e "\nPrueba de estrés de CPU:\n" >> prueba_CPU.txt
                  stress-ng --cpu 4 --timeout 1m --metrics-brief >> prueba_CPU.txt
              
                  echo -e "\n--- Fin de la prueba $i ---\n" >> prueba_CPU.txt
              done
              
              echo "Pruebas de CPU completadas. Los resultados se han guardado en prueba_CPU.txt"

En este scrpit lo qu tenemos es un manesaje en consola que nos muestra un masaje de cuando inicia la prueba y ademas nos da fehca y hora en que se realizo, luego de esto tenemos una linea con la que vamos a mostrar la informacion de la CPU, para asi utilizando la herramienta stress-ng procesdemos a ralizar la prueba durante 1 minuto utilizando 4 hilos de ejecucion, y por ulitmo se deja un mensaje en consola que la prueba termino, todo lo anterior se iba asignando a un archivo .txt

### Script 2

            #!/bin/bash
            
            echo "Iniciando pruebas de memoria"
            echo "Fecha y hora: $(date)" > prueba_Memoria.txt
            
            for i in {1..5}
            do
                echo -e "\n--- Ejecutando prueba $i ---\n" >> prueba_Memoria.txt
            
                echo -e "Información de memoria:\n" >> prueba_Memoria.txt
                free --metrics-brief >> prueba_Memoria.txt
            
                echo -e "\nPrueba de estrés de memoria:\n" >> prueba_Memoria.txt
                stress-ng --vm 2 --vm-bytes 1G --timeout 10 --metrics-brief >> prueba_Memoria.txt
            
                echo -e "\n--- Fin de la prueba $i ---\n" >> prueba_Memoria.txt
            done
            
            echo "Pruebas de memoria completadas. Los resultados se han guardado en prueba_Memoria.txt"


Para el segundo Script tenemos lo mismo que en anterior pero esta vez, la prueba se le realizara a la memoria, donde se pone a prueba de esteres durante 10 segundos utilizando 2 procesos que consumen 1 GB cada uno, y tambien se guarda en un archivo diferente de tipo .txt

### Script 3


            #!/bin/bash
            
            echo "Iniciando pruebas de procesos e hilos"
            echo "Fecha y hora: $(date)" > Pro_hil.txt
            
            for i in {1..5}
            do
                echo -e "\n--- Ejecutando prueba $i ---\n" >> Pro_hil.txt
            
                echo -e "Información de procesos:\n" >> Pro_hil.txt
                ps --no-headers -eLf --sort=-%mem,%cpu --format pid,ppid,cmd,%mem,%cpu --width 1000 >> Pro_hil.txt
            
                echo -e "\nInformación de hilos:\n" >> Pro_hil.txt
                top -H -n 1 -b -o %MEM,%CPU --width 512 >> Pro_hil.txt
            
                echo -e "\nPrueba de estrés de procesos e hilos:\n" >> Pro_hil.txt
                stress-ng --fork 4 --timeout 1m --metrics-brief >> Pro_hil.txt
            
                echo -e "\n--- Fin de la prueba $i ---" >> Pro_hil.txt
            
            done


Ya por ultimo, en este Script como en los demas obtenemos la informacion necesaria, luego ejecutamos una prueba de estres  de procesos e hilos durante un minuto, utilizando 4 procesos en segundo plano, cabe rezaltar que cada uno de los scripts se ejecutaran 5 veces.

## Resultados

### CPU

| Stressor | Bogo ops | Real time | User time | Sys time | Bogo ops/s (real time) | Bogo ops/s (usr+sys time) |
|----------|----------|-----------|-----------|----------|-----------------------|---------------------------|
| cpu      | 7702     | 60.60     | 89.27     | 0.69     | 127.09                | 85.62                     |
| cpu      | 9056     | 60.23     | 101.63    | 0.71     | 150.37                | 88.48                     |
| cpu      | 4677     | 60.62     | 76.30     | 0.51     | 77.16                 | 60.89                     |
| cpu      | 2828     | 60.49     | 85.78     | 0.62     | 46.75                 | 32.73                     |
| cpu      | 2828     | 63.11     | 89.73     | 0.67     | 44.81                 | 31.28                     |

Como podemos observar en la tabla los procesos ficticios con los que se realizo la prueba, disminuyen bastante y para las metricas de tiempo vemos que los tiempos tambien varian bastante por lo tanto podemos concluir que debe haber algun proceso que no permite que la CPU pueda ser utilizada de una manera mas optima, por lo tanto se deberia hacer un escaneo mas profundo para llegar a la raiz de esto.

### Memoria

|    Stressor   | Bogo Ops | Real Time | Usr Time | Sys Time | Bogo Ops/s (Real Time) | Bogo Ops/s (Usr+Sys Time) |
|--------------:|---------:|----------:|---------:|---------:|----------------------:|------------------------:|
|     vm (1)    |   96003  |   10.05   |   4.81   |   0.71   |         9553.07        |          17381.84        |
|     vm (2)    |  105398  |   10.03   |   4.93   |   0.87   |        10510.10        |          18153.58        |
|     vm (3)    |   95745  |   10.12   |   4.69   |   0.89   |         9465.37        |          17152.46        |
|     vm (4)    |   96471  |   10.04   |   4.98   |   0.55   |         9612.83        |          17436.14        |
|     vm (5)    |  119736  |   10.01   |   4.96   |   0.55   |        11957.20        |          21736.79        |


Segun los resultados para la prueba de memoria podemos ver que los Bogo Ops siguen variando, al igual que las metricas del tiempo, entonces podria haber algun proceso que no permite la liberacion correcta de la memoria por lo tanto no puede ejercutarse de la mejor manera y ser mas optima.

### Procesos e Hilos

| Stressor | Bogo Ops | Real Time | User Time | Sys Time | Bogo Ops/s (Real Time) | Bogo Ops/s (User+Sys Time) |
|----------|---------:|----------:|----------:|---------:|----------------------:|--------------------------:|
| fork     |    94090 |     60.00 |     14.18 |    62.00 |                1568.14 |                    1235.04 |
| fork     |    93917 |     60.00 |     14.08 |    62.28 |                1565.25 |                    1229.87 |
| fork     |    89878 |     60.00 |     13.36 |    62.49 |                1497.94 |                    1184.84 |
| fork     |    91623 |     60.00 |     13.76 |    62.04 |                1527.03 |                    1208.72 |
| fork     |   103527 |     60.01 |     14.58 |    59.07 |                1725.19 |                    1405.70 |


Y ya por ultimo para los resultados de la prueba de procesos e hilos, tenemos que tanto para la metricas de tiempo y los procesos ficticios, tambien hay una variabilidad un poco alta pero no tanto, por lo tanto habra que realizar un escaneo general para encontrar cual podria ser el problema que hace que la distribucion de hilos y procesos no sea muy conveniente para el ejecutar procesos.
