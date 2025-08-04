# Task 2: Consumo de API REST y almacenamiento JSON

## 🎯 Enunciado
Consumir una API pública y guardar los resultados localmente como archivo JSON.

---

## 🔍 Enfoque y solución

- Se utilizó `requests` para consumir la API `https://jsonplaceholder.typicode.com/users`
- Los datos fueron convertidos a JSON y guardados localmente con `json.dump()`
- Se implementó manejo de errores con `try/except`

---

## 📁 Archivos entregados

- `fetch_users.py`
- `users.json`

---

## 🚧 Retos enfrentados

- Controlar posibles errores de red
- Garantizar la codificación correcta del archivo (`utf-8`)

---

## ✅ Resultado

Un script funcional que permite obtener y almacenar datos de forma automatizada.
