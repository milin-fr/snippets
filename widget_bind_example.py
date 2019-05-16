import tkinter
from tkinter import Button


def left_click(some_argument):
    print(some_argument)


def right_click(event):
    print("Responding to button right click event: {}".format(event))


def global_gui_bind(event):
    print("Responding to global event: {}".format(event))
    print("Keycode is: {}".format(event.keycode))


main_window_of_gui = tkinter.Tk()
main_window_of_gui.bind_all("<Key>", global_gui_bind) # global gui bind
main_window_of_gui.title("Widget event binding example")
my_button = Button(main_window_of_gui, text = "Click me", command = lambda: left_click("left click"))
my_button.grid(row = 0, column = 0)
my_button.bind("<Button-3>", lambda event: right_click(event)) # widget bind

main_window_of_gui.mainloop()