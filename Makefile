
SERVICE=openapi-generator

.PHONY: generate

generate:
	docker compose run --rm $(SERVICE) generate \
	-i /local/openapi/openapi.yaml \
	-g scala-play-server \
	--model-package adapter.json \
	--global-property models \
	-o /local \
	-t /local/openapi/generator \
