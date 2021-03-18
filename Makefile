include .env
export

ost-1414-init:
	bash chains/ethereum/1414/geth-init.sh

ost-1414-start:
	docker-compose -f chains/ethereum/1414/docker-compose.yml \
		--env-file=.env up

ost-1414-stop:
	docker-compose -f chains/ethereum/1414/docker-compose.yml \
		--env-file=.env stop

ost-1414-clean:
	docker-compose -f chains/ethereum/1414/docker-compose.yml down -v --remove-orphans

ost-1414-trash:
	rm -rf ${HOST_DATA_DIR}/ethereum/1414
