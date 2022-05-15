print("Hola")

R = 0
Num = 1


Flores = ["Girasoles", "Rosas", "Hortensias", "Tulipanes","Dalias", "Lirios" , "Claveles" , "Cannas indias" , "Flores de Cereso"]
Provedor = []

while R == 0:
    print("1, Flores")
    print("2, Provedore")
    print("3 Pedido")
    print("4, Salir")
    M = input("Ingrese el numero de la opcion ")
    print(M)

    if  M == "1":
        print(Flores)
    if M == "2":
      NumpProvedor =  int(input("Ingrese el numero de provedores que va ingresar"))
      while Num <= NumpProvedor:
          IngresoP = input("Ingrese el nombre del Probedor")
          Provedor.append(IngresoP)
          Num += 1
      print("Estos son su provedores",Provedor)
    if M == "3":
        PF = input("Ingrese el nombre de la flor que desea pedir")
        if PF in Flores:
            PrecioF = int(input("Ingrese el precio de la flor"))
            CanF = int(input("Ingrese la cantidad de flores que va a ordenar"))
            if CanF > 5:
                print("Error a ingresado una cantidad de producto inferior a 5")
            EnvioF = int(input("Ingrese el precio de envio"))
            Subtotal = PrecioF * CanF + EnvioF
            print("El subtotal seria", Subtotal)
            ValorG = Subtotal * 0.2
            print("El precio con valor agregado", ValorG)
            if ValorG < 6000:
                Total = ValorG
            if  ValorG > 6000 & ValorG < 8000:
                descuento = ValorG * .2
                Subtotal = ValorG - descuento
            if ValorG <= 8000:
                descuento = ValorG * .5
                Subtotal =  ValorG - descuento
        print("Factura")
        print("La flor es", PF)
        print("La cantidad es", CanF )
        print("El precio es", PrecioF )
        print("El costos de envio es", EnvioF)
        print("El subtotal", descuento)
        print("El total a pagar es", Subtotal)
    else:
        R = 1













