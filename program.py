#!/usr/bin/python3
import simpy 
import random
import numpy as np

class Proceso:
    def __init__(self, env, ram, cpu, id):
        self.env = env
        self.ram = ram
        self.cpu = cpu
        self.id = id

        self.instrucciones = random.randint(1, 10)
        self.memoria = random.randint(1, 10)

        self.start_time = -1
        self.end_time = -1

    def run(self):
        self.start_time = self.env.now
        print(f"Proceso {self.id} iniciado")

        yield self.ram.get(self.memoria)  
        with self.cpu.request() as req:
            yield req  
            yield self.env.timeout(self.instrucciones)
        yield self.ram.put(self.memoria)

        self.end_time = self.env.now
        print(f"Proceso {self.id} finalizado")

def simulacion(env, ram, cpu, num_procesos, intervalo):
    procesos = []
    for i in range(num_procesos):
        proceso = Proceso(env, ram, cpu, i)
        procesos.append(proceso)
        env.process(proceso.run())
        yield env.timeout(random.expovariate(1/intervalo))
    return procesos


def ejecutar(num_procesos, intervalo):
    env = simpy.Environment()
    ram = simpy.Container(env, 100, 100)
    cpu = simpy.Resource(env, capacity=1)

    procesos = list(simulacion(env, ram, cpu, num_procesos, intervalo))
    env.run()

    tiempos = [p.end_time - p.start_time for p in procesos if hasattr(p, 'end_time') and hasattr(p, 'start_time')]
    
    if tiempos:
        return np.mean(tiempos), np.std(tiempos)
    else:
        return float('nan'), float('nan')


if __name__ == "__main__":
    print(ejecutar(10, 5))
