from tkinter import *

root = Tk()

def leftclick(event):
    print("left")

def middleclick(event):
    print("Middle")

def rightclick(event):
    print("Right")

frame = Frame(root, width=300, height=250)
frame.bind("<Button-1>", leftclick)
frame.bind("<Button-2>", middleclick)
frame.bind("<Button-3>", rightclick)
frame.pack()

root.mainloop()