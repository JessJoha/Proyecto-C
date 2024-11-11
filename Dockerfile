# Utilizamos una imagen base de C++ (gcc) para compilar el código
FROM gcc:latest

# Establecemos el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos todo el contenido de tu proyecto en el contenedor
COPY . /app

# Compilamos el archivo C++ (reemplaza "c++project.cpp" con el nombre exacto del archivo si es diferente)
RUN g++ -o c++project c++project.cpp

# Ejecutamos el archivo compilado
CMD ["./c++project"]

