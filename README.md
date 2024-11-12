

# Basic Calculator

This is a simple C++ project that functions as a basic calculator. It allows the user to input two numbers and an operator, and it performs the corresponding operation (+, -, *, /).

## Technologies Needed

- C++ Compiler (g++)
- Docker (to run the project in a containerized environment)
- Visual Studio Code (optional, for better C++ development experience)

## Dockerfile Explanation

  | **Step**                       | **Description**                                                                                             |
|---------------------------------|-------------------------------------------------------------------------------------------------------------|
| `FROM gcc:latest`               | Use the latest official GCC image to compile the C++ code.                                                   |
| `WORKDIR /app`                  | Set the working directory inside the container to `/app`.                                                   |
| `COPY . /app`                   | Copy all files from the local directory to the `/app` directory inside the container.                        |
| `RUN g++ -o c++project c++project.cpp` | Compile the C++ source file into an executable named `c++project`.                                    |
| `CMD ["./c++project"]`          | Run the compiled C++ project executable when the container starts.                                           |


## Building the Docker Image 
If you prefer to build the Docker image, run this command.

1. **Build the Docker image:**
   
```bash
docker build -t imgc .
 ```

## Push the image to Docker Hub
To push the image to your own Docker Hub account, follow these steps.

1. **Tag the image:**

    ```bash
    docker tag imgc jessjoha/imgc:latest
    ``` 
2. **Push the image to Docker Hub:**
   
    ```bash
    docker push jessjoha/imgc:latest
    ``` 

### Pull the image from Docker Hub:

```bash
docker pull jessjoha/imgc
```

## Link to the Docker Hub image:

https://hub.docker.com/r/jessjoha/imgc

The program will prompt you to input two numbers and an operator, then display the result.
