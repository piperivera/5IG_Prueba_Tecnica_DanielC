import requests
import json

# Función de usuarios desde una API (jsonplaceholder) y los guarda en un .JSON
def fetch_users():
    url = "https://jsonplaceholder.typicode.com/users"
    
    try:
        # Solicitud GET a API
        response = requests.get(url)
        response.raise_for_status()
        # Convertir a .JSON
        users = response.json()

        print(" Datos obtenidos correctamente")
        # Guardar los datos en un archivo JSON dentro de la carpeta del proyecto
        with open("Task2_API_Python/users.json", "w", encoding="utf-8") as file:
            json.dump(users, file, indent=4)

        print(" Usuarios guardados correctamente en 'Task2_API_Python/users.json'")

    except requests.exceptions.RequestException as e:
        # Manejo de errores bajo a la solicitud si falla
        print(f" Error al obtener los datos: {e}")

#Ejecutar Función
if __name__ == "__main__":
    fetch_users()
