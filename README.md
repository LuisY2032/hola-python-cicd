Proyecto CI/CD con Python y GitHub Actions

# Tecnologías Utilizadas

- Python
- Git
- GitHub
- GitHub Actions
- Pytest

#  Estructura del Proyecto

hola-python-cicd/
│
├── app.py
├── requirements.txt
├── test_app.py
│
└── .github/
    └── workflows/
        └── ci-cd.yml

#  Pasos Realizados

1. Crear el proyecto

mkdir hola-python-cicd
cd hola-python-cicd


2️. Crear aplicación Python

# app.py

print("Hola Mundo desde CI/CD con GitHub Actions")


3. Crear archivo de pruebas

test_app.py

```python
def test_hola():
    mensaje = "Hola Mundo"
    assert "Hola" in mensaje
```

4️. Inicializar Git


git init


5. Crear repositorio en GitHub

Se creó un repositorio llamado:


hola-python-cicd


6. Conectar proyecto con GitHub

git remote add origin https://github.com/LuisY2032/hola-python-cicd.git


7. Crear workflow CI/CD

Ruta:

.github/workflows/ci-cd.yml


# ci-cd.yml

```yaml
name: Python CI/CD

on:
  push:
    branches:
      - main

jobs:

  build:

    runs-on: ubuntu-latest

    steps:

      - name: Descargar código
        uses: actions/checkout@v4

      - name: Instalar Python
        uses: actions/setup-python@v5
        with:
          python-version: '3.11'

      - name: Instalar dependencias
        run: |
          pip install -r requirements.txt
          pip install pytest

      - name: Ejecutar aplicación
        run: python app.py

      - name: Ejecutar pruebas
        run: pytest

      - name: Simulación de Deploy
        run: echo "Desplegando aplicación..."
```

8. Subir proyecto a GitHub

git add .

git commit -m "Primer CI/CD con Python"

git branch -M main

git push -u origin main
```
Resultado que se espera

- ✅ Build successful
- ✅ Tests passed
- ✅ Deploy completed
