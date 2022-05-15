import Menu_CSS

repi = 0

listCentros = ["Hospital San Vicente de Paul", "Hospital México", "Hospital San Juan de Dios", "Hospital San Rafael de Alajuela","Hospital Tony Facio Castro", "Hospital Nacional de Niños Carlos Sáenz Herrera"]

while repi == 0:
    print()
    Menu_CSS.CSS()
    opcion = int(input("Ingrese el numero de la opcion deseada"))

    if opcion == 1:
        print(listCentros)
        YoN = input("Desea adicionar mas hospitales a la lista si o no")
        if YoN == 'si':
            can = int(input("cuantos hospitales desea ingresar"))
            e = 0
            while e < can:
                hos = input("Ingrese el nombre del hospital que desea sumar a la lista")
                listCentros.append(hos)
                can -= 1
        archivo = open("Centros_Médicos.txt", "w")
        archivo.write('listCentros=%s' % listCentros)
        archivo.close()

    if opcion == 2:
        medico = input("ingrese el sentro medico al que desea realisar el estudio")
        if medico in listCentros:
            NombreFun = input("Ingrese el nombre del funcionario")
            NumMes = int(input("Ingrese el numero del mes que esta haciendo el estudio"))
            CantDiaMes = int(input("Ingrese la cantidad de días al mes que desea promediar"))
            HorasLabo =  CantDiaMes * 400
            HorasNoLabo = CantDiaMes * 80
            Total = CantDiaMes * 40
            if NumMes == 1:
                print("--Servicio Radiologia--")
                print("Nombre del hospital" + medico)
                print("Enero")
                print("Cantidad de días:", CantDiaMes)
                print("Cantidad de horas laborales: ", HorasLabo)
                print("Cantida de horas no laborales:", HorasNoLabo)
                print("Promedio de paciente:", Total)

                Promedio = open("Promedio_Pacientes.txt","a")
                Promedio.write("\n--Servicio Radiologia--")
                Promedio.write("\nNombre del hospital" + medico)
                Promedio.write("\nEnero")
                Promedio.write("\nCantidad de días: %s" %CantDiaMes)
                Promedio.write("\nCantidad de horas laborales: %s" %HorasLabo)
                Promedio.write("\nCantida de horas no laborales: %s"  %HorasNoLabo)
                Promedio.write("\nPromedio de paciente: %s"  %Total)
            elif NumMes== 2:
                print("--Servicio Radiologia--")
                print("Nombre del hospital" + medico)
                print("Febrero")
                print("Cantidad de días:", CantDiaMes)
                print("Cantidad de horas laborales: ", HorasLabo)
                print("Cantida de horas no laborales:", HorasNoLabo)
                print("Promedio de paciente:", Total)

                Promedio = open("Promedio_Pacientes.txt","a")
                Promedio.write("\n--Servicio Radiologia--")
                Promedio.write("\nNombre del hospital" + medico)
                Promedio.write("\nFebrero")
                Promedio.write("\nCantidad de días: %s" % CantDiaMes)
                Promedio.write("\nCantidad de horas laborales: %s" % HorasLabo)
                Promedio.write("\nCantida de horas no laborales: %s" % HorasNoLabo)
                Promedio.write("\nPromedio de paciente: %s" % Total)
            elif NumMes == 3:
                print("--Servicio Radiologia--")
                print("Nombre del hospital" + medico)
                print("Marzo")
                print("Cantidad de días:", CantDiaMes)
                print("Cantidad de horas laborales: ", HorasLabo)
                print("Cantida de horas no laborales:", HorasNoLabo)
                print("Promedio de paciente:", Total)

                Promedio = open("Promedio_Pacientes.txt", "a")
                Promedio.write("\n--Servicio Radiologia--")
                Promedio.write("\nNombre del hospital" + medico)
                Promedio.write("\nMarzo")
                Promedio.write("\nCantidad de días: %s" % CantDiaMes)
                Promedio.write("\nCantidad de horas laborales: %s" % HorasLabo)
                Promedio.write("\nCantida de horas no laborales: %s" % HorasNoLabo)
                Promedio.write("\nPromedio de paciente: %s" % Total)
            elif NumMes == 4:
                print("--Servicio Radiologia--")
                print("Nombre del hospital" + medico)
                print("Abril")
                print("Cantidad de días:", CantDiaMes)
                print("Cantidad de horas laborales: ", HorasLabo)
                print("Cantida de horas no laborales:", HorasNoLabo)
                print("Promedio de paciente:", Total)

                Promedio = open("Promedio_Pacientes.txt", "a")
                Promedio.write("\n--Servicio Radiologia--")
                Promedio.write("\nNombre del hospital" + medico)
                Promedio.write("\nAbril")
                Promedio.write("\nCantidad de días: %s" % CantDiaMes)
                Promedio.write("\nCantidad de horas laborales: %s" % HorasLabo)
                Promedio.write("\nCantida de horas no laborales: %s" % HorasNoLabo)
                Promedio.write("\nPromedio de paciente: %s" % Total)
            elif NumMes == 5:
                print("--Servicio Radiologia--")
                print("Nombre del hospital" + medico)
                print("Mayo")
                print("Cantidad de días:", CantDiaMes)
                print("Cantidad de horas laborales: ", HorasLabo)
                print("Cantida de horas no laborales:", HorasNoLabo)
                print("Promedio de paciente:", Total)

                Promedio = open("Promedio_Pacientes.txt", "a")
                Promedio.write("\n--Servicio Radiologia--")
                Promedio.write("\nNombre del hospital" + medico)
                Promedio.write("\nMayo")
                Promedio.write("\nCantidad de días: %s" % CantDiaMes)
                Promedio.write("\nCantidad de horas laborales: %s" % HorasLabo)
                Promedio.write("\nCantida de horas no laborales: %s" % HorasNoLabo)
                Promedio.write("\nPromedio de paciente: %s" % Total)
            elif NumMes== 6:
                print("--Servicio Radiologia--")
                print("Nombre del hospital" + medico)
                print("Junio")
                print("Cantidad de días:", CantDiaMes)
                print("Cantidad de horas laborales: ", HorasLabo)
                print("Cantida de horas no laborales:", HorasNoLabo)
                print("Promedio de paciente:", Total)

                Promedio = open("Promedio_Pacientes.txt", "a")
                Promedio.write("\n--Servicio Radiologia--")
                Promedio.write("\nNombre del hospital" + medico)
                Promedio.write("\nJunio")
                Promedio.write("\nCantidad de días: %s" % CantDiaMes)
                Promedio.write("\nCantidad de horas laborales: %s" % HorasLabo)
                Promedio.write("\nCantida de horas no laborales: %s" % HorasNoLabo)
                Promedio.write("\nPromedio de paciente: %s" % Total)
            elif NumMes== 7:
                print("--Servicio Radiologia--")
                print("Nombre del hospital" + medico)
                print("Julio")
                print("Cantidad de días:", CantDiaMes)
                print("Cantidad de horas laborales: ", HorasLabo)
                print("Cantida de horas no laborales:", HorasNoLabo)
                print("Promedio de paciente:", Total)

                Promedio = open("Promedio_Pacientes.txt", "a")
                Promedio.write("\n--Servicio Radiologia--")
                Promedio.write("\nNombre del hospital" + medico)
                Promedio.write("\nJulio")
                Promedio.write("\nCantidad de días: %s" % CantDiaMes)
                Promedio.write("\nCantidad de horas laborales: %s" % HorasLabo)
                Promedio.write("\nCantida de horas no laborales: %s" % HorasNoLabo)
                Promedio.write("\nPromedio de paciente: %s" % Total)
            elif NumMes== 8:
                print("--Servicio Radiologia--")
                print("Nombre del hospital" + medico)
                print("Agosto")
                print("Cantidad de días:", CantDiaMes)
                print("Cantidad de horas laborales: ", HorasLabo)
                print("Cantida de horas no laborales:", HorasNoLabo)
                print("Promedio de paciente:", Total)

                Promedio = open("Promedio_Pacientes.txt", "a")
                Promedio.write("\n--Servicio Radiologia--")
                Promedio.write("\nNombre del hospital" + medico)
                Promedio.write("\nAgosto")
                Promedio.write("\nCantidad de días: %s" % CantDiaMes)
                Promedio.write("\nCantidad de horas laborales: %s" % HorasLabo)
                Promedio.write("\nCantida de horas no laborales: %s" % HorasNoLabo)
                Promedio.write("\nPromedio de paciente: %s" % Total)
            elif NumMes== 9:
                print("--Servicio Radiologia--")
                print("Nombre del hospital" + medico)
                print("Setiembre")
                print("Cantidad de días:", CantDiaMes)
                print("Cantidad de horas laborales: ", HorasLabo)
                print("Cantida de horas no laborales:", HorasNoLabo)
                print("Promedio de paciente:", Total)

                Promedio = open("Promedio_Pacientes.txt", "a")
                Promedio.write("\n--Servicio Radiologia--")
                Promedio.write("\nNombre del hospital" + medico)
                Promedio.write("\nSeptiembre")
                Promedio.write("\nCantidad de días: %s" % CantDiaMes)
                Promedio.write("\nCantidad de horas laborales: %s" % HorasLabo)
                Promedio.write("\nCantida de horas no laborales: %s" % HorasNoLabo)
                Promedio.write("\nPromedio de paciente: %s" % Total)
            elif NumMes== 10:
                print("--Servicio Radiologia--")
                print("Nombre del hospital" + medico)
                print("Octubre")
                print("Cantidad de días:", CantDiaMes)
                print("Cantidad de horas laborales: ", HorasLabo)
                print("Cantida de horas no laborales:", HorasNoLabo)
                print("Promedio de paciente:", Total)

                Promedio = open("Promedio_Pacientes.txt", "a")
                Promedio.write("--Servicio Radiologia--")
                Promedio.write("\nNombre del hospital" + medico)
                Promedio.write("\nOctubre")
                Promedio.write("\nCantidad de días: %s" % CantDiaMes)
                Promedio.write("\nCantidad de horas laborales: %s" % HorasLabo)
                Promedio.write("\nCantida de horas no laborales: %s" % HorasNoLabo)
                Promedio.write("\nPromedio de paciente: %s" % Total)
            elif NumMes== 11:
                print("--Servicio Radiologia--")
                print("Nombre del hospital" + medico)
                print("Noviembre")
                print("Cantidad de días:", CantDiaMes)
                print("Cantidad de horas laborales: ", HorasLabo)
                print("Cantida de horas no laborales:", HorasNoLabo)
                print("Promedio de paciente:", Total)

                Promedio = open("Promedio_Pacientes.txt", "a")
                Promedio.write("\n--Servicio Radiologia--")
                Promedio.write("\nNombre del hospital" + medico)
                Promedio.write("\nNoviembre")
                Promedio.write("\nCantidad de días: %s" % CantDiaMes)
                Promedio.write("\nCantidad de horas laborales: %s" % HorasLabo)
                Promedio.write("\nCantida de horas no laborales: %s" % HorasNoLabo)
                Promedio.write("\nPromedio de paciente: %s" % Total)
            elif NumMes== 12:
                print("--Servicio Radiologia--")
                print("Nombre del hospital" + medico)
                print("Diciembre")
                print("Cantidad de días:", CantDiaMes)
                print("Cantidad de horas laborales: ", HorasLabo)
                print("Cantida de horas no laborales:", HorasNoLabo)
                print("Promedio de paciente:", Total)

                Promedio = open("Promedio_Pacientes.txt", "a")
                Promedio.write("\n--Servicio Radiologia--")
                Promedio.write("\nNombre del hospital" + medico)
                Promedio.write("\nDiciembre")
                Promedio.write("\nCantidad de días: %s" % CantDiaMes)
                Promedio.write("\nCantidad de horas laborales: %s" % HorasLabo)
                Promedio.write("\nCantida de horas no laborales: %s" % HorasNoLabo)
                Promedio.write("\nPromedio de paciente: %s" % Total)
            else:
                print("El hospital que busca no esta en la lista")


    if opcion == 3:
       centros = open("Centros_Médicos.txt","r")
       imprimir = centros.read()
       print(imprimir)

    if opcion == 4:
       centros = open("Promedio_Pacientes.txt","r")
       imprimir = centros.read()
       print(imprimir)

    if opcion == 5:
        repi = 1