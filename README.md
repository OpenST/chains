# OST chains

The following requires Docker compose to be installed on your host system.

Create an `.env` file in the root of this project which contains an absolute path to where you want to store chain data on the host, eg.
```
HOST_DATA_DIR=<your local dir on host>/.mosaic
```
You can use the Makefile to execute basic operations such as initialisating
the chain directory, and start and stop the ethereum node.

## OST 1414 mainnet

So be sure to first run `init`
```
make ost-1414-init
```
which will use the genesis file to setup the data directory correctly.

With an initialised data directory you can start the ethereum node with
```
make ost-1414-start
```
or stop it with
```
make ost-1414-stop
```

Careful, running "trash" will delete your entire chain dir directory!
```
make ost-1414-trash
```
