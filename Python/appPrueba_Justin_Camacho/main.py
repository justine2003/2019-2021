Repeticion = 1

numAerolineas = 1

listAerolineas = ["Air Canada", "American Airlines","Corendon Airlines","Enter Air","Ryanair","Icelandair","Southwest Airlines","SpiceJet","Spicejet"]
listaLocales = []

def Menu ():
    print("")
    print("1,Agregar aerolinas")
    print("2,Ver aerolineas")
    print("3,Ver locales")
    print("4,Arrendamineto")
    print("5,Salir")

def MenuLocal():
    print("1,Calcular el total a pagar")
    print("2, Salir")

def MenuError():
    print("1,Volver a ingresar el nombre del local")
    print("2,Volver al menu")

print("Bienvenido a AeroCity")

while Repeticion ==1:
    RepeticionArrendamineto = 1
    Menu()
    opcionMenu = int(input("Ingrese el numero de la opcion que selecciono"))
    if opcionMenu == 1:
        CanAerolineas = int(input("Cuantas aerolineas desea ingresar"))
        while numAerolineas <= CanAerolineas:
                listAerolineas.append(input("Ingrese el nombre de la aerolinea que va a gregar"))
                numAerolineas += 1
    if opcionMenu == 2:
        print("")
        print(listAerolineas)
    if opcionMenu == 3:
        print("")
        listaLocales.append("Katios")
        listaLocales.append("Cafe Quindio")
        listaLocales.append("Sala VIP LAN")
        listaLocales.append("Bogotá Beer Company")
        print(listaLocales)
    if opcionMenu == 4:
        while RepeticionArrendamineto == 1:
            local = input("Ingrese el nombre del local que esta buscando")
            if local in listaLocales:
                print("El local se encuentra en el puesto")
                numLocal = listaLocales.index(local)
                print(listaLocales.index(local))
                MenuLocal()
                opcionLocal = int(input("Ingrese el numero de la opcion selecciona"))
                if opcionLocal == 1:
                    CanDias = int(input("Ingrese la cantidad de días que el local estuvo abierto"))
                    NomArrendatario = input("Ingrese el nombre del arrendatario")
                    numDias = 120 * CanDias
                    if numDias > 1500 & numDias < 2000:
                        numDescuento = "3%"
                        Total = numDias * 0.03
                        Total = numDias - Total
                        TotalColones = Total / 620
                    if numDias > 2001:
                        numDescuento = "5%"
                        Total = numDias * 0.05
                        Total = numDias - Total
                        TotalColones = Total / 620
                    if numDias < 1500:
                        numDescuento = "No hay descuento"
                        TotalColones = numDias / 620
                    print("---Factura---")
                    print("Aerocity")
                    print("El puesto del local es:", numLocal)
                    print("El puesto estuvo abierto:", CanDias)
                    print("El subtotal a pagar es:", numDias)
                    print("Descuento:", numDescuento)
                    print("Total a pagar en dolares", Total)
                    print("Total a pagar en colones", TotalColones)
                    MenuError()
                    opcionError = input("Ingrese el numero de la opcion seleccionada")
                    if opcionError == 2:
                        RepeticionArrendamineto = 0
                else:
                    RepeticionArrendamineto = 0
            else:
                print("")
                print("Local no encontrado")
                MenuError()
                opcionError = input("Ingrese el numero de la opcion seleccionada")
                if opcionError == 2:
                    print("t")
                    RepeticionArrendamineto = 0
    if opcionMenu == 5:
        print("")
        print("Gracias por usar nuestra aplicacion")
        Repeticion = 0




