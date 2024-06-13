 #Menu: Contiene la función mostrar_menu() que muestra el menú y llama a las funciones correspondientes según la elección del usuario.

from user_operations import iniciar_sesion, registrarse
from music import explorar_musica
from help import mostrar_ayuda

def mostrar_menu():
    eleccion = 0

    while eleccion == 0:
        print("==================================")
        print("          Mellon MUSIC            ")
        print("==================================")
        print("1. Iniciar Sesión")
        print("2. Registrarse")
        print("3. Explorar Música")
        print("4. Ayuda")
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
            mostrar_ayuda()
        elif eleccion == 0:
            print("Gracias por usar Mellon MUSIC. ¡Hasta luego!")
        else:
            print("Opción no válida. Intente de nuevo.")
            eleccion = 0
