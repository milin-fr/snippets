import webbrowser
import tkinter
from tkinter import Label

def open_link(event):
    webbrowser.open_new(r"www.google.com")
    
root = tkinter.Tk()
web_link_widget = Label(root, text = "link", fg = "blue", cursor = "hand2").pack()
web_link_widget.bind("<Button-1>", open_link)

root.mainloop()