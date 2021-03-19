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

ost-1414-clean:
	docker-compose -f chains/ethereum/1414/docker-compose.yml down -v --remove-orphans

ost-1414-trash:
	rm -rf ${HOST_DATA_DIR}/ethereum/1414

# OST testnets 1407 against Ropsten

ost-1407-init:
	bash chains/ropsten/1407/geth-init.sh

ost-1407-start:
	docker-compose -f chains/ropsten/1407/docker-compose.yml \
		--env-file=.env up --detach

ost-1407-stop:
	docker-compose -f chains/ropsten/1407/docker-compose.yml \
		--env-file=.env stop

ost-1407-clean:
	docker-compose -f chains/ropsten/1407/docker-compose.yml down -v --remove-orphans

ost-1407-trash:
	rm -rf ${HOST_DATA_DIR}/ropsten/1407
