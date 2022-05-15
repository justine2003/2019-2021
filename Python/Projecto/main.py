Lista = ["Frutas", "Verduras", "Ortalisas"]

print("Hola")

def menu():
    print("Menu")
    print("1,  Agregar elementos a la lista")
    print("2, Consultar lista")
    print("3, Imprimir la lista")

menu()

Opcion = int(input("Escriba la opcion que selecciono"))

if Opcion == 1:
    Numero = int(input("Ingrese la cantidad de productos que desea agregar"))
    Can = 0

    while Can >= Numero:
        Lista.append(input("Ingrese el nombre de lo que desea agregar a la lista"))
        Can += 1

if Opcion == 2:
    print("")