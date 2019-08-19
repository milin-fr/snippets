from threading import Thread

def slow_function(arg1, i):
    print(arg1 + "at index" + str(i))

def running_threads():
    threads = []
    for i in range(10):
        t = Thread(target = slow_function, args = (arg1, i))
        threads.append(t)
        t.start()
    for t in threads:
        t.join()
