from threading import Thread
import time
import random

def slow_function(i):
    time.sleep(random.randint(1, 10))
    print(i)

def running_threads():
    threads = []
    for i in range(10):
        t = Thread(target=slow_function, args=(i,))
        threads.append(t)
        t.start()
    for t in threads:
        t.join()  # making sure that all your threads are done before doing something else with all results

running_threads()