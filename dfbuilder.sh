#!/bin/sh

# Ejecutar el programa con 25 procesos
echo Process,Average > res-int-10.csv
echo 25,`procsim -p 25 | tail -n 1 | awk -F, '{print $1}' | awk '{print $3}'` >> res-int-10.csv

# Ejecutar el programa con 50 procesos
 echo 50,`procsim -p 50| tail -n 1 | awk -F, '{print $1}' | awk '{print $3}'` >> res-int-10.csv

# Ejecutar el programa con 100 procesos
echo 100,`procsim -p 100 | tail -n 1 | awk -F, '{print $1}' | awk '{print $3}'` >> res-int-10.csv

# Ejecutar el programa con 150 procesos
echo 150,`procsim -p 150 | tail -n 1 | awk -F, '{print $1}' | awk '{print $3}'` >> res-int-10.csv

# Ejecutar el programa con 200 procesos
echo 200,`procsim -p 200  | tail -n 1 | awk -F, '{print $1}' | awk '{print $3}'` >> res-int-10.csv

# Ejecutar el programa con 25 procesos
echo Process,Average > res-int-5.csv
echo 25,`procsim -p 25 -R 100 -i 5| tail -n 1 | awk -F, '{print $1}' | awk '{print $3}'` >> res-int-5.csv

# Ejecutar el programa con 50 procesos
 echo 50,`procsim -p 50 -R 100 -i 5 | tail -n 1 | awk -F, '{print $1}' | awk '{print $3}'` >> res-int-5.csv

# Ejecutar el programa con 100 procesos
echo 100,`procsim -p 100 -R 100 -i 5 | tail -n 1 | awk -F, '{print $1}' | awk '{print $3}'` >> res-int-5.csv

# Ejecutar el programa con 150 procesos
echo 150,`procsim -p 150 -R 100 -i 5 | tail -n 1 | awk -F, '{print $1}' | awk '{print $3}'` >> res-int-5.csv

# Ejecutar el programa con 200 procesos
echo 200,`procsim -p 200 -R 100 -i 5  | tail -n 1 | awk -F, '{print $1}' | awk '{print $3}'` >> res-int-5.csv


# Ejecutar el programa con 25 procesos
echo Process,Average > res-mem-200.csv
echo 25,`procsim -p 25 -R 200 -i 5 -S 1| tail -n 1 | awk -F, '{print $1}' | awk '{print $3}'` >> res-mem-200.csv

# Ejecutar el programa con 50 procesos
 echo 50,`procsim -p 50 -R 200 -i 5 | tail -n 1 | awk -F, '{print $1}' | awk '{print $3}'` >> res-mem-200.csv

# Ejecutar el programa con 100 procesos
echo 100,`procsim -p 100 -R 200 -i 5 | tail -n 1 | awk -F, '{print $1}' | awk '{print $3}'` >> res-mem-200.csv

# Ejecutar el programa con 150 procesos
echo 150,`procsim -p 150 -R 200 -i 5 | tail -n 1 | awk -F, '{print $1}' | awk '{print $3}'` >> res-mem-200.csv

# Ejecutar el programa con 200 procesos
echo 200,`procsim -p 200 -R 200 -i 5 | tail -n 1 | awk -F, '{print $1}' | awk '{print $3}'` >> res-mem-200.csv

echo Intervalos de 10, Memoria de 20
cat res-mem-200.csv | column -ts, 

# Ejecutar el programa con 25 procesos
echo Process,Average > res-proc-6.csv
echo 25,`procsim -p 25 -i 5 -S 6| tail -n 1 | awk -F, '{print $1}' | awk '{print $3}'` >> res-proc-6.csv

# Ejecutar el programa con 50 procesos
 echo 50,`procsim -p 50 -i 5 -S 6 | tail -n 1 | awk -F, '{print $1}' | awk '{print $3}'` >> res-proc-6.csv

# Ejecutar el programa con 100 procesos
echo 100,`procsim -p 100 -i 5 -S 6 | tail -n 1 | awk -F, '{print $1}' | awk '{print $3}'` >> res-proc-6.csv

# Ejecutar el programa con 150 procesos
echo 150,`procsim -p 150 -i 5 -S 6 | tail -n 1 | awk -F, '{print $1}' | awk '{print $3}'` >> res-proc-6.csv

# Ejecutar el programa con 200 procesos
echo 200,`procsim -p 200 -i 5 -S 6 | tail -n 1 | awk -F, '{print $1}' | awk '{print $3}'` >> res-proc-6.csv

# Ejecutar el programa con 25 procesos
echo Process,Average > res-CCPU-2.csv
echo 25,`procsim -p 25 -i 5 -P 2| tail -n 1 | awk -F, '{print $1}' | awk '{print $3}'` >> res-mem-200.csv

# Ejecutar el programa con 50 procesos
 echo 50,`procsim -p 50  -i 5 -P 2| tail -n 1 | awk -F, '{print $1}' | awk '{print $3}'` >> res-CCPU-2.csv

# Ejecutar el programa con 100 procesos
echo 100,`procsim -p 100 -i 5 -P 2| tail -n 1 | awk -F, '{print $1}' | awk '{print $3}'` >> res-CCPU-2.csv

# Ejecutar el programa con 150 procesos
echo 150,`procsim -p 150 -i 5 -P 2| tail -n 1 | awk -F, '{print $1}' | awk '{print $3}'` >> res-CCPU-2.csv

# Ejecutar el programa con 200 procesos
echo 200,`procsim -p 200 -i 5 -P 2| tail -n 1 | awk -F, '{print $1}' | awk '{print $3}'` >> res-CCPU-2.csv