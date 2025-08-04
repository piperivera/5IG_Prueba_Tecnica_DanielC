# Task 4: CI/CD Pipeline + Spiderman WebApp

## 🎯 Enunciado
Simular un flujo de CI/CD para una aplicación web, usando GitHub Actions, con despliegue automático en GitHub Pages.

---

## 🔍 Enfoque y solución

- Se desarrolló una WebApp temática de **Spiderman**
- Incluye una cuenta regresiva al estreno, videos embebidos, y datos curiosos
- Configuración de un workflow en `.github/workflows/deploy.yml` con `peaceiris/actions-gh-pages@v3`
- Cada `push` al branch `main` genera un despliegue automático en GitHub Pages

---

## 📁 Archivos entregados

- `public/index.html`, `style.css`, `script.js`
- `.github/workflows/deploy.yml`

---

## 🔗 Demo en vivo

🔗 [Spiderman WebApp en GitHub Pages](https://piperivera.github.io/Task4_Spiderman_CICD)

---

## 🚧 Retos enfrentados

- Actualización del flujo por `actions/upload-artifact@v3` obsoleto
- Errores 403 por permisos de `github-actions[bot]`
- Estructura correcta para que GitHub Pages reconociera el `gh-pages`

---

## ✅ Resultado

Pipeline CI/CD funcional y moderno, que demuestra conocimientos reales de DevOps, despliegue automático y control de versiones en equipo.
