from threading import Thread
import time
import random

def slow_function(thread_index):
    time.sleep(random.randint(1, 10))  # simulates waiting time for an API call response for example
    print("Thread {} done!".format(thread_index))

def run_threads():
    threads = []
    for thread_index in range(5):
        individual_thread = Thread(target=slow_function, args=(thread_index,))
        threads.append(individual_thread)
        individual_thread.start()
    # at this point threads are running independently from each other and the main flow of application
    print("Main flow of application")
    for individual_thread in threads:
        individual_thread.join()
    # joining threads insures that all threads are done before moving further in the flow of application
    print("All threads are done")

run_threads()
