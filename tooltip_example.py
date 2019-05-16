import tkinter
from tkinter import Button
from ToolTip import Tooltip


main_window_of_gui = tkinter.Tk()
main_window_of_gui.title("Tooltip example")
my_button_for_tooltip = Button(main_window_of_gui, text = "Hover over here for a second")
my_button_for_tooltip.grid(row = 0, column = 0)
Tooltip(my_button_for_tooltip, text = "Click me!")

main_window_of_gui.mainloop()