include .env
export

# OST 1414 mainnet against Ethereum

ost-1414-init:
	bash chains/ethereum/1414/geth-init.sh

ost-1414-start:
	docker-compose -f chains/ethereum/1414/docker-compose.yml \
		--env-file=.env up --detach

ost-1414-stop:
	docker-compose -f chains/ethereum/1414/docker-compose.yml \
		--env-file=.env stop

ost-1414-logs:
	docker-compose -f chains/ethereum/1414/docker-compose.yml logs -f

ost-1414-clean:
	docker-compose -f chains/ethereum/1414/docker-compose.yml down -v --remove-orphans

ost-1414-trash:
	rm -rf ${HOST_DATA_DIR}/ethereum/1414

# Playground

plg-init:
	bash chains/ethereum/1414/geth-init.sh

plg-start:
	docker-compose -f playground/ethereum/1414/docker-compose.yml \
		--env-file=.env up --detach

plg-stop:
	docker-compose -f playground/ethereum/1414/docker-compose.yml \
		--env-file=.env stop

plg-logs:
	docker-compose -f playground/ethereum/1414/docker-compose.yml logs -f

plg-clean:
	docker-compose -f playground/ethereum/1414/docker-compose.yml down -v --remove-orphans

plg-trash:
	rm -rf ${HOST_DATA_DIR}/ethereum/1414


# OST testnets 1406 against Ropsten

ost-1406-init:
	bash chains/ropsten/1406/geth-init.sh

ost-1406-start:
	docker-compose -f chains/ropsten/1406/docker-compose.yml \
		--env-file=.env up --detach

ost-1406-stop:
	docker-compose -f chains/ropsten/1406/docker-compose.yml \
		--env-file=.env stop

ost-1406-logs:
	docker-compose -f chains/ropsten/1406/docker-compose.yml logs -f

ost-1406-clean:
	docker-compose -f chains/ropsten/1406/docker-compose.yml down -v --remove-orphans

ost-1406-trash:
	rm -rf ${HOST_DATA_DIR}/ropsten/1406
