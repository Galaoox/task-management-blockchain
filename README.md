
# task-management-blockchain

Proyecto de gestion de tareas almacenadas en la blockchain de Ethereum


## Installation

Para la instalacion del proyecto se recomienda usar docker, ya que toda la configuracion se encuentra basada en este.

Para instalar el proyecto solo es necesario el siguiente comando:
```bash
  docker compose up 
```
    
## Running Tests

Para ejecutar los test se hace lo siguiente:

1) Identificar el contenedor de truffle

```bash
  docker ps
```

2) El comando deberia retornar unos valores asi:
```bash
CONTAINER ID   IMAGE                COMMAND                  CREATED          STATUS          PORTS                    NAMES
a3faec7909bc   key-cripto_truffle   "docker-entrypoint.s…"   13 minutes ago   Up 13 minutes                            key-cripto-truffle-1
f2e43eb482fa   key-cripto_ganache   "docker-entrypoint.s…"   13 minutes ago   Up 13 minutes   0.0.0.0:8545->8545/tcp   key-cripto-ganache-1
```

3) copiando el id del contenedor que diga truffle, entramos a ese contenedor:


```bash
  docker exec -it a3faec7909bc bash 
```

4) Ejecutamos el siguiente comando para iniciar los test:

```bash
  truffle test
```

y deberia retornar un valor parecido a este:

```bash
Using network 'development'.


Compiling your contracts...
===========================
> Everything is up to date, there is nothing to compile.


  Contract: TasksContract
    ✔ migrate deployed succesfully
    ✔ get Task list (47ms)
    ✔ task created sucefully (85ms)
    ✔ task toggled true (313ms)
    ✔ task toggled false (590ms)


  5 passing (1s)
```


## Authors

- [@galaoox](https://www.github.com/galaoox)


## License

[MIT](https://choosealicense.com/licenses/mit/)

