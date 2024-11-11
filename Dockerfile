
FROM gcc:latest


WORKDIR /app


COPY . /app


RUN g++ -o c++project c++project.cpp


CMD ["./c++project"]

