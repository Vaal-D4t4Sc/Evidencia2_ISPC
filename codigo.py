def main():
    eleccion = 0

    while eleccion == 0:
        print("==================================")
        print("          Mellon MUSIC            ")
        print("==================================")
        print("1. Iniciar Sesión")
        print("2. Registrarse")
        print("3. Explorar Música")
        print("5. Ayuda")
        print("0. Salir")
        print("==================================")
        eleccion = int(input("Seleccione una opción: "))
        
        if eleccion == 1:
            iniciar_sesion()
        elif eleccion == 2:
            registrarse()
        elif eleccion == 3:
            explorar_musica()
        elif eleccion == 4:
            crear_playlist()
        elif eleccion == 5:
            mostrar_ayuda()
        elif eleccion == 0:
            print("Gracias por usar Mellon MUSIC. ¡Hasta luego!")
            break
        else:
            print("Opción no válida. Intente de nuevo.")
            eleccion = 0

def iniciar_sesion():
    usuario = input("Ingrese su nombre de usuario: ")
    contrasena = input("Ingrese su contraseña: ")
    print("Iniciando sesión...")

def registrarse():
    nombre = input("Ingrese su nombre completo: ")
    usuario = input("Ingrese su nombre de usuario: ")
    contrasena = input("Ingrese su contraseña: ")
    email = input("Ingrese su correo electrónico: ")
    print("Registrándose...")

def explorar_musica():
    print("Explorando música...")

def crear_playlist():
    print("Creando playlist...")

def mostrar_ayuda():
    print("==================================")
    print("              Ayuda               ")
    print("==================================")
    print("1. Para iniciar sesión, seleccione la opción 1 y siga las instrucciones.")
    print("2. Para registrarse, seleccione la opción 2 y complete el formulario.")
    print("3. Para explorar música, seleccione la opción 3.")
    print("4. Si necesita más ayuda, visite nuestro sitio web o contacte a soporte.")
    print("==================================")
    input("Presione cualquier tecla para volver al menú principal...")

if __name__ == "__main__":
    main()

