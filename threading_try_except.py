from threading import Thread
import random
import time


def magic(index):
    time.sleep(random.randint(1, 5))
    x = 10 / random.randint(0, 10)
    print("yay {}".format(index))


def try_except(index):
    try:
        magic(index)
    except:
        print("oups {}".format(index))
        try_except(index)


threads = []
while True:
    print("start")
    for i in range(10):
        t = Thread(target=try_except, args=(i,))
        threads.append(t)
        t.start()
    for t in threads:
        t.join()
    print("done")
