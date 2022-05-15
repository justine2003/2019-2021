import Menu

Menu.mensaje()

archivo = open("Test.txt","w")
archivo.write("\nHola mundo")
archivo.write("Software")

nombre = input ("ingrese su nombre:")
archivo.write("\nNombre:" + nombre)

edad = int(input("\ningreses su edad:"))
archivo.write("\nEdad: %s" %edad)

archivo = open("Test.txt", "r")
imprimir = archivo.read()
print(imprimir)

archivo.close()