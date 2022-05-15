from tkinter import *

root = Tk()

def printName(event):
    print("Hola")

button_1 = Button(root, text="hola")
button_1.bind("<Button-1>", printName)
button_1.pack()

root.mainloop()